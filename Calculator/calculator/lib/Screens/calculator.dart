import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController value = TextEditingController();
  String expression = '';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calculator")),
      ),
      body: Container(
        color: Colors.black,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Calculator',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(
                      color: Colors.white, fontSize: 30, height: 2),
                  textDirection: TextDirection.rtl,
                  controller: value,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(30),
                    border: OutlineInputBorder(),
                  ),
                  cursorHeight: 60,
                  readOnly: true,
                ),
              ),
            ),
            buildButtonRow(["AC", Icons.backspace, "%", "/"], width, height,
                [clearInput, backspace, percentage, () => inputOperator('/')]),
            SizedBox(height: 8),
            buildButtonRow(["7", "8", "9", "X"], width, height,
                [() => inputNumber("7"), () => inputNumber("8"), () => inputNumber("9"), () => inputOperator("X")]),
            SizedBox(height: 8),
            buildButtonRow(["4", "5", "6", "-"], width, height,
                [() => inputNumber("4"), () => inputNumber("5"), () => inputNumber("6"), () => inputOperator("-")]),
            SizedBox(height: 8),
            buildButtonRow(["1", "2", "3", "+"], width, height,
                [() => inputNumber("1"), () => inputNumber("2"), () => inputNumber("3"), () => inputOperator("+")]),
            SizedBox(height: 8),
            buildButtonRow(
                [Icons.calculate_outlined, "0", ".", "="], width, height,
                [() {}, () => inputNumber("0"), () => inputNumber("."), calculateResult]),
          ],
        ),
      ),
    );
  }

  void inputNumber(String number) {
    setState(() {
      expression += number;
      value.text = expression;
    });
  }

  void inputOperator(String operator) {
    if (expression.isNotEmpty && "+-X/".contains(expression[expression.length - 1])) return;
    setState(() {
      expression += operator;
      value.text = expression;
    });
  }

  void clearInput() {
    setState(() {
      expression = '';
      value.clear();
    });
  }

  void backspace() {
    if (expression.isNotEmpty) {
      setState(() {
        expression = expression.substring(0, expression.length - 1);
        value.text = expression;
      });
    }
  }

  void percentage() {
    if (expression.isNotEmpty) {
      double current = double.parse(expression) / 100;
      setState(() {
        expression = current.toString();
        value.text = expression;
      });
    }
  }

  void calculateResult() {
    try {
      String finalExpression = expression.replaceAll("X", "*");
      final result = _evaluateExpression(finalExpression);
      setState(() {
        expression = result.toString();
        value.text = expression;
      });
    } catch (e) {
      setState(() {
        value.text = "Error";
      });
    }
  }

  double _evaluateExpression(String expression) {
    List<String> tokens = expression.split(RegExp(r'([+\-*/])')).map((s) => s.trim()).toList();
    List<String> operators = RegExp(r'([+\-*/])').allMatches(expression).map((e) => e.group(0)!).toList();

    if (tokens.isEmpty || tokens.length != operators.length + 1) {
      throw FormatException("Invalid Expression");
    }

    double result = double.parse(tokens[0]);
    for (int i = 0; i < operators.length; i++) {
      double nextValue = double.parse(tokens[i + 1]);
      switch (operators[i]) {
        case '+':
          result += nextValue;
          break;
        case '-':
          result -= nextValue;
          break;
        case '*':
          result *= nextValue;
          break;
        case '/':
          if (nextValue == 0) throw Exception("Division by zero");
          result /= nextValue;
          break;
      }
    }
    return result;
  }

  Widget buildButtonRow(List<dynamic> items, double width, double height, List<Function> actions) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(items.length, (index) {
        return Container(
          width: width * 0.22,
          height: height * 0.1,
          decoration: BoxDecoration(
            color: items[index] == "/" || items[index] == "X" || items[index] == "-" || items[index] == "+" || items[index] == "="
                ? Colors.orange
                : Colors.grey.shade800,
            shape: BoxShape.circle,
          ),
          child: buttonWidget(items[index], actions[index]),
        );
      }),
    );
  }

  Widget buttonWidget(dynamic item, Function onPressed) {
    return TextButton(
      onPressed: () => onPressed(),
      child: item is IconData
          ? Icon(item, color: Colors.white)
          : Text(item, style: const TextStyle(color: Colors.white, fontSize: 25)),
    );
  }
}
