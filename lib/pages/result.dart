import 'package:flutter/material.dart';
import 'package:flutter_quizapp/pages/details.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '/pages/quiz.dart';

class Result extends StatefulWidget {
  final List<int> quizResult;
  final String title;
  const Result({Key? key, required this.quizResult, required this.title})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  get correct => widget.quizResult[0];
  get wrong => widget.quizResult[1];
  get skip => widget.quizResult[2];
  get timeTaken =>
      widget.quizResult[3].toString().padLeft(2, '0') +
      ":" +
      widget.quizResult[4].toString().padLeft(2, '0');

  String scorePercent() {
    var percent = (correct / totalQuizQuest) * 100;
    return percent.round().toString() + "%";
  }

  ///////Widget for 3 small boxes//////////////
  Widget cont(String name, int num, Color boxdeco, Color boxshad) {
    return Container(
      //height: 80.0, //80 talaga
      width: 85.0, //85
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 15.0, //20 talaga
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            num.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 25.0, //20 talaga
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: boxdeco,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: boxshad,
            offset: const Offset(
              -3.0,
              4.0,
            ),
            blurRadius: 8.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "RESULT",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Poppins-ExtraBold',
                fontWeight: FontWeight.w800,
              ),
            ),
            leading: Image.asset("assets/images/logo.png"),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Container(
            margin: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        // text
                        const Text(
                          "COMPLETED",
                          style: TextStyle(
                              fontSize: 21,
                              fontFamily: 'Poppins-Bold',
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 21,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      // add dependencies percent_indicator: ^3.4.0]
                      radius: 160.0,
                      lineWidth: 16.0,
                      animation: true,
                      percent: correct / totalQuizQuest,
                      center: Text(
                        scorePercent(), //pedeng score na lang instead of percentage
                        style: const TextStyle(
                            fontFamily: 'Poppins-SemiBold',
                            fontWeight: FontWeight.w600,
                            fontSize: 40.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: const Color.fromRGBO(5, 195, 107, 100),
                      backgroundColor: const Color.fromRGBO(83, 215, 80, 0.3),
                    ),

                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 6),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[]),
                          //Time-Taken (10mins 35 secs)
                          const SizedBox(height: 8),
                          Column(children: <Widget>[
                            Text(
                              "Time Taken: $timeTaken",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                          const SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                //Correct
                                cont(
                                    "Correct",
                                    correct,
                                    const Color.fromRGBO(81, 231, 168, 100),
                                    const Color.fromRGBO(81, 231, 168, 45)),
                                //Wrong
                                cont(
                                    "Wrong",
                                    wrong,
                                    const Color.fromRGBO(243, 83, 86, 100),
                                    const Color.fromRGBO(243, 83, 86, 100)),
                                //Skipped
                                cont(
                                    "Skipped",
                                    skip,
                                    const Color.fromRGBO(240, 243, 60, 100),
                                    const Color.fromRGBO(240, 243, 60, 45)),
                              ]),
                        ]),

                    const SizedBox(height: 10),
                    //back button-details
                    Container(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 30),
                          //back button
                          MaterialButton(
                            height: 37.0,
                            minWidth: 121.0,
                            color: const Color.fromRGBO(5, 195, 107, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              "BACK ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => {
                              Navigator.pop(context),
                              Navigator.pop(context),
                              reset()
                            },
                            splashColor: const Color.fromRGBO(5, 195, 107, 50),
                          ),

                          //details button
                          const Padding(
                            padding: EdgeInsets.all(14.0),
                          ),
                          const SizedBox(height: 30),
                          MaterialButton(
                            height: 37.0,
                            minWidth: 121.0,
                            color: const Color.fromRGBO(5, 195, 107, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              "DETAILS ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Details())),
                            },
                            splashColor: const Color.fromRGBO(5, 195, 107, 50),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      );
}
