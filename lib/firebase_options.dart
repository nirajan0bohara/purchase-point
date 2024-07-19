// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyApoIeuuxpPTa11fbFTe0HLKw-PgSpkfwQ',
    appId: '1:857730543265:web:ae461d5b4ef31b0db90ae0',
    messagingSenderId: '857730543265',
    projectId: 'purchasepoint-bff77',
    authDomain: 'purchasepoint-bff77.firebaseapp.com',
    storageBucket: 'purchasepoint-bff77.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeGh9WwgvX40MJ-B24kSDmqdO6U-EFElA',
    appId: '1:857730543265:android:20b76746dde9d541b90ae0',
    messagingSenderId: '857730543265',
    projectId: 'purchasepoint-bff77',
    storageBucket: 'purchasepoint-bff77.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnUTyYJIX6R0-6zPn2swiyKo5yi8OEghk',
    appId: '1:857730543265:ios:379cea95fc1e4307b90ae0',
    messagingSenderId: '857730543265',
    projectId: 'purchasepoint-bff77',
    storageBucket: 'purchasepoint-bff77.appspot.com',
    androidClientId: '857730543265-gg6k10bg2lepoetp9j6q8nm33iltfcdb.apps.googleusercontent.com',
    iosClientId: '857730543265-uba8o8vu6he50fpgeskmofkmfgvcu18c.apps.googleusercontent.com',
    iosBundleId: 'com.example.purchasepoint',
  );

}