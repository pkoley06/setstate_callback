import 'package:flutter/material.dart';

import 'my_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "Packages";
  callBack(varTopic){
    setState(() {
      topic = varTopic;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Learning Flutter"
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 70,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "We are learning flutter $topic",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
             MyButtons(topic: "Cubit", callbackFuncion: callBack,),
             MyButtons(topic: "GetX", callbackFuncion: callBack,),
             MyButtons(topic: "Provider", callbackFuncion: callBack,),
            // GestureDetector(
            //   onTap: (){
            //     setState(() {
            //       topic = '"GetX"';
            //     });
            //   },
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 70,
            //     margin: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            //     decoration: BoxDecoration(
            //       color: Colors.lightBlue,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         "GetX",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: (){
            //     setState(() {
            //       topic = '"BLoc"';
            //     });
            //   },
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 70,
            //     margin: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            //     decoration: BoxDecoration(
            //       color: Colors.lightBlue,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         "Bloc",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: (){
            //     setState(() {
            //       topic = '"Provider"';
            //     });
            //   },
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 70,
            //     margin: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            //     decoration: BoxDecoration(
            //       color: Colors.lightBlue,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         "Provider",
            //         style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
