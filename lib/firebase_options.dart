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
    apiKey: 'AIzaSyBAU5qgqgFU8xdIJW8EpJXj8QzQPGI42_s',
    appId: '1:171012829952:web:91233f41dfaac77fb339e5',
    messagingSenderId: '171012829952',
    projectId: 'triptrek-bc63b',
    authDomain: 'triptrek-bc63b.firebaseapp.com',
    storageBucket: 'triptrek-bc63b.appspot.com',
    measurementId: 'G-ZJ0QQE9SH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWsv4_k4hDLEQ_RKq99jglMv9a8ztlPyY',
    appId: '1:171012829952:android:8bdcf10f876672f6b339e5',
    messagingSenderId: '171012829952',
    projectId: 'triptrek-bc63b',
    storageBucket: 'triptrek-bc63b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgWjRy3GAHBqcclVF9ihAGNObU_WCIuYc',
    appId: '1:171012829952:ios:c17c44153cb4422fb339e5',
    messagingSenderId: '171012829952',
    projectId: 'triptrek-bc63b',
    storageBucket: 'triptrek-bc63b.appspot.com',
    iosBundleId: 'com.example.tripTrek',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgWjRy3GAHBqcclVF9ihAGNObU_WCIuYc',
    appId: '1:171012829952:ios:c17c44153cb4422fb339e5',
    messagingSenderId: '171012829952',
    projectId: 'triptrek-bc63b',
    storageBucket: 'triptrek-bc63b.appspot.com',
    iosBundleId: 'com.example.tripTrek',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBAU5qgqgFU8xdIJW8EpJXj8QzQPGI42_s',
    appId: '1:171012829952:web:f0780468cf3f6e6eb339e5',
    messagingSenderId: '171012829952',
    projectId: 'triptrek-bc63b',
    authDomain: 'triptrek-bc63b.firebaseapp.com',
    storageBucket: 'triptrek-bc63b.appspot.com',
    measurementId: 'G-L6MWKDJMDC',
  );
}
