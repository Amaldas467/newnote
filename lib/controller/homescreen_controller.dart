import 'package:flutter/material.dart';

class Homescreencontroller {
  List<Map<String, dynamic>> dummydb = [
    {
      "title": "newtitle",
      "des":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      "date": "29/02/24",
      "color": Colors.blue,
    },
  ];

  //function to add data
  void adddata() {
    dummydb.add(
      {
        "title": "title",
        "des":
            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        "date": "30/02/24",
        "color": Colors.red,
      },
    );
  }

  //func to delete
  void deletedata(int index) {
    dummydb.removeAt(index);
  }
}
