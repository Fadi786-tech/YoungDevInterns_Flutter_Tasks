import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
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
                ),
              ),
            ),
            buildButtonRow(["AC", Icons.backspace, "%", "/"], width, height,
                [clearInput, backspace, () {}, () {}]),
            const SizedBox(height: 8),
            buildButtonRow(["7", "8", "9", "X"], width, height,
                [() {}, () {}, () {}, () {}]),
            const SizedBox(height: 8),
            buildButtonRow(["4", "5", "6", "-"], width, height,
                [() {}, () {}, () {}, () {}]),
            const SizedBox(height: 8),
            buildButtonRow(["1", "2", "3", "+"], width, height,
                [() {}, () {}, () {}, () {}]),
            const SizedBox(height: 8),
            buildButtonRow([Icons.calculate_outlined, "0", ".", "="], width,
                height, [() {}, () {}, () {}, () {}]),
          ],
        ),
      ),
    );
  }

  void clearInput() {
    value.clear();
  }

  void backspace() {
    // Add functionality here for backspace
  }

  Widget buildButtonRow(List<dynamic> items, double width, double height,
      List<Function> actions) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(items.length, (index) {
        return Container(
          width: width * 0.22,
          height: height * 0.1,
          decoration: BoxDecoration(
            color: items[index] == "/" ||
                    items[index] == "X" ||
                    items[index] == "-" ||
                    items[index] == "+" ||
                    items[index] == "="
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
          : Text(item,
              style: const TextStyle(color: Colors.white, fontSize: 25)),
    );
  }
}
