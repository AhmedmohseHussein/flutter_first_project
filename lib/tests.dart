import 'package:flutter/material.dart';

List names = [
  {
    'name': 'Ahmed',
    'age': 22,
  },
  {
    'name': 'Mohmmed',
    'age': 24,
  },
  {
    'name': 'Mohsen',
    'age': 25,
  },
  {
    'name': 'Heissan',
    'age': 23,
  },
];
List names2 = [
  'A',
  'B',
  'C',
  'D',
  'f',
  'g',
  'k',
  'A',
  'B',
  'C',
  'D',
  'f',
  'g',
  'k'
];

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (BuildContext context, int i) {
        return Card(
          child: ListTile(
            // title: Text('${names2[i]}'),
            leading: Text('${names[i]['name']}'),
            // subtitle: Text('${names[i]['age']}'),
          ),
        );
      },
    );
  }
}

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int i) {
        return const Card(child: ListTile());
      },
      itemCount: names.length,
      separatorBuilder: (BuildContext context, int i) {
        return Card(
          child: Text('$context'),
        );
      },
    );
  }
}

class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
      children: List.generate(names2.length, (int i) {
        return Container(
          alignment: Alignment.center,
          height: 100,
          color: Colors.amber,
          child: Text(
            '${names2[i]}',
            // textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10),
          ),
        );
      }),
    );
  }
}

class Test4 extends StatefulWidget {
  const Test4({super.key});

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
          bottom: const TabBar(tabs: [Text('home'), Text('settings')]),
        ),
        body: const TabBarView(children: [Text('Ahmed'), Text('Mohsen')]),
      ),
    );
  }
}
