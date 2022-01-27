import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';

class ServiceLocator {
  Future<void> setUp() async {
    GetIt.I.registerSingleton<NavigationService>(NavigationService()); //
  }
}
