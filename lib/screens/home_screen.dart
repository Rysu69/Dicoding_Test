import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 List<String> notes = [];
 TextEditingController textController = TextEditingController();

 void addNote() {
    setState(() {
      notes.add(textController.text);
      textController.clear();
    });
 }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Catatan'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Text(notes[index]),
                 ),
                );
              },
            ),
          ),
          Padding(
 padding: EdgeInsets.all(8.0),
 child: Column(
 children: [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          labelText: 'Catatan Baru',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    ),
          TextButton(
            onPressed: addNote,
            child: Text('Tambahkan Catatan'),
          ),
          const SizedBox(
                  height: 10,
                ),
        ],
      ),
    )]));
 }
}

