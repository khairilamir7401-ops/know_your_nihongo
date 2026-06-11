import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDtLSoAU35E_V7NOoSmF2LyP6Eg2A0Vf3w",
            authDomain: "knowyournihongoapp.firebaseapp.com",
            projectId: "knowyournihongoapp",
            storageBucket: "knowyournihongoapp.appspot.com",
            messagingSenderId: "641519756930",
            appId: "1:641519756930:web:8fdb93a0bf63b94685b69b",
            measurementId: "G-749NGREV9Z"));
  } else {
    await Firebase.initializeApp();
  }
}
