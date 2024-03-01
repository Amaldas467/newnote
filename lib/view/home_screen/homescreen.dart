import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homescreen_controller.dart';
import 'package:flutter_application_1/view/home_screen/widgets/bottom_sheet.dart';
import 'package:flutter_application_1/view/home_screen/widgets/custom_card.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homescreencontroller homescreencontroller = Homescreencontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Notepad",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Bottom_sheet(
                    onsavepressed: () {
                      homescreencontroller.adddata();
                      setState(() {});
                    },
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.separated(
        itemCount: homescreencontroller.dummydb.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Customcards(
            title: homescreencontroller.dummydb[index]["title"],
            des: homescreencontroller.dummydb[index]["des"],
            date: homescreencontroller.dummydb[index]["date"],
            color: homescreencontroller.dummydb[index]["color"],
            ondeletepressed: () {
              homescreencontroller.deletedata(index);
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
