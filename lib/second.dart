import 'package:calculator/buttons.dart';
import 'package:calculator/text.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var answer = "";
  var uservalue = "";

  void pressequal() {
    String finalUserInput = uservalue.replaceAll('X', '*');
    Parser p = Parser();
    Expression expressions = p.parse(finalUserInput);
    ContextModel contextModels = ContextModel();

    double eval = expressions.evaluate(EvaluationType.REAL, contextModels);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            text(
                name: uservalue.toString(),
                styles: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            text(
              name: answer.toString(),
              styles: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Mybutton(
                      val: "AC",
                      col: Colors.grey,
                      call: () {
                        uservalue = '';
                        answer = '';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "+/-",
                      col: Colors.grey,
                      call: () {
                        uservalue += '+/-';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "%",
                      col: Colors.grey,
                      call: () {
                        uservalue += '%';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "/",
                      col: Colors.deepOrange,
                      call: () {
                        uservalue += '/';
                        setState(() {});
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      val: "7",
                      col: Colors.grey,
                      call: () {
                        uservalue += '7';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "8",
                      col: Colors.grey,
                      call: () {
                        uservalue += '8';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "9",
                      col: Colors.grey,
                      call: () {
                        uservalue += '9';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "X",
                      col: Colors.deepOrange,
                      call: () {
                        uservalue += 'X';
                        setState(() {});
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      val: "4",
                      col: Colors.grey,
                      call: () {
                        uservalue += '4';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "5",
                      col: Colors.grey,
                      call: () {
                        uservalue += '5';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "6",
                      col: Colors.grey,
                      call: () {
                        uservalue += '6';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "-",
                      col: Colors.deepOrange,
                      call: () {
                        uservalue += '-';
                        setState(() {});
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      val: "1",
                      col: Colors.grey,
                      call: () {
                        uservalue += '1';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "2",
                      col: Colors.grey,
                      call: () {
                        uservalue += '2';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "3",
                      col: Colors.grey,
                      call: () {
                        uservalue += '3';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "+",
                      col: Colors.deepOrange,
                      call: () {
                        uservalue += '+';
                        setState(() {});
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Mybutton(
                      val: "0",
                      col: Colors.grey,
                      call: () {
                        uservalue += '0';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: ".",
                      col: Colors.grey,
                      call: () {
                        uservalue += '.';
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "DEL",
                      col: Colors.grey,
                      call: () {
                        uservalue =
                            uservalue.substring(0, uservalue.length - 1);
                        setState(() {});
                      },
                    ),
                    Mybutton(
                      val: "=",
                      col: Colors.deepOrange,
                      call: () {
                        pressequal();
                        setState(() {});
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
