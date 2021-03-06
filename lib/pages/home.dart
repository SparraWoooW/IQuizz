import 'package:flutter/material.dart';
import '/pages/categorypage.dart';
import 'package:hive_flutter/hive_flutter.dart';

var cat1 = 0, cat2 = 0, cat3 = 0;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final catlevel = Hive.box("Profile_data");
    if (catlevel.isNotEmpty) {
      cat1 = catlevel.get('Personal_FinancenumCorrect');
      cat2 = catlevel.get('Investment_and_Portfolio_ManagementnumCorrect');
      cat3 = catlevel.get('Behavioral_FinancenumCorrect');
    }
    super.initState();
  }

  void toCategoryPage(x) {
    // ignore: prefer_typing_uninitialized_variables
    var numCat;
    if (x == 1) {
      //for finance category
      numCat = "0";
    } else if (x == 2) {
      //for investment category
      numCat = "1";
    } else if (x == 3) {
      //for behavioral category
      numCat = "2";
    } else if (x == 4) {
      // for capital category
      numCat = "3";
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryPage(title: numCat)),
    );
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
                    onTap: () => {toCategoryPage(1)},
                    child: Ink.image(
                      image: const AssetImage('assets/images/personal.png'),
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
                    onTap: () => {
                      if (cat1 > 100)
                        {toCategoryPage(2)}
                      else if (cat1 < 100)
                        {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text('Need to finish Personal Finance first'),
                            backgroundColor: Color.fromARGB(255, 170, 7, 7),
                          )),
                        }
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/investment.png'),
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
                    onTap: () => {
                      if (cat2 > 100)
                        {toCategoryPage(3)}
                      else if (cat2 < 100)
                        {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                                'Need to finish Investment and Portfolio Management first'),
                            backgroundColor: Color.fromARGB(255, 170, 7, 7),
                          )),
                        }
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/behavioral.png'),
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
                    onTap: () => {
                      if (cat3 > 100)
                        {toCategoryPage(4)}
                      else if (cat3 < 100)
                        {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text('Need to finish Behavioral Finance first'),
                            backgroundColor: Color.fromARGB(255, 170, 7, 7),
                          )),
                        }
                    },
                    child: Ink.image(
                      image: const AssetImage('assets/images/capital.png'),
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
