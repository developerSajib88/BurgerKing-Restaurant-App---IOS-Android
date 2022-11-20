import 'package:flutter/material.dart';
import 'package:mealmonkey/barbecue_list.dart';
import 'package:mealmonkey/breakfast_list.dart';
import 'package:mealmonkey/burger_list.dart';
import 'package:mealmonkey/pizzas_list.dart';
import 'package:mealmonkey/sandwich_list.dart';
import 'package:show_up_animation/show_up_animation.dart';

class CategoriList extends StatefulWidget {
  const CategoriList({Key? key}) : super(key: key);

  @override
  State<CategoriList> createState() => _CategoriListState();
}

class _CategoriListState extends State<CategoriList> {

  int CategoryIndex = 0;
  List myCategoryView = [PizzaList(),BurgerList(),SandwichList(),BerbecueList(),BreakFastList()];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //Start programme for Food Categories============================
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        CategoryIndex = 0;
                      });
                    },
                    child: Card(
                      color: CategoryIndex==0?Color(0xff572D86):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: CategoryIndex == 0?100.0:75.0,
                        height: CategoryIndex == 0?115.0:100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                  top: 25,
                                  child: Image.asset("assets/images/pizza_ctg.png")),
                             // Container(height: 15.0,),
                              Positioned(
                                  bottom: 20,
                                  child: Text("Pizzas",style: TextStyle(fontWeight: FontWeight.bold,color: CategoryIndex==0?Colors.white:Colors.blueGrey),)),
                            ],

                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        CategoryIndex = 1;
                      });
                    },
                    child: Card(
                      color: CategoryIndex==1?Color(0xff572D86):Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: CategoryIndex == 1?100.0:75.0,
                        height: CategoryIndex == 1?115.0:100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 25,
                                child: Image.asset("assets/images/burger_ctg.png")),
                            // Container(height: 15.0,),
                            Positioned(
                                bottom: 20,
                                child: Text("Burger",style: TextStyle(fontWeight: FontWeight.bold,color: CategoryIndex==1?Colors.white:Colors.blueGrey),)),
                          ],

                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        CategoryIndex = 2;
                      });
                    },
                    child: Card(
                      color: CategoryIndex==2?Color(0xff572D86):Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: CategoryIndex == 2?100.0:75.0,
                        height: CategoryIndex == 2?115.0:100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 25,
                                child: Image.asset("assets/images/sandwich_ctg.png")),
                            // Container(height: 15.0,),
                            Positioned(
                                bottom: 20,
                                child: Text("Sandwich",style: TextStyle(fontWeight: FontWeight.bold,color: CategoryIndex==2?Colors.white:Colors.blueGrey),)),
                          ],

                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        CategoryIndex = 3;
                      });
                    },
                    child: Card(
                      color: CategoryIndex==3?Color(0xff572D86):Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: CategoryIndex == 3?100.0:75.0,
                        height: CategoryIndex == 3?115.0:100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 25,
                                child: Image.asset("assets/images/barbecue_ctg.png")),
                            // Container(height: 15.0,),
                            Positioned(
                                bottom: 20,
                                child: Text("Barbecue",style: TextStyle(fontWeight: FontWeight.bold,color: CategoryIndex==3?Colors.white:Colors.blueGrey),)),
                          ],

                        ),
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        CategoryIndex = 4;
                      });
                    },
                    child: Card(
                      color: CategoryIndex==4?Color(0xff572D86):Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: CategoryIndex == 4?100.0:75.0,
                        height: CategoryIndex == 4?115.0:100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                top: 25,
                                child: Image.asset("assets/images/breakfast_ctg.png")),
                            // Container(height: 15.0,),
                            Positioned(
                                bottom: 20,
                                child: Text("BreakFast",style: TextStyle(fontWeight: FontWeight.bold,color: CategoryIndex==4?Colors.white:Colors.blueGrey),)),
                          ],

                        ),
                      ),

                    ),
                  ),
                  //Start programme for Food Categories============================
                ],
              ),
            ),
            Divider(),
            ShowUpAnimation(
              delayStart: Duration(seconds: 0),
              animationDuration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: 1,
              child: myCategoryView[CategoryIndex],
            ),

          ],
        ),
    );
  }
}



