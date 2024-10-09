import 'package:flutter/material.dart';
import '../app_pages.dart';
import '../main0.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool t = false;

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    print('Ahmed');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            bottomNavigationBar: const BottomNavigationBar0(),
            key: scaffoldkey,
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              bottom: TabBar(
                  indicatorColor: Theme.of(context).primaryColor,
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
                      children: [
                        Icon(Icons.notifications),
                        Text('Notifications')
                      ],
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
                    child: const IconButton0()),
              ],
              title: const Text('Home Page'),
              centerTitle: false,
            ),
            drawer: const Drawer0(),
            floatingActionButton: const FloatingActionButton0(),
            body: const TabBarView(children: [
              FirstPage(),
              SettingsPage(),
              NotificationsPage(),
              Profile(),
            ])));
  }
}
