import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'NotesPage.dart';
import 'PageTwo.dart';
import 'main0.dart';
import 'pageFour.dart';
import 'pageThree.dart';

int colorNumber = 1;
Color b = Colors.white;
bool t = false;

class AppBar0 extends StatelessWidget {
  const AppBar0({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: TabBar(
          onTap: (int value) {
            print(value);
          },
          tabs: const [
            Column(
              children: [Icon(Icons.home), Text('Home')],
            ),
            Column(
              children: [Icon(Icons.settings), Text('Settings')],
            ),
            Column(
              children: [Icon(Icons.notifications), Text('Notifications')],
            ),
            Column(
              children: [Icon(Icons.person), Text('Profile')],
            )
          ]),
      leadingWidth: 100,
      // leading: IconButton(
      //   icon: Icon(Icons.home),
      //   onPressed: () {},
      // ),
      actions: [
        Container(
            padding: const EdgeInsets.only(right: 30),
            child: const IconButton0())
      ],
      title: const Text('Home Page'),
      centerTitle: false,
    );
  }
}

class Drawer0 extends StatefulWidget {
  const Drawer0({super.key});

  @override
  State<Drawer0> createState() => _Drawer0State();
}

class _Drawer0State extends State<Drawer0> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                currentAccountPicture: const CircleAvatar0(),
                accountName: const Text('Ahmed Mohsen'),
                accountEmail: const Text('am2546@gmail.com')),
            const CheckboxListTile0(),
          ],
        ));
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double mq = MediaQuery.of(context).size.width;
    return SizedBox(
        width: mq - 100,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                children: [
                  DropdownMenuItem0(),
                  Row(
                    children: [
                      Radio0(),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
            const InkWell0(),
            const RadioListTile0(),
          ],
        ));
  }
}

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: const [
          SwitchListTile0(),
        ],
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(30),
                padding: const EdgeInsets.all(30),
                child: const CircleAvatar0()),
            TextFormField(),
            const PageView0(),
            Text('$username'),
            MaterialButton(
              padding: EdgeInsets.all(30),
              color: Colors.blue,
              child: Text(
                'get prefs',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onPressed: () async {
                await getprfs();
              },
            )
          ],
        ),
      )
    ]);
  }

  var username;
  getprfs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('name');
    });
    print('success');
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double r = 10.0;
  @override
  void initState() {
    print('Mohsen');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwitchListTile(
              inactiveTrackColor: Theme.of(context).canvasColor,
              // thumbColor: Theme.of(context).primaryColor,
              activeColor: Theme.of(context).primaryColor,
              title: Text(
                'Turn on dark mode',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              value: t,
              onChanged: (bool val) {
                setState(() {
                  t = val;
                  if (val == true) {
                    colorNumber = 2;
                    b = Colors.black;
                  } else {
                    colorNumber = 1;
                    b = Colors.white;
                  }
                });
              }),
          Slider(
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).primaryColorLight,
            label: 'voice',
            value: r,
            max: 100,
            onChanged: (double value) {
              setState(() {
                r = value;
              });
            },
          )
        ],
      ),
    );
  }
}

List<Widget> pages = [
  const NotesPage(),
  const MailePage(),
  const Three(),
  Four()
];

class BottomNavigationBar0 extends StatefulWidget {
  const BottomNavigationBar0({super.key});

  @override
  State<BottomNavigationBar0> createState() => _BottomNavigationBar0State();
}

class _BottomNavigationBar0State extends State<BottomNavigationBar0> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // fixedColor: Colors.red,
        // selectedItemColor: Colors.amber,
        // unselectedItemColor: Colors.green,

        currentIndex: selected,
        iconSize: 30,
        onTap: (int i) {
          setState(() {
            selected = i;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return pages[i];
              },
            ));
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Notes',
              icon: const Icon(Icons.notes)),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Maile',
              icon: const Icon(Icons.mail_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Phone',
              icon: const Icon(Icons.phone)),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Location',
              icon: const Icon(Icons.location_on)),
        ]);
  }
}
