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
    apiKey: 'AIzaSyDpI-XLxaBJhCkCkduusZFvIfQ3JjN0keo',
    appId: '1:1025283785708:web:355409f2a8d23541c1b6c9',
    messagingSenderId: '1025283785708',
    projectId: 'project-manager-7474f',
    authDomain: 'project-manager-7474f.firebaseapp.com',
    storageBucket: 'project-manager-7474f.appspot.com',
    measurementId: 'G-CF7LJ38TW1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcw54i-HRcqaanjbO9rVVK9v4fe7kSFd0',
    appId: '1:1025283785708:android:025fc05052723975c1b6c9',
    messagingSenderId: '1025283785708',
    projectId: 'project-manager-7474f',
    storageBucket: 'project-manager-7474f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGHbV_hKrc_RhVp1EQg14LJxyzNlv_B3g',
    appId: '1:1025283785708:ios:42362164757fca29c1b6c9',
    messagingSenderId: '1025283785708',
    projectId: 'project-manager-7474f',
    storageBucket: 'project-manager-7474f.appspot.com',
    iosBundleId: 'com.example.projectManager',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGHbV_hKrc_RhVp1EQg14LJxyzNlv_B3g',
    appId: '1:1025283785708:ios:42362164757fca29c1b6c9',
    messagingSenderId: '1025283785708',
    projectId: 'project-manager-7474f',
    storageBucket: 'project-manager-7474f.appspot.com',
    iosBundleId: 'com.example.projectManager',
  );
}
