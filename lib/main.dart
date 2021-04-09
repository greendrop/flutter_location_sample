import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_location_sample/states/state_provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final positionStateNotifier = useProvider(positionStateProvider);

    useEffect(() {
      Timer.run(() async {
        final serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (serviceEnabled) {
          var permission = await Geolocator.checkPermission();
          if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
          }

          if ([LocationPermission.always, LocationPermission.whileInUse]
              .contains(permission)) {
            Geolocator.getPositionStream(
                    desiredAccuracy: LocationAccuracy.high, distanceFilter: 100)
                .listen((Position position) {
              print(position == null
                  ? 'Unknown'
                  : position.latitude.toString() +
                      ', ' +
                      position.longitude.toString());
              positionStateNotifier.setPosition(position);
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
    final positionState = useProvider(positionStateProvider.state);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Location Sample'),
        ),
        body: Center(child: Text(positionState.position.toString())));
  }
}
