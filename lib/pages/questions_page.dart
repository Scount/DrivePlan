import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
      ),
      body: Column(
        children: [
          Image.network('https://picsum.photos/250?image=9', height: 250),
          Text("Hier steht diese kack Frage?"),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Text("Ja")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Text("Ja")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    Text("Ja")
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
              IconButton(icon: Icon(Icons.info), onPressed: () {}),
              IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
