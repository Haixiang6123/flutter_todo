import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/TaskCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/images/logo.png')),
                  Container(
                      margin: EdgeInsets.only(
                        bottom: 32.0,
                      )
                  ),
                  TaskCardWidget(title: 'Get Stated', desc: 'Hello',),
                  TaskCardWidget(),
                ]
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF7349FE),
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Image(image: AssetImage('assets/images/add_icon.png'))
                )
              )
            ],
          )
        )
      )
    );
  }
}
