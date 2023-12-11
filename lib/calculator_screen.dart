import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "";
  String memory = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
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
                  height: 20,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      output == '' ? 0.toString() : output,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            const SizedBox(height: 30),
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
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
                button(
                    text: "←",
                    onTap: () {
                      if (output.isNotEmpty) {
                        setState(() {
                          output = output.substring(0, output.length - 1);
                        });
                      }
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
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
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
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
                          output += "÷";
                        });
                      }
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "8",
                    onTap: () {
                      setState(() {
                        output += "8";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "9",
                    onTap: () {
                      setState(() {
                        output += "9";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "x",
                    onTap: () {
                      if (output.isEmpty ||
                          (output[output.length - 1] == '+' ||
                              output[output.length - 1] == '.' ||
                              (output[output.length - 1] == '-' ||
                                  output[output.length - 1] == 'x' ||
                                  output[output.length - 1] == '÷' ||
                                  output[output.length - 1] == '%'))) {
                      } else {
                        setState(() {
                          output += "x";
                        });
                      }
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "5",
                    onTap: () {
                      setState(() {
                        output += "5";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "6",
                    onTap: () {
                      setState(() {
                        output += "6";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "-",
                    onTap: () {
                      if (output.isEmpty ||
                          (output[output.length - 1] == '+' ||
                              output[output.length - 1] == '.' ||
                              (output[output.length - 1] == '-' ||
                                  output[output.length - 1] == 'x' ||
                                  output[output.length - 1] == '÷' ||
                                  output[output.length - 1] == '%'))) {
                      } else {
                        setState(() {
                          output += "-";
                        });
                      }
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "2",
                    onTap: () {
                      setState(() {
                        output += "2";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "3",
                    onTap: () {
                      setState(() {
                        output += "3";
                      });
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: "+",
                    onTap: () {
                      if (output.isEmpty ||
                          (output[output.length - 1] == '+' ||
                              (output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '.' ||
                                  output[output.length - 1] == 'x' ||
                                  output[output.length - 1] == '÷' ||
                                  output[output.length - 1] == '%'))) {
                      } else {
                        setState(() {
                          output += "+";
                        });
                      }
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    text: ".",
                    onTap: () {
                      if (output.isEmpty ||
                          (output[output.length - 1] == '+' ||
                              (output[output.length - 1] == '-' ||
                                  output[output.length - 1] == 'x' ||
                                  output[output.length - 1] == '÷' ||
                                  output[output.length - 1] == '.' ||
                                  output[output.length - 1] == '%'))) {
                      } else {
                        setState(() {
                          output += ".";
                        });
                      }
                    },
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                button(
                    width: 150,
                    text: "=",
                    onTap: () {
                      output = output.replaceAll('x', '*');
                      output = output.replaceAll('÷', '/');
                      Parser p = Parser();
                      Expression exp = p.parse(output);
                      String res = exp
                          .evaluate(EvaluationType.REAL, ContextModel())
                          .toString();
                      memory = '$output=';
                      memory = memory.replaceAll('*', 'x');
                      memory = memory.replaceAll('/', '÷');
                      setState(() {
                        output = res;
                      });
                    },
                    buttonColor: Colors.orange.shade300,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget button({
    double width = 70,
    required String text,
    required Function() onTap,
    required Color buttonColor,
    required Color textColor,
  }) {
    return AnimatedButton(
      onPressed: onTap,
      color: buttonColor,
      width: width,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
