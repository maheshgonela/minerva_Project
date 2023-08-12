import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConnectivityStatus extends StatefulWidget {
  final Function({required String connection}) connectivity;

  ConnectivityStatus({Key? key, required this.connectivity}) : super(key: key);

  @override
  _ConnectivityStatusState createState() => _ConnectivityStatusState();
}

class _ConnectivityStatusState extends State<ConnectivityStatus> with SingleTickerProviderStateMixin {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  bool hasInternet = false;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    controller?.repeat();
    controller?.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    controller?.dispose();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    try {
      ConnectivityResult result = await _connectivity.checkConnectivity();
      return _updateConnectionStatus(result);
    } on PlatformException catch (e) {
      print(e.toString());
    }
    if (!mounted) {
      return Future.value(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: controller!.value,
        child: hasInternet
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 18,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(color: Colors.green, fontSize: 12),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                  ),
                  Text(
                    'Offline',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ));
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    print(result);
    switch (result) {
      case ConnectivityResult.none:
        setState(() {
          // _connectionStatus = result.toString();
          // widget.connectivity(connection: _connectionStatus);
          hasInternet = false;
        });
        break;
      default:
        setState(() {
          // _connectionStatus = 'Failed to get connectivity.';
          // widget.connectivity(connection: _connectionStatus);
          hasInternet = true;
        });
        break;
    }
  }
}
