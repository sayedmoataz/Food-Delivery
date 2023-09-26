import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:food_delivery/Opening/Offline/offline_screen.dart';

Widget myOfflineWidget({
  required Widget connectedPage,
}) =>
    OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final bool connected = connectivity != ConnectivityResult.none;
        if (connected) {
          debugPrint("connected Page");
          return connectedPage;
        } else {
          debugPrint("offline Page");
          return const OfflineScreen();
        }
      },
      child: Center(
          child: CircularProgressIndicator(
        color: Colors.green.shade400,
      )),
    );
