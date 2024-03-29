import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:tez_tabuu/widgets/BottomCardsheet.dart';
import 'package:tez_tabuu/widgets/ItemsWidget.dart';
import 'package:tez_tabuu/widgets/PopularItemsWidgets.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../widgets/CatigoriesWidget.dart';

class SpleshCreen extends StatelessWidget {
  const SpleshCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 15,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 1,
                          )
                        ]),
                    child: Badge(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(5),
                      // textStyle: Colors.black,
                      child: InkWell(
                        onTap: () {
                          showSlidingBottomSheet(context, builder: (context) {
                            return SlidingSheetDialog(
                              elevation: 4,
                              cornerRadius: 8,
                              builder: (context, state) {
                                return BottomCardsheet();
                              },
                            );
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Column(
                children: [
                  Text(
                    'welcom',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'what do you want by?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search hear.....",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.filter_list)
                ],
              ),
            ),
            // продукт виджети
            Container(
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CategoriesWidget(),
                  const PopularItemsWidget(),
                  ItemsWidget(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
