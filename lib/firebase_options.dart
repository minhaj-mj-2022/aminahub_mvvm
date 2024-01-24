// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAADUrY4YOCxZCVlouK-c0lltJUFVYf0Fk',
    appId: '1:556187412072:web:ba481a7668f030e259fddd',
    messagingSenderId: '556187412072',
    projectId: 'aminahubmvvm',
    authDomain: 'aminahubmvvm.firebaseapp.com',
    storageBucket: 'aminahubmvvm.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSWD48a7cW-gTUZB-St_lOnFr3BFPd_SE',
    appId: '1:556187412072:android:aedf110ccab0a82759fddd',
    messagingSenderId: '556187412072',
    projectId: 'aminahubmvvm',
    storageBucket: 'aminahubmvvm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOce6zx3HHNhZRC7WsjuPHKjKA_lWChG4',
    appId: '1:556187412072:ios:ef402caa67ad466259fddd',
    messagingSenderId: '556187412072',
    projectId: 'aminahubmvvm',
    storageBucket: 'aminahubmvvm.appspot.com',
    iosBundleId: 'com.example.aminahub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOce6zx3HHNhZRC7WsjuPHKjKA_lWChG4',
    appId: '1:556187412072:ios:679babcef0a8a5e559fddd',
    messagingSenderId: '556187412072',
    projectId: 'aminahubmvvm',
    storageBucket: 'aminahubmvvm.appspot.com',
    iosBundleId: 'com.example.aminahub.RunnerTests',
  );
}
