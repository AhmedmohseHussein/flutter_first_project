import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jiffy/jiffy.dart';

changeLocal() async {
  await Jiffy.setLocale('ar');
}

class Four extends StatelessWidget {
  Four({super.key});
  DateTime dateOne = DateTime.now().add(const Duration(days: 10));
  DateTime dateTwo = DateTime.now().subtract(const Duration(hours: 1));
  DateTime dateThree = DateTime.now().subtract(const Duration(days: 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      endDrawer: const Drawer(),
      body: ListView(children: [
        MaterialButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          color: Colors.blue,
          child: const Text('Back'),
        ),
        MaterialButton(
          onPressed: () => Navigator.of(context).pushReplacementNamed('shop'),
          color: Colors.blue,
          child: const Text('go to shop'),
        ),
        DropdownSearch<String>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: const ['Brazil', 'Italia (Disabled)', 'Tunisia', 'Canada'],
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: 'Menu mode',
              hintText: 'country in menu mode',
            ),
          ),
          onChanged: print,
          selectedItem: 'Brazil',
        ),
        DropdownSearch<String>.multiSelection(
          items: const ['Brazil', 'Italia (Disabled)', 'Tunisia', 'Canada'],
          popupProps: PopupPropsMultiSelection.menu(
            showSearchBox: true,
            showSelectedItems: true,
            disabledItemFn: (String s) => s.startsWith('T'),
          ),
          onChanged: print,
          selectedItems: const ['Brazil'],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: () async {
              final Position cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);
            },
            child: const Text('get latitude and lonigtude')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: () async {
              List<Placemark> placemark =
                  await placemarkFromCoordinates(52.2165157, 6.9437819);
              print(placemark[0].country);
            },
            child: const Text('get Placemark')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: () async {
              final double distanceBetween = Geolocator.distanceBetween(
                  24.327077, 39.631053, 27.547242, 41.741836);
              final double distanceKM = distanceBetween / 1000;
              print(distanceBetween);
            },
            child: const Text('get distanceBetween')),
        const SizedBox(
          height: 500,
          width: 400,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: () async {
              print(DateTime.now().subtract(const Duration(days: 10)));
              print(DateTime.now());
              print(DateTime.now()
                  .add(const Duration(days: 10, seconds: 20, hours: 10)));
              print(dateOne.isBefore(dateTwo));
              print(dateOne.isAfter(dateTwo));
              print(dateOne.isAtSameMomentAs(dateTwo));
            },
            child: const Text('get date and time')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
            onPressed: () async {
              print(Jiffy.parseFromDateTime(dateTwo).EEEE);
              print(Jiffy.parseFromDateTime(dateTwo).fromNow());
              print(Jiffy.parseFromDateTime(dateTwo).format(pattern: 'MMMM'));

              Jiffy;
            },
            child: const Text('get Time format')),
      ]),
    );
  }

  Future getPosition() async {
    bool services = false;
    LocationPermission per = LocationPermission.always;
    services = await Geolocator.isLocationServiceEnabled();

    print(services);
    per = await Geolocator.checkPermission();

    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
    }

    if (per == LocationPermission.whileInUse) {
      print(getLatAndLong());
    }

    print(per);
  }

  Future<Position> getLatAndLong() async {
    return await Geolocator.getCurrentPosition()
        .then((Position value) => value);
  }
}
