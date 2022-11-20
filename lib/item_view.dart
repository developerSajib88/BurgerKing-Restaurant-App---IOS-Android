
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';




class ItemView extends StatefulWidget {
  late String image;
  late String title;
  late String description;
  late String price;

  ItemView(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  int loveColor = 1;
  int itemCont = 1;
  double value = 3.5;
  late String totalPrice = widget.price;
  late double myPrice;


  @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: 900.0,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //Start programme for ItemView===============================================
                  Positioned(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          child: Image.asset(
                            "assets/images/food_bg.jpg",
                            width: double.infinity,
                            height: 300.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          child: Image.asset(
                            widget.image,
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //End programme for ItemView===============================================

                  //Start This Area for Price,Title,Ratins,Description,Total price and Add cart=========================================
                  Positioned(
                      top: 260.0,
                      child: Container(
                        width: 360,
                        height: 650.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45.0),
                              topLeft: Radius.circular(45.0)),
                          color: Colors.white,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                               top: 40,
                                child: Column(
                                  children: [

                                    //Start programme for Item per price=================================
                                    Text("\$"+widget.price,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange)),
                                    Container(height: 3.0),
                                    //End programme for Item per price=================================

                                    //Start programme for Item Title=================================
                                    Text(
                                      widget.title,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff4A4B4D),
                                      ),
                                      //Start programme for view price=================================


                                    ),
                                    //End programme for Item Title=================================

                                    //Star programme for user Rating==================================
                                    Container(height: 2.0),
                                    RatingStars(
                                      value: value,
                                      onValueChanged: (v) {
                                        setState(() {
                                          value = v;
                                        });
                                      },
                                      starBuilder: (index, color) => Icon(
                                        Icons.star_rounded,
                                        color: color,
                                      ),
                                      starCount: 5,
                                      starSize: 20,
                                      valueLabelColor: const Color(0xff9b9b9b),
                                      valueLabelTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 12.0),
                                      valueLabelRadius: 10,
                                      maxValue: 5,
                                      starSpacing: 0,
                                      maxValueVisibility: true,
                                      valueLabelVisibility: true,
                                      animationDuration: Duration(milliseconds: 1000),
                                      valueLabelPadding: const EdgeInsets.symmetric(vertical: 2, horizontal:8),
                                      valueLabelMargin: const EdgeInsets.only(right: 5),
                                      starOffColor: const Color(0xffe7e8ea),
                                      starColor: Colors.deepOrange,
                                    ),
                                    Container(height: 5.0),
                                    //End programme for user Rating==================================

                                    //Star programme for Item Description=================================================
                                    SizedBox(
                                      width: 350.0,
                                      child: Text(
                                          "There are many variations of passages of Lorem Ipsum available,"
                                              "but the majority have suffered alteration in some form, by injected humour, "
                                              "or randomised words which don't look even slightly believable. If you are going to "
                                              "use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden "
                                              "in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined "
                                              "chunks as necessary, making this the first true generator on the Internet. It uses a dictionary "
                                              "of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem"
                                              " Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition,"
                                              " injected humour, or non-characteristic words etc.",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(height: 5.0),
                                    //End programme for user Rating======================================================

                                    //Start Programme for How much you Order=====================================================
                                    Column(
                                        children: [
                                          Text("How much you want to order?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xff4A4B4D)),),
                                          Row(
                                            children: [
                                              Bounce(
                                                duration: Duration(milliseconds: 210),
                                                onPressed: (){
                                                 setState(() {
                                                   if(itemCont>1){
                                                     itemCont--;
                                                   }
                                                   myPrice = double.parse(widget.price)*itemCont;
                                                   totalPrice = myPrice.toString();

                                                 });
                                                },
                                                child: Image.asset("assets/images/substruction_sign.png",width: 60,height: 50,),
                                              ),
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset("assets/images/count_bg.png",width: 60,height: 40,fit: BoxFit.fill,),
                                                  Text(itemCont.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                              Bounce(
                                                duration: Duration(milliseconds: 210),
                                                onPressed: (){
                                                  setState(() {
                                                    itemCont++;
                                                    myPrice = double.parse(widget.price)*itemCont;
                                                    totalPrice = myPrice.toString();
                                                  });
                                                },
                                                child: Image.asset("assets/images/addition_sign.png",width: 60,height: 50,),
                                              ),


                                            ],
                                          )
                                        ],
                                      ),
                                    Container(height: 10.0),
                                    //End Programme for How much you Order=====================================================

                                    //This Area for count Total price and Add to Cart=================================================
                                    Container(
                                      width: 360.0,
                                      height: 200.0,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              child: Container(
                                                width: 100.0,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),bottomRight: Radius.circular(40.0)),
                                                  color: Colors.deepOrange,
                                                ),
                                              )
                                          ),
                                          Positioned(
                                            top: 35.0,
                                            left: 35.0,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                clipBehavior: Clip.none,
                                                children:[
                                                  Container(
                                                  width: 280.0,
                                                  height: 130.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xffffffff),
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(40.0),
                                                      topRight: Radius.circular(10.0),
                                                      bottomRight: Radius.circular(10.0),
                                                      bottomLeft: Radius.circular(40.0),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(0x29000000),
                                                        offset: Offset(0, 3),
                                                        blurRadius: 12,
                                                      ),
                                                    ],
                                                  ),

                                                ),

                                                  //Start This is for count Total price and Add to Cart button=========
                                                  Positioned(
                                                      child: Column(
                                                        children: [
                                                          Text("Total Price",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12 ),),
                                                          Text("\$$totalPrice",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xff4A4B4D))),
                                                          Container(height: 5.0),
                                                          Bounce(
                                                            duration: Duration(milliseconds: 210),
                                                            //Start programme for bottomsheet================================================================
                                                            onPressed:(){
                                                              showModalBottomSheet(
                                                                enableDrag: false,
                                                                  isDismissible: false,
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0)),
                                                                  ),
                                                                  context: context,
                                                                  builder: (context){
                                                                return Container(
                                                                  width: double.infinity,
                                                                  height:700.0,
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        alignment:Alignment.centerRight,
                                                                        child: IconButton(onPressed: (){Navigator.pop(context);},
                                                                            icon: Icon(Icons.cancel)),
                                                                      ),
                                                                      Image.asset("assets/images/ordersucessfull.png",width: 155.0,height: 150.0,),
                                                                      Text("Thank You!",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff4A4B4D),fontSize: 26),),
                                                                      Text("for your order",style: TextStyle(color: Color(0xff4A4B4D),fontWeight: FontWeight.bold),),
                                                                      Container(height: 5.0,),
                                                                      SizedBox(
                                                                        width: 300.0,
                                                                          child: Text("Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order",
                                                                            textAlign: TextAlign.center,)),

                                                                      Container(height: 10.0,),
                                                                      Container(
                                                                        width: 200.0,
                                                                        height: 40.0,
                                                                        alignment:Alignment.center,
                                                                        decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                                                          color: Colors.deepOrange,
                                                                        ),
                                                                        child: Text("Order Sucessfull",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                                                      )



                                                                    ],
                                                                  ),
                                                                );
                                                              });

                                                             // Navigator.push(context, CupertinoPageRoute(builder: (context)=>CheckOut(itemImage: widget.image, itemTitle: widget.title, totalOrder: itemCont, totalPrice: totalPrice)));

                                                              },
                                                            //End profgramme for bottomsheet=================================================================
                                                            child: Stack(
                                                              alignment: Alignment.center,
                                                              children:[
                                                                Container(
                                                                  width: 160.0,
                                                                  height: 35.0,
                                                                  decoration: BoxDecoration(
                                                                    color: const Color(0xfffc6011),
                                                                    borderRadius: BorderRadius.circular(28.0),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                    left: 20.0,
                                                                    child: Icon(Icons.shopping_cart_sharp,color: Colors.white,size: 17.0,)
                                                                ),
                                                                Positioned(
                                                                    left: 50.0,
                                                                    child: Text("Order Now",style: TextStyle(color: Colors.white),)
                                                                )

                                                              ]
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                  ),
                                                  //End This is for count Total price and add to cart button==============

                                                  Positioned(
                                                    right: -25,
                                                      child: Stack(
                                                          alignment: Alignment.center,
                                                            children: [
                                                              Positioned(
                                                                child: Container(
                                                                  width:55.0,
                                                                  height:55.0,
                                                                  decoration: BoxDecoration(
                                                                    color: const Color(0xffffffff),
                                                                    borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: const Color(0x29000000),
                                                                        offset: Offset(0, 3),
                                                                        blurRadius: 7,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(child: Icon(Icons.shopping_cart_sharp,color: Colors.deepOrange,))
                                                            ]
                                                        ),

                                                  )
                                                ]
                                              )
                                          )
                                        ],
                                      ),
                                    )
                                    //End This Area for count Total price and Add to Cart=================================================
                                  ],
                                )),

                          ],
                        ),
                      )),
                  //Start This Area for Price,Title,Ratins,Description,Total price and Add cart=========================================

                  // Start programme for favourite product loved=============================================
                  Positioned(
                      right: 30.0,
                      top: 230.0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/love_bg.png",
                            height: 70.0,
                            width: 70.0,
                            fit: BoxFit.fill,
                          ),
                          Bounce(
                            duration: Duration(milliseconds: 210),
                            onPressed: () {
                              setState(() {
                                loveColor++;
                              });
                            },
                            child: loveColor % 2 == 0
                                ? Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                      Icons.favorite,
                                      color: Colors.deepOrange,
                                      size: 30,
                                    ),
                                )
                                : Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                          )
                        ],
                      )),
                  // Start programme for favourite product loved=============================================
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
