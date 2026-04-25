import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityHelper {
  ConnectivityHelper._();
  static final ConnectivityHelper instance = ConnectivityHelper._();

  ValueNotifier<bool> isConnected = ValueNotifier<bool>(true);
  Future<void> init() async {
    // Initialize connectivity monitoring here
    List<ConnectivityResult> results = await Connectivity().checkConnectivity();
    isInternetConnected(results);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  bool isInternetConnected(List<ConnectivityResult> results) {
    if (results.contains(ConnectivityResult.none)) {
      // No internet connection
      isConnected.value = false;
      return false;
    } else if (results.contains(ConnectivityResult.mobile) ||
        results.contains(ConnectivityResult.wifi) ||
        results.contains(ConnectivityResult.ethernet)) {
      // Internet Connected
      isConnected.value = true;
      return true;
    }
    return false;
  }
}
