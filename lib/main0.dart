import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color b = Colors.black;

class HomePag extends StatelessWidget {
  const HomePag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        backgroundColor: Color(0xFFFF9088),
        width: 200,
      ),
      body: Text('Home page',
          style: TextStyle(
              fontSize: 30,
              color: Colors.blue[500],
              fontWeight: FontWeight.w400,
              letterSpacing: 22.0,
              wordSpacing: 25,
              decoration: TextDecoration.overline,
              backgroundColor: const Color.fromARGB(255, 241, 240, 234),
              shadows: const [Shadow(blurRadius: 10, offset: Offset(2, 4))])),
    );
  }
}

class LoginPag extends StatelessWidget {
  const LoginPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body:
          // Container(child: ,),
          const Text('Login',
              style: TextStyle(
                  color: Color(0xFF225498), fontWeight: FontWeight.bold)),
    );
  }
}

class MarketPag extends StatelessWidget {
  const MarketPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: const Text('welcome in our market',
          style: TextStyle(backgroundColor: Colors.green)),
    ));
  }
}

class ProfilePag extends StatelessWidget {
  const ProfilePag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 2),
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(20)),
            ),
            child: const Text(
              'user profile',
              style: TextStyle(fontSize: 22),
            )));
  }
}

class SittingPag extends StatelessWidget {
  const SittingPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 20),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Text('sittings')));
  }
}

class Image1 extends StatelessWidget {
  const Image1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('jjdkljfidjfjfsifif'), fit: BoxFit.contain),
      ),
      child: const Text('imeage'),
    ));
  }
}

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(22),
            width: 22,
            height: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Image3.jpg'),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat)),
            child: const Text('buy now')));
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.centerRight,
      width: 200,
      height: 300,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color(0xFF105040), offset: Offset(20, 10))
        ],
        color: Color(0xFF334455),
      ),
      child: const Text('Phone number',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              shadows: [Shadow(color: Colors.black87)])),
    ));
  }
}

class Image2 extends StatelessWidget {
  const Image2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Image.asset('Image3.jpg',
            width: 100, height: 200, fit: BoxFit.cover));
  }
}

class Card0 extends StatelessWidget {
  const Card0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Card(
          color: const Color(0xFa3050ff),
          shadowColor: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          elevation: double.infinity,
          child: const Text('Ahmed Mohsen'),
        ));
  }
}

class Column0 extends StatelessWidget {
  const Column0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Card(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                const Text('first column'),
                Image.asset('jjjjj'),
                const Card(),
                Container()
              ],
            ),
          ),
        ));
  }
}

class Row0 extends StatelessWidget {
  const Row0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        width: 20,
        color: Colors.amber,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('this is a text')],
        ),
      ),
    );
  }
}

class Stack0 extends StatelessWidget {
  const Stack0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          color: Colors.black,
          width: 400,
          height: 400,
          child: Stack(
            // alignment: Alignment.center,

            children: <Widget>[
              // Container(
              //   color: Colors.red,
              //   width: 500,
              //   height: 500,
              //   child: Text("first container"),
              // ),
              // Container(
              //   color: Colors.green,
              //   width: 300,
              //   height: 300,
              //   child: Text("secand container"),
              // ),
              Positioned(
                top: 350,
                left: 20,
                right: 20,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  child: const Text('therd container'),
                ),
              )
            ],
          ),
        ));
  }
}

class Expanded0 extends StatelessWidget {
  const Expanded0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 22,
          child: Container(color: Colors.red, child: const Text('one')),
        ),
        Expanded(
          child: Container(color: Colors.green, child: const Text('one')),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Text('one'),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    ));
  }
}

class Icon0 extends StatelessWidget {
  const Icon0({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Icon(
        Icons.person,
        size: 50,
        color: Colors.blue,
      ),
    );
  }
}

class Divider0 extends StatelessWidget {
  const Divider0({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
      height: 200,
      child: Row(
        children: [
          Text('text one', style: TextStyle(fontSize: 100, color: Colors.blue)),
          VerticalDivider(
            thickness: 22,
            color: Colors.amber,
            width: 120,
          ),
          Text('text two',
              style: TextStyle(fontSize: 100, color: Colors.green)),
        ],
      ),
    ));
  }
}

class Exampel1 extends StatelessWidget {
  const Exampel1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // the root container
      height: 600,
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        //the main column
        children: [
          //the first text
          Container(
            decoration:
                BoxDecoration(color: Colors.blue, border: Border.all(width: 2)),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: const EdgeInsets.only(bottom: 20),
            // width: double.infinity,
            child: const Text(
              'Strawberry Pavlova Recipe',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),

          //the secand text
          Container(
            // width: 800,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Pavlova is a mettingue bassed dessert'
              'raffed after the Rassian ballerina Anna'
              'Pavalva Pavigva features a crisp crust and'
              'soft, Light inside, topped with frut and'
              'whipped cream',
              style: TextStyle(fontSize: 30, height: 1),
              textAlign: TextAlign.center,
            ),
          ),
          // the white card
          Card(
            elevation: 20,
            shadowColor: Colors.black12,
            child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 50, 10),
                // width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      //first row
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          //stars row
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        const Text(
                          // the text
                          '17 review',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                    const Row(
                      //secand row
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              size: 60,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'feed',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              '2 - 4',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.category,
                              color: Colors.green,
                              size: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'feed',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              '2 - 4',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(
                              Icons.emoji_food_beverage,
                              color: Colors.green,
                              size: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'feed',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              '2 - 4',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class Wrap0 extends StatelessWidget {
  const Wrap0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: const Text('therd container'),
          )
        ]),
      ),
    );
  }
}

class SizeBox0 extends StatelessWidget {
  const SizeBox0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Row(
          children: [
            const Text('Ahmed Mohsen'),
            // SizedBox(width: 100,),
            // Spacer(),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue)),
            )),
            const Text('Ahmed Mohsen'),
          ],
        ));
  }
}

class Center0 extends StatelessWidget {
  const Center0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: const Center(
            child: Text(
              'How Are You',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ));
  }
}

class ElevatedButtonIcon0 extends StatelessWidget {
  const ElevatedButtonIcon0({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: const Drawer(),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.access_alarm_sharp),
          label: const Text('Alarm'),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding:
                  const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
              elevation: 100,
              shadowColor: const Color(0xFF222211),
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          onLongPress: () {},
          onPressed: () {
            // ignore: avoid_print
            print('No');
          },
        ),
      ),
    );
  }
}

class ElevatedButton0 extends StatelessWidget {
  const ElevatedButton0({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          elevation: 10,
          shadowColor: const Color(0xFF222211),
          textStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      onLongPress: () {},
      onHover: (bool value) {},
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                actions: [
                  MaterialButton(
                    onPressed: () {
                      print('onpressed');
                      // print(Email.text);
                      // print(PhoneNumber.text);
                      // print(UserName.text);
                      // print(Password.text);
                      save();
                    },
                    child: const Text('OK'),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  // MaterialButton(onPressed:(){} ,child: Text(''),),
                ],
                title: const Text('Creat account'),
                content: const TextFormField0());
          },
        );
      },
      child: const Row(
          mainAxisSize: MainAxisSize.min,
          // ignore: always_specify_types
          children: [
            Icon(
              Icons.login,
              size: 30,
            ),
            Text('Login')
          ]),
    );
  }
}

class MaterialButton0 extends StatelessWidget {
  const MaterialButton0({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // height: 20,
      // minWidth: 50,
      elevation: 10,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textColor: Colors.white,
      splashColor: Colors.green,
      color: Colors.blue,
      onLongPress: () {
        // ignore: avoid_print
        print('yes');
      },
      onPressed: () {
        Navigator.of(context).pushNamed('location');
      },

      child: const Row(
        children: [
          Icon(
            Icons.person_2,
            size: 30,
          ),
          Text(
            'Signin',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TextButton0 extends StatelessWidget {
  const TextButton0({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text(
        '+',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        // ignore: avoid_print
        print('No');
      },
    );
  }
}

class IconButton0 extends StatefulWidget {
  const IconButton0({super.key});

  @override
  State<IconButton0> createState() => _IconButton0State();
}

class _IconButton0State extends State<IconButton0> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      mouseCursor: SystemMouseCursors.click,
      icon: const Icon(
        Icons.search,
        size: 40,
      ),
      onPressed: () {
        showSearch(context: context, delegate: DataSearch());
      },
    );
  }
}

class DataSearch extends SearchDelegate {
  List<String> names = ['Ahmed', 'Mohsen', 'Heissan', 'Mohmmed'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            // Navigator.of(context).pop();
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        // Navigator.of(context).pop();
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List filterNames = names.where((String e) => e.startsWith(query)).toList();
    List<String> filterNames =
        names.where((String e) => e.contains(query)).toList();
    return ListView.builder(
      itemCount: query == '' ? names.length : filterNames.length,
      itemBuilder: (BuildContext context, int i) {
        return InkWell(
          onTap: () {
            query = query == '' ? names[i] : filterNames[i];
            showResults(context);
          },
          child: Container(
              margin: const EdgeInsets.all(10),
              child: query == ''
                  ? Text(
                      names[i],
                      style: const TextStyle(fontSize: 25),
                    )
                  : Text(
                      filterNames[i],
                      style: const TextStyle(fontSize: 25),
                    )),
        );
      },
    );
  }
}

class InkWell0 extends StatelessWidget {
  const InkWell0({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      mouseCursor: SystemMouseCursors.click,
      onTap: () {
        // ignore: avoid_print
        print('Sorry');
      },
      child: Image.asset(
        'images/maryou.jpg',
      ),
    ));
  }
}

int count = 0;

class FloatingActionButton0 extends StatefulWidget {
  const FloatingActionButton0({super.key});

  @override
  State<FloatingActionButton0> createState() => _FloatingActionButton0State();
}

class _FloatingActionButton0State extends State<FloatingActionButton0> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        setState(() {
          count++;
        });
        print(count);
      },
      child: const Icon(Icons.add),
    );
  }
}

class GestureDetector0 extends StatelessWidget {
  const GestureDetector0({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 50,
            height: 30,
            child: const Text('Add', style: TextStyle(color: Colors.white))),
        // onDoubleTap: () {
        //   print('Double tap');
        // },
        // onTap: () => print('single tap'),
        // onTapUp: (tap) {
        //   print('Up');
        // },
        // onTapDown: (tap) {
        //   print('Down');
        // },
        // onTapCancel: () {
        //   print('cacel');
        // },
        // onLongPress: () => print('long tap'),
        onLongPressStart: (LongPressStartDetails details) => print('start'),
        onLongPressEnd: (LongPressEndDetails details) => print('end'),
      ),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   var selectedCountry = null;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         drawer: Drawer(),
//         body: Center(
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 30),
//             padding: EdgeInsets.all(10),
//             color: Colors.blue,
//             child: DropdownButtonHideUnderline(
//               child: DropdownButtonFormField(
//                 onTap: () => print('tap'),
//                 icon: Icon(Icons.back_hand),
//                 dropdownColor: Colors.lightBlueAccent,
//                 // alignment: Alignment.center,
//                 isExpanded: true,

//                 hint: Container(
//                   width: double.infinity,
//                   child: Text(
//                     'choose country',
//                     textDirection: TextDirection.rtl,
//                   ),
//                 ),
//                 items: ['USA', 'EGY', 'SY', 'UAE', 'KSA']
//                     .map((e) => DropdownMenuItem(
//                           child: Text('Country $e'),
//                           value: e,
//                         ))
//                     .toList(),
//                 onChanged: (val) {
//                   setState(() {
//                     selectedCountry = '$val';
//                   });
//                   print(val);
//                 },
//                 value: selectedCountry,
//               ),
//             ),
//           ),
//         ));
//   }
// }

class Switch0 extends StatefulWidget {
  const Switch0({super.key});

  @override
  State<Switch0> createState() => _Switch0State();
}

class _Switch0State extends State<Switch0> {
  bool t = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('turn on Dark mode'),
        Switch(
          value: t,
          onChanged: (bool val) {
            setState(() {
              t = val;
              if (val == true) {
                b = Colors.black;
              } else {
                b = Colors.white;
              }
            });
            print('$b');
          },
        )
      ],
    );
  }
}

class SwitchListTile0 extends StatefulWidget {
  const SwitchListTile0({super.key});

  @override
  State<SwitchListTile0> createState() => _SwitchListTile0State();
}

class _SwitchListTile0State extends State<SwitchListTile0> {
  bool sw = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeColor: Theme.of(context).primaryColor,
      activeTrackColor: Theme.of(context).primaryColorLight,
      inactiveTrackColor: Theme.of(context).canvasColor,
      hoverColor: Theme.of(context).primaryColorLight,

      // controlAffinity: ListTileControlAffinity.platform,
      // controlAffinity: ListTileControlAffinity.trailing,

      title: Text(
        'turn on notifications',
        style: Theme.of(context).textTheme.displayMedium,
      ),
      secondary: const Icon(Icons.notifications_active),
      value: sw,
      onChanged: (bool val) {
        setState(() {
          sw = val;
        });
      },
    );
  }
}

class ListTile0 extends StatefulWidget {
  const ListTile0({super.key});

  @override
  State<ListTile0> createState() => _ListTile0State();
}

class _ListTile0State extends State<ListTile0> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: ListTile(
        onLongPress: () => setState(() {
          print('rahim');
        }),
        onTap: () {
          setState(() {
            print('rahman');
          });
        },
        subtitle: const Text('befor you go'),
        leading: const Icon(Icons.mobile_friendly),
        trailing: const Checkbox0(),
        title: const Text('come soon'),
        tileColor: Colors.red,
      ),
    );
  }
}

class Checkbox0 extends StatefulWidget {
  const Checkbox0({super.key});

  @override
  State<Checkbox0> createState() => _Checkbox0State();
}

class _Checkbox0State extends State<Checkbox0> {
  bool ts = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ts,
      onChanged: (bool? val) {
        setState(() {
          ts = val!;
        });
      },
    );
  }
}

class CircleAvatar0 extends StatefulWidget {
  const CircleAvatar0({super.key});

  @override
  State<CircleAvatar0> createState() => _CircleAvatar0State();
}

class _CircleAvatar0State extends State<CircleAvatar0> {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 200,
      backgroundImage: AssetImage(
        'images/profile image2.jpg',
      ),
    );
  }
}

class DropdownMenuItem0 extends StatefulWidget {
  const DropdownMenuItem0({super.key});

  @override
  State<DropdownMenuItem0> createState() => _DropdownMenuItem0State();
}

class _DropdownMenuItem0State extends State<DropdownMenuItem0> {
  String name = 'Ahmed';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Theme.of(context).primaryColor,
        size: 30,
      ),
      // hint: Text(
      //   'Choose a name',
      //   style: TextStyle(color: Colors.white),
      // ),

      underline: Divider(
        color: Theme.of(context).primaryColor,
      ),
      // focusColor: Colors.blue,
      dropdownColor: Theme.of(context).canvasColor,
      items: ['Ahmed', 'Mohsen', 'Heissan', 'Mohmmed']
          .map((String e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ))
          .toList(),
      onChanged: (String? val) {
        setState(() {
          name = val!;
        });
      },
      value: name,
    );
  }
}

class CheckboxListTile0 extends StatefulWidget {
  const CheckboxListTile0({super.key});

  @override
  State<CheckboxListTile0> createState() => _CheckboxListTile0State();
}

class _CheckboxListTile0State extends State<CheckboxListTile0> {
  bool usa2 = false;
  bool usb2 = false;
  bool usc2 = false;
  bool usd2 = false;
  bool usa = false;
  bool usb = false;
  bool usc = false;
  bool usd = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CheckboxListTile(
            activeColor: Colors.blue,
            secondary: const Icon(Icons.home),
            title: const Text('HomePage'),
            selected: usb2,
            value: usb2,
            onChanged: (bool? val) {
              setState(() {
                usb2 = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            activeColor: Colors.blue,
            secondary: const Icon(Icons.help_outline_outlined),
            title: const Text('Help'),
            selected: usc2,
            value: usc2,
            onChanged: (bool? val) {
              setState(() {
                usc2 = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            secondary: const Icon(Icons.settings),
            subtitle: const Text('Settings'),
            activeColor: Colors.blue,
            selected: usb,
            value: usb,
            onChanged: (bool? val) {
              setState(() {
                usb = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            activeColor: Colors.blue,
            secondary: const Icon(Icons.exit_to_app),
            selected: usd2,
            title: const Text('Exit'),
            value: usd2,
            onChanged: (bool? val) {
              setState(() {
                usd2 = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            secondary: const Icon(Icons.flag_circle_outlined),
            subtitle: const Text('flag_circle_outlined'),
            value: usa,
            onChanged: (bool? val) {
              setState(() {
                usa = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            secondary: const Icon(Icons.flag_circle),
            subtitle: const Text('flag_circle'),
            value: usc,
            onChanged: (bool? val) {
              setState(() {
                usc = val!;
              });
              print(val);
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Colors.red,
            isThreeLine: true,
            title: const Text('EGY'),
            subtitle: const Text('flag_circle_rounded'),
            secondary: const Icon(Icons.flag_circle_rounded),
            selected: usd,
            value: usd,
            onChanged: (bool? val) {
              setState(() {
                usd = val!;
              });
              print(val);
            },
          ),
        ],
      ),
    );
  }
}

class Radio0 extends StatefulWidget {
  const Radio0({super.key});

  @override
  State<Radio0> createState() => _Radio0State();
}

class _Radio0State extends State<Radio0> {
  String country = 'do';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            'USA',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Radio(
            hoverColor: Theme.of(context).primaryColorLight,
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            value: 'usa',
            groupValue: country,
            onChanged: (String? val) {
              setState(() {
                country = val!;
              });
              print(country);
            },
          ),
          Text(
            'EGY',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Radio(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            value: 'eg',
            groupValue: country,
            onChanged: (String? val) {
              setState(() {
                country = val!;
              });
              print(country);
            },
          ),
          Text(
            'KSA',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Radio(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            value: 'ks',
            groupValue: country,
            onChanged: (String? val) {
              setState(() {
                country = val!;
              });
              print(country);
            },
          ),
        ],
      ),
    );
  }
}

class RadioListTile0 extends StatefulWidget {
  const RadioListTile0({super.key});

  @override
  State<RadioListTile0> createState() => _RadioListTile0State();
}

class _RadioListTile0State extends State<RadioListTile0> {
  String car = 'f';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          RadioListTile(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            selected: car == 'BMW' ? true : false,
            title: Text(
              'BMW',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            value: 'BMW',
            groupValue: car,
            onChanged: (String? val) {
              setState(() {
                car = val!;
              });
            },
          ),
          RadioListTile(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            selected: car == 'Mer',
            title: Text(
              'Mercedes',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            value: 'Mer',
            groupValue: car,
            onChanged: (String? val) {
              setState(() {
                car = val!;
              });
            },
          ),
          RadioListTile(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            selected: car == 'toy',
            title: Text(
              'Toyota',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            value: 'toy',
            groupValue: car,
            onChanged: (String? val) {
              setState(() {
                car = val!;
              });
            },
          ),
          RadioListTile(
            fillColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            hoverColor: Theme.of(context).primaryColorLight,
            selected: car == 'por',
            title: Text(
              'Porsche',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            value: 'por',
            groupValue: car,
            onChanged: (String? val) {
              setState(() {
                car = val!;
              });
            },
          ),
        ],
      ),
    );
  }
}

class PageView0 extends StatefulWidget {
  const PageView0({super.key});

  @override
  State<PageView0> createState() => _PageView0State();
}

class _PageView0State extends State<PageView0> {
  PageController pc = PageController(initialPage: 1);
  @override
  // void initState() {
  //   PageController pc =
  //       new PageController(initialPage: 1, viewportFraction: 0.5);
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
              height: 400,
              child: Stack(
                children: [
                  PageView(controller: pc, children: [
                    Image.asset('images/B1.webp', fit: BoxFit.fill),
                    Image.asset('images/B2.webp', fit: BoxFit.fill),
                    Image.asset('images/B3.webp', fit: BoxFit.fill),
                  ]),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            pc.animateToPage(0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            pc.animateToPage(2,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeIn);
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ))
                    ],
                  )
                ],
              )),
        ],
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

class TextFormField0 extends StatefulWidget {
  const TextFormField0({super.key});

  @override
  State<TextFormField0> createState() => _TextFormField0State();
}

class _TextFormField0State extends State<TextFormField0> {
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
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), hintText: 'E-mail'),
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
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone), hintText: 'Phone number'),
          ),
          TextFormField(
            controller: UserName,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_rounded),
                hintText: 'User Name'),
          ),
          TextFormField(
            controller: Password,
            textInputAction: TextInputAction.next,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock), hintText: 'Passworde'),
          )
        ],
      ),
    );
  }
}

class SpeedDial0 extends StatefulWidget {
  const SpeedDial0({super.key});

  @override
  State<SpeedDial0> createState() => _SpeedDial0State();
}

class _SpeedDial0State extends State<SpeedDial0> {
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      spacing: 12,
      spaceBetweenChildren: 12,
      icon: Icons.share,
      // animatedIcon: AnimatedIcons.menu_close,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      onOpen: () => showToast('Open...'),
      onClose: () => showToast('Close...'),
      openCloseDial: isDialOpen,
      children: [
        SpeedDialChild(
          label: 'Copy ',
          child: const Icon(Icons.copy),
          onTap: () {
            setState(() {
              showToast('Selected Copy...');
            });
          },
        ),
        SpeedDialChild(
          label: 'Maile ',
          child: const Icon(FontAwesomeIcons.mailchimp),
          onTap: () => showToast('Selected Maile...'),
        ),
        SpeedDialChild(
          label: 'facebook',
          child: const Icon(FontAwesomeIcons.facebook),
          onTap: () => showToast('Selected Facebook...'),
        ),
        SpeedDialChild(
          label: 'Copy ',
          child: const Icon(FontAwesomeIcons.twitter),
          onTap: () => showToast('Selected Twitter...'),
        ),
        SpeedDialChild(
          label: 'Copy ',
          child: const Icon(FontAwesomeIcons.linkedin),
          onTap: () => showToast('Selected Linkedin...'),
        ),
      ],
    );
  }

  Future showToast(String message) async {
    await Fluttertoast.cancel();
    Fluttertoast.showToast(msg: message, fontSize: 18);
  }
}
