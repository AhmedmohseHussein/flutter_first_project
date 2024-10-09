import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextFormField1(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'If you have Account',
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('Login');
                    },
                    child: const Text(
                      'click here',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  )
                ],
              ),
              const MaterialButton1(),
              const MaterialButton2(),
            ],
          ),
        ),
      ),
    );
  }
}

// emailPattern= r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
// phonepattern=r'(^(?:[+0]9)?[0-9]{10-12}$)'

bool emailvalid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    .hasMatch(Email.text);

bool phonevalid = RegExp(r'(^(?:[+0]9)?[0-9]{10}$)').hasMatch(PhoneNumber.text);

String email = '';
String phone = '';

TextEditingController Email = TextEditingController();
TextEditingController PhoneNumber = TextEditingController();
TextEditingController UserName = TextEditingController();
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
            controller: Email,
            validator: (String? text) {
              return null;

              // if (emailvalid == false) {
              //   return 'this not valid email';
              // }
            },

            onSaved: (String? val) {
              email = val!;
            },

            textInputAction: TextInputAction.next,
            // readOnly: true,
            // initialValue: 'Ahmed Mohsen',
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).canvasColor)),
                prefixIcon: const Icon(Icons.email),
                hintText: 'E-mail',
                hintStyle: Theme.of(context).textTheme.displayMedium),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: PhoneNumber,
            onSaved: (String? val) {
              phone = val!;
              print('onsaved');
            },
            validator: (String? text) {
              print('validator');
              if (text!.length < 11) {
                return 'less than 11';
              }
              if (text.length > 11) {
                return 'more than 11';
              }
              return null;
              // if (phonevalid == false) {
              //   return 'this not valid phone number';
              // }
            },
            textInputAction: TextInputAction.next,
            maxLength: 11,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                fillColor: Colors.white,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.phone),
                hintText: 'Phone number',
                hintStyle: Theme.of(context).textTheme.displayMedium),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: UserName,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.person_2_rounded),
                hintText: 'User Name',
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
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Signup',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )
          ]),
      onPressed: () async {
        try {
          final userCredential =
              await FirebaseAuth.instance.signInAnonymously();
          print("Signed in with temporary account.");
          print(userCredential.user?.uid);
        } on FirebaseAuthException catch (e) {
          switch (e.code) {
            case "operation-not-allowed":
              print("Anonymous auth hasn't been enabled for this project.");
              break;
            default:
              print("Unknown error.");
          }
        }
      },
    );
  }
}

var credential = null;

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
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            Text(
              'Signup with email',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )
          ]),
      onPressed: () async {
        try {
          credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: Email.text,
            password: Password.text,
          );
          print(Email.text);
          print(Password.text);
          print(credential);
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
        print(credential.user.emailVerified);
        if (credential.user.emailVerified == false) {
          User? user = FirebaseAuth.instance.currentUser;
          await user?.sendEmailVerification();
        }
        print(credential.user.emailVerified);
      },
    );
  }
}
// km3022504@gmail.com
// gjghfd65ffg2145