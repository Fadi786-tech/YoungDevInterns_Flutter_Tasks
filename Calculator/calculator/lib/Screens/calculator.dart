import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            height: 200,
            width: 270,
            child: const Column(
              children: [
                Text(
                  'Calculator',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style:
                      TextStyle(color: Colors.white, fontSize: 30, height: 2),
                  textDirection: TextDirection.rtl,
                  //controller: _valueController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(30),
                    border: OutlineInputBorder(),
                  ),
                  cursorHeight: 60,
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            width: 270,
            height: 350,
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.only(left: 0, top: 0),
                      child: buttonmethod(
                          "AC",
                          const TextStyle(color: Colors.white, fontSize: 25),
                          () {}),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.only(left: 0, top: 0),
                      child: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.backspace,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "%",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "/",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "7",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "8",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "9",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "X",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "4",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "5",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "6",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "_",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "1",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "2",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "3",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "+",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.only(left: 0, top: 0),
                      child: const Icon(
                        Icons.calculate_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            '0',
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            ".",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: buttonmethod(
                            "=",
                            const TextStyle(color: Colors.white, fontSize: 25),
                            () {})),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextButton buttonmethod(String text, TextStyle? textStyle1, Function f) {
    return TextButton(
        onPressed: () {
          f();
        },
        child: Text(
          text,
          style: textStyle1,
        ));
  }
}
