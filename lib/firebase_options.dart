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
    apiKey: 'AIzaSyCpo9qr4rtVx3qsrf7awNlp8KTDRoIaMKU',
    appId: '1:388927834786:web:6b5a0e54f3ecf149fd65fb',
    messagingSenderId: '388927834786',
    projectId: 'chitchat-24443',
    authDomain: 'chitchat-24443.firebaseapp.com',
    storageBucket: 'chitchat-24443.appspot.com',
    measurementId: 'G-E8QCPB6B2Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0ErRt9rS4XmotQjEsnROcTzVhIiiLT6c',
    appId: '1:388927834786:android:5122e7b66bb77c9cfd65fb',
    messagingSenderId: '388927834786',
    projectId: 'chitchat-24443',
    storageBucket: 'chitchat-24443.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFo_QJoXsjH6rPVBAtDQoNpSfAnNB3Kr0',
    appId: '1:388927834786:ios:ab8438d1e91912a1fd65fb',
    messagingSenderId: '388927834786',
    projectId: 'chitchat-24443',
    storageBucket: 'chitchat-24443.appspot.com',
    iosBundleId: 'com.example.chatPractice',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFo_QJoXsjH6rPVBAtDQoNpSfAnNB3Kr0',
    appId: '1:388927834786:ios:ab8438d1e91912a1fd65fb',
    messagingSenderId: '388927834786',
    projectId: 'chitchat-24443',
    storageBucket: 'chitchat-24443.appspot.com',
    iosBundleId: 'com.example.chatPractice',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCpo9qr4rtVx3qsrf7awNlp8KTDRoIaMKU',
    appId: '1:388927834786:web:d34214dd274dca4bfd65fb',
    messagingSenderId: '388927834786',
    projectId: 'chitchat-24443',
    authDomain: 'chitchat-24443.firebaseapp.com',
    storageBucket: 'chitchat-24443.appspot.com',
    measurementId: 'G-HRHQBW1M4J',
  );
}
