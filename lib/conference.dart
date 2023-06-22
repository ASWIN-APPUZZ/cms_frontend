import 'package:flutter/material.dart';
import 'fullscreen_input.dart';

class Conference extends StatefulWidget {
  const Conference({super.key});

  @override
  _ConferenceState createState() => _ConferenceState();
}

class Words {
  String enteredText1 = '';
  String enteredText2 = '';

  Words({required this.enteredText1, required this.enteredText2});
}

class _ConferenceState extends State<Conference> {
  List<Words> dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conferences"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: ListTile(
              title: Text(
                dataList[index].enteredText1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.delete),
              subtitle: Text(
                dataList[index].enteredText2,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => FullScreen(), fullscreenDialog: true)),
        child: const Icon(Icons.add),
      ),
    );
  }
}

OutlineInputBorder myInputBoder() {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.elliptical(10, 5)),
    borderSide: BorderSide(
      color: Colors.grey.shade300,
      width: 3,
    ),
  );
}

OutlineInputBorder myFocusBoder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 2,
    ),
  );
}
