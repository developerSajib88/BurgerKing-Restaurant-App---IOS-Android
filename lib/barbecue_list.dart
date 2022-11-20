import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mealmonkey/item_view.dart';

class BerbecueList extends StatefulWidget {
  const BerbecueList({Key? key}) : super(key: key);

  @override
  State<BerbecueList> createState() => _BerbecueListState();
}

class _BerbecueListState extends State<BerbecueList> {
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
                      image: "assets/images/cocina_barbecue.png",
                      title: "Chocina Barbecue", description: "",
                      price: "18.50"))
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
                    child: Image.asset("assets/images/cocina_barbecue.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Chocina Barbecue",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$18.50" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
                      image: "assets/images/solomillo_barbecue.png",
                      title: "Solomillo Barbecue", description: "",
                      price: "19.99"))
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
                    child: Image.asset("assets/images/solomillo_barbecue.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Solomillo Barbecue",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$19.99" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
                      image: "assets/images/perro_caliente.png",
                      title: "Perro Caliente Barbecue", description: "",
                      price: "22.00"))
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
                    child: Image.asset("assets/images/perro_caliente.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Perro Caliente Barbecue",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$22.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
                      image: "assets/images/salchichas_kebab.png",
                      title: "Salchichas Kebab", description: "",
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
                    child: Image.asset("assets/images/salchichas_kebab.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Salchichas Kebab",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
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
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Bounce(
            duration: Duration(milliseconds: 210),
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>
                  ItemView(
                      image: "assets/images/barbacoa_Kebab_Chuan.png",
                      title: "Barbacoa Kebab Chuan", description: "",
                      price: "23.00"))
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
                    child: Image.asset("assets/images/barbacoa_Kebab_Chuan.png"),

                  ),
                  Positioned(
                      left: 120,
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200.0,
                              child: Text("Barbacoa Kebab Chuan",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                          SizedBox(
                              width: 200.0,
                              child: Text("Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",maxLines: 2,textAlign: TextAlign.start)),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                width: 200.0,
                                child: Text("\$23.00" ,maxLines: 2,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
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
