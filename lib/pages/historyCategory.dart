import 'package:flutter/material.dart';
import 'package:flutter_quizapp/pages/history.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

var cat1 = 0, cat2 = 0, cat3 = 0;

class HistoryPages extends StatefulWidget {
  const HistoryPages({Key? key}) : super(key: key);

  @override
  State<HistoryPages> createState() => _HistoryPagesState();
}

class _HistoryPagesState extends State<HistoryPages> {
  @override
  void initState() {
    final catlevel = Hive.box("Profile_data");
    if (catlevel.isNotEmpty) {
      cat1 = catlevel.get('Personal_FinancenumCorrect');
      cat2 = catlevel.get('Investment_and_Portfolio_ManagementnumCorrect');
      cat3 = catlevel.get('Behavioral_FinancenumCorrect');
    }
    setState(() {
      if (cat1 >= 100) {
        cat1 = 100;
      }
      if (cat2 >= 100) {
        cat2 = 100;
      }
      if (cat3 >= 100) {
        cat3 = 100;
      }
    });
    super.initState();
  }

  //Category history builder
  Widget History(double progress, String title, int attempts,
      BuildContext context, String databaseName, Function() func) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 7.0,
                    animation: true,
                    percent: progress,
                    center: const Icon(Icons.lock_open_rounded, size: 30),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: const Color.fromRGBO(5, 195, 107, 100),
                    backgroundColor: const Color.fromRGBO(83, 215, 80, 0.3),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.3, 1),
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'Poppins-SemiBold',
                              height: 0.9,
                            ),
                          ),
                          TextSpan(
                            text: '\nQuizzes Attempted: $attempts',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment(1.1, 1),
                child: SizedBox(
                  height: 60,
                  child: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(5, 195, 107, 100), size: 45),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color.fromRGBO(5, 195, 107, 50),
              width: 3,
            ),
          ),
        ),
        onTap: func,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'HISTORY',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-ExtraBold',
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(26.0, 10.0, 26.0, 35),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Choose a topic to view history.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Personal Finance
                History(
                    100 / 100,
                    'Personal Finance',
                    Hive.box("Personal_Finance").length,
                    context,
                    'Personal_Finance', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HistoryPage(
                              category: "Personal_Finance",
                            )),
                  );
                }),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows
                //============Investment and Portfolio Management
                History(
                    cat1 / 100,
                    'Investment and Portfolio Management',
                    Hive.box("Investment_and_Portfolio_Management").length,
                    context,
                    'Investment_and_Portfolio_Management', () {
                  if (cat1 >= 100) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryPage(
                                category: "Investment_and_Portfolio_Management",
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('This category is locked'),
                      backgroundColor: Color.fromARGB(255, 170, 7, 7),
                    ));
                  }
                }),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Capital Markets
                History(
                    cat2 / 100,
                    'Capital Markets',
                    Hive.box("Capital_Market").length,
                    context,
                    'Capital_Market', () {
                  if (cat2 >= 100) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryPage(
                                category: "Investment_and_Portfolio_Management",
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('This category is locked'),
                      backgroundColor: Color.fromARGB(255, 170, 7, 7),
                    ));
                  }
                }),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows

                //============Behavioral Finance
                History(
                    cat3 / 100,
                    'Behavioral Finance',
                    Hive.box("Behavioral_Finance").length,
                    context,
                    'Behavioral_Finance', () {
                  if (cat3 >= 100) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryPage(
                                category: "Investment_and_Portfolio_Management",
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('This category is locked'),
                      backgroundColor: Color.fromARGB(255, 170, 7, 7),
                    ));
                  }
                }),
                const Padding(
                    padding: EdgeInsets.all(6.0)), //Space between rows
              ],
            ),
          ),
        ),
      );
}
