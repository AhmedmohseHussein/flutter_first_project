import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main0.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextFormField1(),
              Row(
                children: [
                  Text(
                    'if you do not have an account',
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('Signup');
                    },
                    child: const Text(
                      'click here',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const MaterialButton1(),
              const SizedBox(
                height: 20,
              ),
              const MaterialButton2(),
            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController email = TextEditingController();
TextEditingController Password = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

save() {
  FormState? formData = formKey.currentState;
  if (formData!.validate()) {
    formData.save();
    print('$email,$phone');
    print(' valid+save');
  } else {
    print('not valid');
  }
}

class TextFormField1 extends StatefulWidget {
  const TextFormField1({super.key});

  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  @override
  Widget build(BuildContext context) {
    return Form(
      // autovalidateMode: AutovalidateMode.always,
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: email,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.email),
                hintText: 'E-mail',
                hintStyle: Theme.of(context).textTheme.displayMedium),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: Password,
            textInputAction: TextInputAction.next,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
                hintText: 'Passworde',
                hintStyle: Theme.of(context).textTheme.displayMedium),
          )
        ],
      ),
    );
  }
}

var credential = null;

class MaterialButton1 extends StatelessWidget {
  const MaterialButton1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      height: 50,
      color: Colors.blue,
      child: const Row(
          mainAxisSize: MainAxisSize.min,
          // ignore: always_specify_types
          children: [
            Icon(
              Icons.login,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )
          ]),
      onPressed: () async {
        try {
          credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: email.text, password: Password.text);
          print(credential);
          print(email.text);
          print(Password.text);
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
          }
        }
        print(credential.user?.emailVerified);
        if (credential.user?.emailVerified == false) {
          User? user = FirebaseAuth.instance.currentUser;
          await user?.sendEmailVerification();
        }
        print(credential.user.emailVerified);
      },
    );
  }
}

class MaterialButton2 extends StatelessWidget {
  const MaterialButton2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      height: 50,
      color: Colors.blue,
      child: const Row(
          mainAxisSize: MainAxisSize.min,
          // ignore: always_specify_types
          children: [
            Icon(
              Icons.login,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Home',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )
          ]),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed('HomePage');
      },
    );
  }
}

saveprfs() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', 'Ahmed');
  print('success');
}


// am3463485@gmail.com
// jkjkesio,24112