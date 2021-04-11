import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_location_sample/states/state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final locationStateNotifier = useProvider(locationStateProvider);

    useEffect(() {
      Timer.run(() async {
        final location = Location();
        var serviceEnabled = await location.serviceEnabled();

        if (!serviceEnabled) {
          serviceEnabled = await location.requestService();
        }

        if (serviceEnabled) {
          var permissionGranted = await location.hasPermission();
          if (permissionGranted == PermissionStatus.denied) {
            permissionGranted = await location.requestPermission();
          }
          if ([PermissionStatus.granted, PermissionStatus.grantedLimited]
              .contains(permissionGranted)) {
            await location.changeSettings(
                accuracy: LocationAccuracy.high,
                interval: 1000,
                distanceFilter: 100);

            final backgroundModeEnabled =
                await location.isBackgroundModeEnabled();
            if (!backgroundModeEnabled) {
              try {
                final enableBackgroundModeResult =
                    await location.enableBackgroundMode(enable: true);
              } on PlatformException catch (error) {
                print(error.code);
                print(error.message);
              }
            }
            location.onLocationChanged.listen((LocationData currentLocation) {
              print(
                  // ignore: lines_longer_than_80_chars
                  '${currentLocation.latitude.toString()}, ${currentLocation.longitude.toString()}');
              locationStateNotifier.setLocationData(currentLocation);
            });
          }
        }
      });

      return () {};
    }, []);

    return MaterialApp(
      title: 'Location Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final locationState = useProvider(locationStateProvider.state);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Location Sample'),
        ),
        body: Center(child: Text(locationState.locationData.toString())));
  }
}
