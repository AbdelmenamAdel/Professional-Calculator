import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "";
  String memory = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SelectionArea(
                  child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      memory,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      output,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              )),
              const SizedBox(height: 20),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.orange,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      text: "AC",
                      onTap: () {
                        setState(() {
                          output = "";
                          memory = "";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "←",
                      onTap: () {
                        if (output.isNotEmpty) {
                          setState(() {
                            output = output.substring(0, output.length - 1);
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "%",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                output[output.length - 1] == '.' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += "%";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "÷",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                output[output.length - 1] == '.' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += "/";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      text: "7",
                      onTap: () {
                        setState(() {
                          output += "7";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "8",
                      onTap: () {
                        setState(() {
                          output += "8";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "9",
                      onTap: () {
                        setState(() {
                          output += "9";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "×",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                output[output.length - 1] == '.' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += "*";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      text: "4",
                      onTap: () {
                        setState(() {
                          output += "4";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "5",
                      onTap: () {
                        setState(() {
                          output += "5";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "6",
                      onTap: () {
                        setState(() {
                          output += "6";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "-",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                output[output.length - 1] == '.' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += "-";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      text: "1",
                      onTap: () {
                        setState(() {
                          output += "1";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "2",
                      onTap: () {
                        setState(() {
                          output += "2";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "3",
                      onTap: () {
                        setState(() {
                          output += "3";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: "+",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '.' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += "+";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      text: "0",
                      onTap: () {
                        setState(() {
                          output += "0";
                        });
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      text: ".",
                      onTap: () {
                        if (output.isEmpty ||
                            (output[output.length - 1] == '+' ||
                                (output[output.length - 1] == '-' ||
                                    output[output.length - 1] == '×' ||
                                    output[output.length - 1] == '÷' ||
                                    output[output.length - 1] == '.' ||
                                    output[output.length - 1] == '%'))) {
                        } else {
                          setState(() {
                            output += ".";
                          });
                        }
                      },
                      buttonColor: Colors.black,
                      textColor: Colors.white),
                  button(
                      width: 130,
                      text: "=",
                      onTap: () {
                        setState(() {
                          Parser p = Parser();
                          Expression exp = p.parse(output);
                          memory = '$output =';
                          output = exp
                              .evaluate(EvaluationType.REAL, ContextModel())
                              .toString();
                        });
                      },
                      buttonColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget button({
    double width = 50,
    required String text,
    required Function() onTap,
    required Color buttonColor,
    required Color textColor,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, minimumSize: Size(width, 50)),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 24),
      ),
    );
  }
}
//  Stack(
//               alignment: Alignment.center,
//               children: [
//                 const SizedBox(
//                   height: 250,
//                   width: 250,
//                   // color: Colors.white,
//                 ),
//                 Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.orange,
//                 ),
//                 Container(
//                   height: 250,
//                   width: 50,
//                   color: Colors.purple,
//                 ),
//                 Container(
//                   height: 50,
//                   width: 250,
//                   color: Colors.blue,
//                 ),
//               ],
//             )
