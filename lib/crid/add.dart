import 'dart:html';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  // File image = File('');
  final ImagePicker imagePicker = ImagePicker();

  uploadImage() async {
    final XFile? pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        // image = File(pickedImage.path as List<Object>);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('AddNotes'),
      ),
      body: Container(
        child: Column(children: [
          Form(
              child: Column(
            children: [
              TextFormField(
                maxLength: 30,
                decoration: const InputDecoration(
                    fillColor: Colors.amber,
                    filled: true,
                    labelText: 'Title Note',
                    icon: Icon(Icons.note)),
              ),
              TextFormField(
                maxLength: 200,
                minLines: 1,
                maxLines: 3,
                decoration: const InputDecoration(
                    fillColor: Colors.amber,
                    filled: true,
                    labelText: 'Note',
                    icon: Icon(Icons.note)),
              ),
              ElevatedButton(
                  onPressed: () {
                    showBottomSheet();
                  },
                  child: const Text('Add image')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Add note')),
              // image == null ? Text('No image') : Image.file(image)
            ],
          ))
        ]),
      ),
    );
  }

  Future showBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(20),
            height: 170,
            child: Column(
              children: [
                const Text(
                  'Select image',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      tooltip: 'Camera...',
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        size: 30,
                      ),
                      padding: const EdgeInsets.all(10),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      tooltip: 'Files manager...',
                      onPressed: () {},
                      icon: const Icon(
                        Icons.folder,
                        size: 30,
                      ),
                      padding: const EdgeInsets.all(10),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      tooltip: 'Gallery...',
                      onPressed: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          title: 'Dialog Title',
                          desc: 'Dialog description here.............',
                          body: const Text('Ahmed Mohsen'),
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      },
                      icon: const Icon(
                        Icons.photo,
                        size: 30,
                      ),
                      padding: const EdgeInsets.all(10),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
