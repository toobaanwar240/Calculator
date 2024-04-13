// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator_app/Calculator.dart';
import 'package:calculator_app/Containers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Calculator(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<Calculator>(builder: (context, provider, _) {
      return Scaffold(
          backgroundColor: Color.fromARGB(245, 70, 66, 66),
          appBar: AppBar(
            title: Center(
              child: Text(
                "Calculator",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            backgroundColor: Color.fromARGB(245, 80, 76, 76),
          ),
          body: Column(
            children: [
              CustomTextField(controller: provider.compController),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Color.fromARGB(245, 57, 55, 55),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Containers(
                            title: "C",
                            colors: Color.fromARGB(245, 91, 87, 87),
                            title2: "+/-",
                            colors2: Color.fromARGB(245, 91, 87, 87),
                            title3: "%",
                            colors3: Color.fromARGB(245, 91, 87, 87),
                            title4: "DEL",
                            colors4: Color.fromARGB(245, 91, 87, 87)),
                      ),
                      Expanded(
                        flex: 3,
                        child: Containers(
                            title: "7",
                            colors: Color.fromARGB(245, 70, 66, 66),
                            title2: "8",
                            colors2: Color.fromARGB(245, 70, 66, 66),
                            title3: "9",
                            colors3: Color.fromARGB(245, 70, 66, 66),
                            title4: "/",
                            colors4: Color.fromARGB(245, 91, 87, 87)),
                      ),
                      Expanded(
                        flex: 3,
                        child: Containers(
                            title: "4",
                            colors: Color.fromARGB(245, 70, 66, 66),
                            title2: "5",
                            colors2: Color.fromARGB(245, 70, 66, 66),
                            title3: "6",
                            colors3: Color.fromARGB(245, 70, 66, 66),
                            title4: "x",
                            colors4: Color.fromARGB(245, 91, 87, 87)),
                      ),
                      Expanded(
                        flex: 3,
                        child: Containers(
                            title: "1",
                            colors: Color.fromARGB(245, 70, 66, 66),
                            title2: "2",
                            colors2: Color.fromARGB(245, 70, 66, 66),
                            title3: "3",
                            colors3: Color.fromARGB(245, 70, 66, 66),
                            title4: "+",
                            colors4: Color.fromARGB(245, 91, 87, 87)),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(245, 70, 66, 66),
                                child: InkWell(
                                  onTap: () {
                                    Provider.of<Calculator>(context,
                                            listen: false)
                                        .setValue("-");
                                  },
                                  child: (CircleAvatar(
                                    radius: 40,
                                    backgroundColor:
                                        Color.fromARGB(245, 70, 66, 66),
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(245, 70, 66, 66),
                                child: InkWell(
                                  onTap: () {
                                    Provider.of<Calculator>(context,
                                            listen: false)
                                        .setValue("0");
                                  },
                                  child: (CircleAvatar(
                                    radius: 40,
                                    backgroundColor:
                                        Color.fromARGB(245, 70, 66, 66),
                                    child: Center(
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(245, 70, 66, 66),
                                child: InkWell(
                                  onTap: () {
                                    Provider.of<Calculator>(context,
                                            listen: false)
                                        .setValue(".");
                                  },
                                  child: (CircleAvatar(
                                    radius: 40,
                                    backgroundColor:
                                        Color.fromARGB(245, 70, 66, 66),
                                    child: Center(
                                      child: Text(
                                        ".",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(40),
                                color: const Color.fromARGB(255, 233, 30, 54),
                                child: InkWell(
                                  onTap: () {
                                    Provider.of<Calculator>(context,
                                            listen: false)
                                        .setValue("=");
                                  },
                                  child: (CircleAvatar(
                                    radius: 40,
                                    backgroundColor:
                                        const Color.fromARGB(255, 233, 30, 54),
                                    child: Center(
                                      child: Text(
                                        "=",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ));
    });
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  // Method to clear the text field
  void clearTextField() {
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none, fillColor: Colors.black),
            style: TextStyle(fontSize: 50, color: Colors.white),
            //readOnly: true,
            autofocus: true,
            showCursor: true,
          ),
        ),
      ),
    );
  }
}
