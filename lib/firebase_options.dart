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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxhVx_Oqv5IBEZji26OB_xHZ3qF3pMMmM',
    appId: '1:804627606545:android:aea8438f820ef573e555b0',
    messagingSenderId: '804627606545',
    projectId: 'skripsi-gopetepete',
    storageBucket: 'skripsi-gopetepete.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcYJSRs9vdb70jP7NxzxUqv0_4hQ3zRxc',
    appId: '1:804627606545:ios:d82a74d527339440e555b0',
    messagingSenderId: '804627606545',
    projectId: 'skripsi-gopetepete',
    storageBucket: 'skripsi-gopetepete.appspot.com',
    androidClientId: '804627606545-plffe93l8iiv1gdmj1d3g3sc0kocnupg.apps.googleusercontent.com',
    iosClientId: '804627606545-gl0ka2etcaenmb4u5eu7bmq91q4k0i5r.apps.googleusercontent.com',
    iosBundleId: 'com.go.pete.pete.gopetepete',
  );
}
