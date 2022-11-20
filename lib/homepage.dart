import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'categori_list.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
   // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.deepOrange));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
              ),
              Expanded(
                  child: ListView(
                    children: [
                      //Start Programme for Image Slider==================================
                      SizedBox(
                        width: double.infinity,
                        height: 200.0,
                        child: Carousel(
                          dotSize: 7,
                          dotIncreasedColor: Colors.deepOrange,
                          images: [
                            ExactAssetImage("assets/images/img_slider3.jpg"),
                            ExactAssetImage("assets/images/img_slider1.jpg"),
                            ExactAssetImage("assets/images/img_slider2.jpg"),
                            ExactAssetImage("assets/images/img_slider4.jpg"),
                          ],
                        ),
                      ),
                      //Start Programme for Image Slider==================================

                      Container(
                        width: double.infinity,
                        height: 45.0,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Positioned(child: Text("Categorias",style: TextStyle(fontWeight: FontWeight.bold),),left: 10.0,),
                            Positioned(
                              child: InkWell(
                                onTap: (){},
                                child: Text("Offers",textScaleFactor: 1.0,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepOrange),)),right:10.0,),
                          ],
                        ),
                      ),
                      CategoriList(),

                    ],
                  )
              ),


            ],
          ),
        )
      ) ,
    );
  }
}
