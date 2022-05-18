import 'package:flutter/material.dart';
import 'package:flutter_quizapp/quiz.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void asd(x) {
    if (x == 1) {
      //for finance quiz
      var nums = 0;
      var title = "Personal Finance";
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz(y: nums, titl: title)),
      );
    } else if (x == 2) {
      //for investment quiz
      var nums = 1;
      var title = "Investment and Portfolio Management";
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz(y: nums, titl: title)),
      );
    } else if (x == 3) {
      //for behavioral quiz
      var nums = 2;
      var title = "Behavioral Finance";
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz(y: nums, titl: title)),
      );
    } else if (x == 4) {
      // for capital quiz
      var nums = 3;
      var title = "Capital Market";
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Quiz(y: nums, titl: title)),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'TOPICS',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0, // 0 yung value para mawala yung back shadow sa app bar
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_outline_rounded),
              iconSize: 35,
              color: Colors.black,
              onPressed: () => {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text('Welcome!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                )),
            const Text('Find a course you want to learn',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                )),
            const Padding(padding: EdgeInsets.all(6.0)), //Space between rows
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  //color: Colors.green,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {asd(1)},
                    child: Ink.image(
                      image: const AssetImage('images/personal.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                //const Padding(padding: EdgeInsets.all(5.0)),    //Space between columns
                Material(
                  //color: Colors.purple,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {asd(2)},
                    child: Ink.image(
                      image: const AssetImage('images/investment.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(6.0)), //Space between rows
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  //color: Colors.red,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {asd(3)},
                    child: Ink.image(
                      image: const AssetImage('images/behavioral.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                //const Padding(padding: EdgeInsets.all(5.0)),    //Space between columns
                Material(
                  //color: Colors.deepOrange,
                  //elevation: 8,
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () => {asd(4)},
                    child: Ink.image(
                      image: const AssetImage('images/capital.png'),
                      height: 210,
                      width: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
