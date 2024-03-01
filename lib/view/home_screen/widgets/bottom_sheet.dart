import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homescreen_controller.dart';

class Bottom_sheet extends StatefulWidget {
  const Bottom_sheet({super.key, required this.onsavepressed});
  final void Function()? onsavepressed;

  @override
  State<Bottom_sheet> createState() => _Bottom_sheetState();
}

class _Bottom_sheetState extends State<Bottom_sheet> {
  @override
  Widget build(BuildContext context) {
    List colorlist = [Colors.red, Colors.green, Colors.blue, Colors.amber];
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 93, 92, 92),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: Homescreencontroller.titlecontroller,
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 223, 220, 220),
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text("Title")),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: Homescreencontroller.descontroller,
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 223, 220, 220),
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text("Description")),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: Homescreencontroller.datecontroller,
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 223, 220, 220),
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text("Date")),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: colorlist.length,
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                        color: colorlist[index],
                        border: Border.all(width: 2, color: Colors.white)),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 223, 220, 220),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("cancel")),
                ),
                InkWell(
                  onTap: () {
                    widget.onsavepressed!();
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 220, 220),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text("save")),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
