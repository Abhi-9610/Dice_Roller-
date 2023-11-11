import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  AssetImage one = AssetImage("assets/img/1.png");
  AssetImage two = AssetImage("assets/img/2.png");
  AssetImage three = AssetImage("assets/img/3.png");
  AssetImage four = AssetImage("assets/img/4.png");
  AssetImage five = AssetImage("assets/img/5.png");
  AssetImage six = AssetImage("assets/img/6.png");
  late int diceimg;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      diceimg = 1;
    });
  }

  void rollice() {
    int random = (Random().nextInt(6)) + 1;
    setState(() {
      diceimg = random;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            child:
                Image.asset("assets/img/$diceimg.png", height: 200, width: 200),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Center(
            child: ElevatedButton(
              clipBehavior: Clip.none,
              onPressed: () {
                rollice();
              },
              child: Text(
                "Roll dice",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
