import 'package:flutter/material.dart';

class BottomCardsheet extends StatelessWidget {
  // const BottomCardsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // for (int i = 1; i < 8; i++)
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),

                            spreadRadius: 1,
                            blurRadius: 8,
                            // offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/1.png",
                            // height: 20,
                            // width: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
