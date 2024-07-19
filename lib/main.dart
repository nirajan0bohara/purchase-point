import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchasepoint/app.dart';
import 'package:purchasepoint/firebase_options.dart';

import 'data/repositories/authentication/authentication_repository.dart';

Future<void> main() async {
  // Added widgets Bindings
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  //Getx Local Storage
  await GetStorage.init();
  // Await Native Splash until other items loaded
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Initialize Firebase & Initialize Authentication
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const MyApp());
}
