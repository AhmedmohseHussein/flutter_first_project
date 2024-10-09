import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MailePage extends StatefulWidget {
  const MailePage({super.key});

  @override
  State<MailePage> createState() => _MailePageState();
}

class _MailePageState extends State<MailePage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  ScrollController sc = ScrollController();
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  void initState() {
    sc = ScrollController();
    sc.addListener(() {
      print(sc.offset);
      print('${sc.position.maxScrollExtent}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        key: scaffoldkey,
        floatingActionButton: SpeedDial(
          spacing: 12,
          spaceBetweenChildren: 12,
          icon: Icons.share,
          // animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.black,
          overlayOpacity: 0.4,
          closeManually: true,
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
        ),
        appBar: AppBar(
          title: const Text('Maile'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          child: ListView(
            controller: sc,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    sc.jumpTo(sc.position.maxScrollExtent);
                  });
                },
                child: const Text('jump to bottom'),
              ),
              ...List.generate(
                  20,
                  (int index) => Container(
                        height: 100,
                        margin: const EdgeInsets.all(10),
                        color: index.isEven ? Colors.green : Colors.amber,
                        child: Text('$index Container'),
                      )),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    // sc.jumpTo(sc.position.minScrollExtent);
                    sc.animateTo(sc.position.minScrollExtent,
                        duration: const Duration(seconds: 2), curve: Curves.bounceIn);
                  });
                },
                child: const Text('jump to top'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future showToast(String message) async {
    // Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: message,
        fontSize: 22,
        webPosition: 'center',
        webBgColor: 'black',
        timeInSecForIosWeb: 3,
        gravity: ToastGravity.BOTTOM);
  }
}
