import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mealmonkey/item_view.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({Key? key}) : super(key: key);

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>ItemView(
                      image: "assets/images/hamburgo_burger.png",
                      title: "Hamburgo Burger",
                      description: "",
                      price: "14.50"))
              );
            },
            child: Container(
              width: 340,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("assets/images/hamburgo_burger.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Hamburgo Burger",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$14.50" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                          )
                        ],
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: (){
                          SnackBar snackBar = new SnackBar(
                            content: Text("Added this Item"),
                            action: SnackBarAction(label: "OK",textColor: Colors.deepOrange,onPressed: (){},),
                            duration: Duration(seconds: 3),
                          );


                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 20.0,),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>ItemView(
                      image: "assets/images/hamburguesa_burger.png",
                      title: "Hamburgueasa Burger",
                      description: "",
                      price: "16.00"))
              );
            },
            child: Container(
              width: 340,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("assets/images/hamburguesa_burger.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Hamburgueasa Burger",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$16.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                          )
                        ],
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: (){
                          SnackBar snackBar = new SnackBar(
                            content: Text("Added this Item"),
                            action: SnackBarAction(label: "OK",textColor: Colors.deepOrange,onPressed: (){},),
                            duration: Duration(seconds: 3),
                          );


                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 20.0,),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>ItemView(
                      image: "assets/images/hamburguesa_regulador.png",
                      title: "Hamburguesa Regular",
                      description: "",
                      price: "13.99"))
              );
            },
            child: Container(
              width: 340,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("assets/images/hamburguesa_regulador.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Hamburguesa Regular",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$13.99" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                          )
                        ],
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: (){
                          SnackBar snackBar = new SnackBar(
                            content: Text("Added this Item"),
                            action: SnackBarAction(label: "OK",textColor: Colors.deepOrange,onPressed: (){},),
                            duration: Duration(seconds: 3),
                          );


                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 20.0,),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>ItemView(
                      image: "assets/images/whopper_humburger.png",
                      title: "Whopper HumBurger",
                      description: "",
                      price: "18.00"))
              );
            },
            child: Container(
              width: 340,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("assets/images/whopper_humburger.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Whopper HumBurger",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$18.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                          )
                        ],
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: (){
                          SnackBar snackBar = new SnackBar(
                            content: Text("Added this Item"),
                            action: SnackBarAction(label: "OK",textColor: Colors.deepOrange,onPressed: (){},),
                            duration: Duration(seconds: 3),
                          );


                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 20.0,),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(
                  builder: (context)=>ItemView(
                      image: "assets/images/hamburguesa_burger.png",
                      title: "Hamburgueasa Burger",
                      description: "",
                      price: "16.00"))
              );
            },
            child: Container(
              width: 340,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 10,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset("assets/images/hamburguesa_burger.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Hamburgueasa Burger",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$16.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                          )
                        ],
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: (){
                          SnackBar snackBar = new SnackBar(
                            content: Text("Added this Item"),
                            action: SnackBarAction(label: "OK",textColor: Colors.deepOrange,onPressed: (){},),
                            duration: Duration(seconds: 3),
                          );


                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.deepPurple,
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 20.0,),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
