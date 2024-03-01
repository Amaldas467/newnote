import 'package:flutter/material.dart';

class Customcards extends StatelessWidget {
  const Customcards({
    super.key,
    required this.title,
    required this.des,
    required this.date,
    required this.color,
    required this.ondeletepressed,
  });
  final String title;
  final String des;
  final String date;
  final Color color;
  final Function()? ondeletepressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      child: Container(
        //height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      ondeletepressed!();
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    des,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    date,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
