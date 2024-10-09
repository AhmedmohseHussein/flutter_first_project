import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'NotesPage.dart';
import 'PageTwo.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'crid/add.dart';
import 'home/homepage.dart';
import 'pageFour.dart';
import 'pageThree.dart';

bool shouldUseFirebaseEmulator = false;

late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyDIXgELhw9d0iAQxpFiW94fWM8GMgDJvzc',
          appId: '1:287234069161:web:f991a599ef52a819a18fb8',
          messagingSenderId: '287234069161',
          projectId: 'ahmed-app-17b34'));
  auth = await FirebaseAuth.instanceFor(app: app);
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  // @override
  // void initState() {
  //   getData();
  //   changeLocal();
  //   const Center(
  //       child: CircularProgressIndicator(
  //     color: Colors.amber,
  //   ));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.white,
        buttonTheme: const ButtonThemeData(buttonColor: Colors.black),
        primaryColor: Colors.blue,
        primaryColorLight: const Color.fromARGB(255, 178, 226, 186),
        primaryColorDark: Colors.grey,
        listTileTheme: const ListTileThemeData(selectedTileColor: Colors.grey),
        textTheme: const TextTheme(
            displaySmall: TextStyle(fontSize: 16, color: Colors.grey),
            displayMedium: TextStyle(fontSize: 16, color: Colors.orange),
            displayLarge: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Mohsen App',
      home: const Login(),
      // home: FutureBuilder(future: _initialization,builder: (context, snapshot) {

      // },),
      routes: {
        'Notes': (BuildContext context) => const NotesPage(),
        'mail': (BuildContext context) => const MailePage(),
        'phone': (BuildContext context) => const Three(),
        'location': (BuildContext context) => Four(),
        'Login': (BuildContext context) => const Login(),
        'Signup': (BuildContext context) => const Signup(),
        'HomePage': (BuildContext context) => const HomePage(),
        'AddPage': (BuildContext context) => const Add()
      },
    );
  }

  Future getData() async {
    print('start fun');
    await Future.delayed(const Duration(seconds: 3), () {
      showToast('Hi,Wellcome in my app');
      print('Ahmed Mohsen');
    });
    print('end fun');
  }

  Future showToast(String message) async {
    // Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: message, timeInSecForIosWeb: 5, webPosition: 'center');
  }
}
