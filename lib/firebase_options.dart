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
    apiKey: 'AIzaSyCwj3CRDnEQHQORcT9-HbNoUrgXpm49BX8',
    appId: '1:51077112840:web:e3de64a9799f9768f69dbd',
    messagingSenderId: '51077112840',
    projectId: 'rentcar-6e07c',
    authDomain: 'rentcar-6e07c.firebaseapp.com',
    storageBucket: 'rentcar-6e07c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC95cXD5cwMjOgQbmITFaw6rRVfKnHVw-0',
    appId: '1:51077112840:android:78a39fb70c317d0ef69dbd',
    messagingSenderId: '51077112840',
    projectId: 'rentcar-6e07c',
    storageBucket: 'rentcar-6e07c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAs7wzARywKlySWJPe6MOJ4i7iFdf02fI0',
    appId: '1:51077112840:ios:2bf3fec8c42c05c7f69dbd',
    messagingSenderId: '51077112840',
    projectId: 'rentcar-6e07c',
    storageBucket: 'rentcar-6e07c.appspot.com',
    iosClientId: '51077112840-648t8mm0oc5cjp9d2qdaoqpfqv44j9ls.apps.googleusercontent.com',
    iosBundleId: 'com.example.rentApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAs7wzARywKlySWJPe6MOJ4i7iFdf02fI0',
    appId: '1:51077112840:ios:2bf3fec8c42c05c7f69dbd',
    messagingSenderId: '51077112840',
    projectId: 'rentcar-6e07c',
    storageBucket: 'rentcar-6e07c.appspot.com',
    iosClientId: '51077112840-648t8mm0oc5cjp9d2qdaoqpfqv44j9ls.apps.googleusercontent.com',
    iosBundleId: 'com.example.rentApp',
  );
}
