import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mealmonkey/item_view.dart';

class BreakFastList extends StatefulWidget {
  const BreakFastList({Key? key}) : super(key: key);

  @override
  State<BreakFastList> createState() => _BreakFastListState();
}

class _BreakFastListState extends State<BreakFastList> {
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
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/desayuno_completo.png",
                      title: "Desayuno Completo", description: "",
                      price: "13.33"))
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
                    child: Image.asset("assets/images/desayuno_completo.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Desayuno Completo",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$13.33" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/tortilla_breakfast.png",
                      title: "Tortilla Breakfast", description: "",
                      price: "9.00"))
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
                    child: Image.asset("assets/images/tortilla_breakfast.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Tortilla Breakfast",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$9.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/desayuno_breakfast.png",
                      title: "Desayuno Breakfast", description: "",
                      price: "9.99"))
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
                    child: Image.asset("assets/images/desayuno_breakfast.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Desayuno Breakfast",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$9.99" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/salchichas_breakfast.png",
                      title: "Salchichas Breakfast", description: "",
                      price: "10.33"))
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
                    child: Image.asset("assets/images/salchichas_breakfast.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Salchichas Breakfast",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$10.33" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/salchicha_breakfast.png",
                      title: "Salchicha Breakfast", description: "",
                      price: "21.00"))
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
                    child: Image.asset("assets/images/salchicha_breakfast.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Salchicha Breakfast",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$21.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
