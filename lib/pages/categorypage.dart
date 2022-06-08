// ignore_for_file: file_names, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_quizapp/main.dart';
import 'package:flutter_quizapp/pages/quiz.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_quizapp/pages/questionandanswer.dart';

var categ = Categories();

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? mykey, required this.title}) : super(key: mykey);
  final String title;

  @override
  State<CategoryPage> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {
  int selectedIndex = 0;
  final screens2 = [
    'Description',
    'Sources',
  ];
  late var screens = [
    Text(categ.categoryDescription[int.parse(widget.title)],
        //textAlign: TextAlign.justify,
        style: const TextStyle(
          height: 1.8,
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w500,
        )),
    Column(
      children: <Widget>[
        Row(children: const <Widget>[
          Icon(Icons.link, size: 25),
          Text(" Links",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Poppins-Medium',
                fontWeight: FontWeight.w500,
              )),
        ]),
        //////////For link and link title
        for (int x = 0;
            x < categ.categoryLinks[int.parse(widget.title)].length;
            x++) ...[
          const Padding(padding: EdgeInsets.all(6.0)),
          Link(
            uri: Uri.parse(categ.categoryLinks[int.parse(widget.title)][x]),
            builder: (context, followLink) => GestureDetector(
              onTap: followLink,
              child: Text(
                categ.categoryLinkstitle[int.parse(widget.title)][x],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Poppins-Medium',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color.fromRGBO(83, 215, 80, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 0 yung value para mawala yung back shadow sa app bar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          iconSize: 35,
          color: Colors.black,
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            )
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //===============Label and Icon Column
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(categ.categoryTitle[int.parse(widget.title)],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.w900,
                        )),
                    Image(
                      image: AssetImage(
                          categ.categoryimage[int.parse(widget.title)]),
                      height: 180,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                //===============White Box (Container)
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between columns
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                  height: 410,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      //===============Description & Add to Bookmarks button
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(screens2[selectedIndex],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Poppins-ExtraBold',
                                  fontWeight: FontWeight.w800,
                                )),
                            IconButton(
                              iconSize: 30,
                              icon: const Icon(Icons.bookmark_add_outlined),
                              onPressed: () => {},
                            ),
                          ]),
                      //===============Description/Sources Toggle Switch buttons
                      ToggleSwitch(
                        totalSwitches: 2,
                        initialLabelIndex: selectedIndex,
                        minWidth: 120,
                        minHeight: 30,
                        cornerRadius: 10,
                        radiusStyle: true,
                        fontSize: 16,
                        activeBgColor: const [Color.fromRGBO(81, 231, 168, 1)],
                        activeFgColor: Colors.black,
                        inactiveBgColor: const Color.fromRGBO(207, 240, 207, 1),
                        inactiveFgColor: Colors.black,
                        labels: const ['Description', 'Sources'],
                        customTextStyles: const [
                          TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          ),
                          TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          )
                        ],
                        onToggle: (index) =>
                            setState(() => selectedIndex = index!),
                      ),
                      const Padding(
                          padding: EdgeInsets.all(4.0)), //Space between columns
                      //===============Description/Sources Texts
                      Container(
                        height: 220,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: screens[selectedIndex],
                        ),
                      ),
                      //===============Quiz Button
                      Container(
                        child: MaterialButton(
                          height: 50,
                          minWidth: 200,
                          color: const Color.fromRGBO(81, 231, 168, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "QUIZ",
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () => {
                            toQuiz(int.parse(widget.title)),
                          },
                          splashColor: const Color.fromRGBO(5, 195, 107, 100),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(81, 231, 168, 100),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(81, 231, 168, 45),
                              offset: Offset(
                                -3.0,
                                4.0,
                              ),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ),
              ]),
        ),
      ));
//function for button redirecting quiz page
  void toQuiz(x) {
    var nums, titles;
    if (x == 0) {
      //for finance quiz
      nums = "0";
      titles = "Personal_Finance";
    } else if (x == 1) {
      //for investment quiz
      nums = "1";
      titles = "Investment_and_Portfolio_Management";
    } else if (x == 2) {
      //for behavioral quiz
      nums = "2";
      titles = "Behavioral_Finance";
    } else if (x == 3) {
      // for capital quiz
      nums = "3";
      titles = "Capital_Market";
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Quiz(y: nums, titl: titles)),
    );
  }
}

// Personal Finance Color
// Green              (#53d750)   'Color.fromRGBO(83, 215, 80, 1)'
// NeonGreen          (#51e7a8)   'Color.fromRGBO(81, 231, 168, 1)'
// Lighter NeonGreen  (#cff0cf)   'Color.fromRGBO(207, 240, 207, 1)'