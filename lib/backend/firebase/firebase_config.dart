import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB0V5sEUHe0NWgtgWL0fYRQw4YYASXH80Y",
            authDomain: "online-leraning-app.firebaseapp.com",
            projectId: "online-leraning-app",
            storageBucket: "online-leraning-app.appspot.com",
            messagingSenderId: "300092331124",
            appId: "1:300092331124:web:0b0ce791d0fbec2fe1ad21"));
  } else {
    await Firebase.initializeApp();
  }
}
