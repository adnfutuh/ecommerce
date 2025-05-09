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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBCTJaeTRKdOpdQHnsNqxeUIte8kvrBbEU',
    appId: '1:1012440246202:web:79783be7a4a41b3035df83',
    messagingSenderId: '1012440246202',
    projectId: 'ecommers-ae8ff',
    authDomain: 'ecommers-ae8ff.firebaseapp.com',
    storageBucket: 'ecommers-ae8ff.firebasestorage.app',
    measurementId: 'G-2Q45E206PD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoe2g4JFNxIIYcrlNHw7zk6XHlDMHZOHU',
    appId: '1:1012440246202:android:2b7237a19cadfae135df83',
    messagingSenderId: '1012440246202',
    projectId: 'ecommers-ae8ff',
    storageBucket: 'ecommers-ae8ff.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBE4-dOQ5Orqm9cVxHMLrmFlP8ioRZlg1A',
    appId: '1:1012440246202:ios:8fd90ab3f3e65dc435df83',
    messagingSenderId: '1012440246202',
    projectId: 'ecommers-ae8ff',
    storageBucket: 'ecommers-ae8ff.firebasestorage.app',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBE4-dOQ5Orqm9cVxHMLrmFlP8ioRZlg1A',
    appId: '1:1012440246202:ios:8fd90ab3f3e65dc435df83',
    messagingSenderId: '1012440246202',
    projectId: 'ecommers-ae8ff',
    storageBucket: 'ecommers-ae8ff.firebasestorage.app',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBCTJaeTRKdOpdQHnsNqxeUIte8kvrBbEU',
    appId: '1:1012440246202:web:a9e3e957576a3d7735df83',
    messagingSenderId: '1012440246202',
    projectId: 'ecommers-ae8ff',
    authDomain: 'ecommers-ae8ff.firebaseapp.com',
    storageBucket: 'ecommers-ae8ff.firebasestorage.app',
    measurementId: 'G-S6HNCYYS4D',
  );

}