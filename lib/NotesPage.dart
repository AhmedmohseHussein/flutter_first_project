import 'package:flutter/material.dart';

List notes = [
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'hh'},
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'fjj'},
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'fjj'},
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'fjj'},
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'fjj'},
  {'note': 'I will be a great programer', 'image': 'image.jpg', 'title': 'fjj'},
];

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double mq = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed('AddPage');
          },
        ),
        appBar: AppBar(
          title: Text(
            'NotesPage',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int i) {
              return Dismissible(
                  key: Key('$i'),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListNotes(
                      notes0: notes[i],
                      mdq: mq,
                      k: i,
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  ListNotes({super.key, this.notes0, this.mdq, this.k});
  var notes0;
  var mdq;
  var k;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColorDark,
        child: Row(
          children: [
            Expanded(
                child: Image(
              image: AssetImage('images/B$k.webp'),
              fit: BoxFit.fill,
            )),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  '${notes0['title']}',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                subtitle: Text(
                  '$k: ${notes0['note']}',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}
