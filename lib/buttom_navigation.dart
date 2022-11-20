
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mealmonkey/cart_item.dart';
import 'package:mealmonkey/homepage.dart';
import 'package:mealmonkey/morepage.dart';
import 'package:mealmonkey/offerpage.dart';
import 'package:mealmonkey/profilepage.dart';
import 'package:mealmonkey/store_list.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({Key? key}) : super(key: key);

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {

  bool HomecolorChange = true;
  late int NavPosition =4;
  List myPage = [StoreList(),OfferPage(),ProfilePage(),MorePage(),Homepage()];


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.deepOrange));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Start programme for floting Action button=====================================
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              HomecolorChange = true;
             NavPosition = 4;
            });
          },
          child: Image.asset("assets/images/home_ic.png",width: 25.0,height: 25.0,),
          backgroundColor: HomecolorChange==false?Colors.grey:Colors.deepOrange,
        ),
        //End programme for floting Action button=====================================

        //Start ButtomNavigation with float=========================================
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [

                  //Start Menu buttom Navigation==============================
                  Expanded(
                      flex: 1,
                      child: Bounce(
                        duration: Duration(milliseconds: 210),
                        onPressed: (){
                          setState(() {
                            NavPosition = 0;
                            HomecolorChange = false;
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/images/add_cart_ic.png",width: 17.0,height: 16.0,
                            fit: BoxFit.fill,
                            color: NavPosition==0?Colors.deepOrange:Colors.grey,
                            ),
                            Container(height: 3,),
                            Text("Store",style: TextStyle(color: NavPosition==0?Colors.deepOrange:Colors.grey,),),
                          ],
                        ),
                      )
                  ),
                  //End Menu buttom Navigation===============================


                  //Start offer buttom Navigation===========================
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Bounce(
                          duration: Duration(milliseconds: 210),
                          onPressed: (){
                            setState(() {
                              NavPosition = 1;
                              HomecolorChange = false;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/images/offer_ic.png",width: 16.0,height: 16.0,
                              color: NavPosition==1?Colors.deepOrange:Colors.grey,
                              ),
                              Container(height: 3,),
                              Text("Offers",style: TextStyle(color:NavPosition==1?Colors.deepOrange:Colors.grey,),),
                            ],
                          ),
                        ),
                      )
                  ),
                  //End offer buttom Navigation================================



                  //Start profile buttom Navigation===========================
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Bounce(
                          duration: Duration(milliseconds: 210),
                          onPressed: (){
                            setState(() {
                              NavPosition = 2;
                              HomecolorChange = false;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/images/men_ic.png",width: 18.0,height: 18.0,
                              color: NavPosition==2?Colors.deepOrange:Colors.grey,
                              ),
                              Container(height: 3,),
                              Text("Profile",style: TextStyle(color: NavPosition==2?Colors.deepOrange:Colors.grey,),),
                            ],
                          ),
                        ),
                      )
                  ),
                  //End profile buttom Navigation==============================



                  //Start More buttom Navigation===============================
                  Expanded(
                      flex: 1,
                      child: Bounce(
                        duration: Duration(milliseconds: 210),
                        onPressed: (){
                        setState(() {
                          HomecolorChange = false;
                          NavPosition = 3;
                        });
                        },
                        child: Column(
                          children: [
                            Image.asset("assets/images/menu_ic.png",width: 16.0,height: 16.0,
                            color: NavPosition==3?Colors.deepOrange:Colors.grey,
                            ),
                            Container(height: 3,),
                            Text("More",style: TextStyle(color: NavPosition==3?Colors.deepOrange:Colors.grey,),),
                          ],
                        ),
                      )
                  ),
                  //End More buttom Navigation=================================


                ],
              ),
            ),
          ),
        ),

        //End ButtomNavigation with floting=====================================

       body: myPage[NavPosition],

      ),
    );
  }
}
