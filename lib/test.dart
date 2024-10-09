import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool usa = false;
  bool ues = false;
  bool egy = false;
  bool ksa = false;
  bool sy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Card(
          elevation: 100,
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  children: [
                    // Text(
                    //   'choose country',
                    //   style: TextStyle(fontSize: 40),
                    // ),
                    Checkbox(
                      value: usa,
                      onChanged: (bool? val) {
                        setState(() {
                          usa = val!;
                        });
                        print('$val');
                      },
                    ),
                    Checkbox(
                      value: ues,
                      onChanged: (bool? val) {
                        setState(() {
                          ues = val!;
                        });
                        print('$val');
                      },
                    ),
                    Checkbox(
                      checkColor: Colors.green,
                      activeColor: Colors.amber,
                      value: egy,
                      onChanged: (bool? val) {
                        setState(() {
                          egy = val!;
                        });
                        print('$val');
                      },
                    ),
                    Checkbox(
                      value: ksa,
                      onChanged: (bool? val) {
                        setState(() {
                          ksa = val!;
                        });
                        print('$val');
                      },
                    ),
                    Checkbox(
                      value: sy,
                      onChanged: (bool? val) {
                        setState(() {
                          sy = val!;
                        });
                        print('$val');
                      },
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Spacer(),
                    Text('USA'),
                    Spacer(),
                    Text('UES'),
                    Spacer(),
                    Text('EGY'),
                    Spacer(),
                    Text('KSA'),
                    Spacer(),
                    Text('SY'),
                    Spacer(
                      flex: 9,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
