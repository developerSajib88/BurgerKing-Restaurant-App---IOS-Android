import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  String itemImage;
  String itemTitle;
  int totalOrder;
  String totalPrice;

  CheckOut({Key? key,
    required this.itemImage,
    required this.itemTitle,
    required this.totalOrder,
    required this.totalPrice}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(
            children: [
             Stack(
               alignment: Alignment.center,
               children: [
                 Image.asset("assets/images/food_bg.jpg",width: double.infinity,height: 450.0,fit: BoxFit.cover,),
                 Image.asset(widget.itemImage),
               ],
             ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(widget.itemTitle,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20),),
                    Container(height: 5,),
                    Text("Total Order : "+widget.totalOrder.toString(),style: TextStyle(fontSize: 15),),
                    Text("Total Price : "+widget.totalPrice.toString(),style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
              Divider(),

            ],
          ),
        ),
    );
  }
}
