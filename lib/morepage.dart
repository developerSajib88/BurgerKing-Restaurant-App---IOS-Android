
import 'dart:collection';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:mealmonkey/emptypage.dart';
import 'package:mealmonkey/item_view.dart';
import 'package:show_up_animation/show_up_animation.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {

  late int loveColor = 1;
  late int getIndex = myList.length+1;
  late List<HashMap<String,String>> myList;
  late List<HashMap<String,String>> myData;
  TextEditingController textarea = TextEditingController();


  @override
  void initState() {
   // TODO: implement initState
   listData();//This method create for List of Data ==================================
   myData = myList;
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 9,
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:SizedBox(
                          height: 40.0,
                          child: TextField(
                            controller:textarea,
                            onChanged: (String getString){
                               this.searchList(getString);
                               },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Search your loving food",
                                hintMaxLines: 1,
                                contentPadding: EdgeInsets.all(2.5),
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Bounce(
                                  duration: Duration(milliseconds: 100),
                                  onPressed: (){
                                    textarea.clear();
                                    setState(() {
                                      this.myData = this.myList;
                                    });
                                    },
                                  child: Icon(Icons.clear_rounded,color: Colors.grey,),
                                )
                            ),

                          ),
                        ),

                      )),

                ],
              ),
              Divider(),

              // Start programme for Listview.builder modelview=======================================
              myData.length==0?Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Empty(),
              ): Expanded(
                  child: ListView.builder(
                      itemCount: myData.length,
                      itemBuilder: (context,index){
                        return ShowUpAnimation(
                          delayStart: Duration(milliseconds: 300),
                          animationDuration: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          direction: Direction.horizontal,
                          offset: 2,
                          child: Bounce(
                        duration: Duration(milliseconds: 210),
                        onPressed: (){
                          String sendImage = myData[index]["image"]!;
                          String sendTitle = myData[index]["title"]!;
                          String sendDescription = myData[index]["desCr"]!;
                          String sendPrice = myData[index]["price"]!;
                           Navigator.push(context, CupertinoPageRoute(builder: (context)=>ItemView(
                               image: sendImage, title: sendTitle, description: sendDescription, price: sendPrice)));
                        },
                        child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
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
                                        child: Image.asset(myData[index]["image"]!),

                                      ),
                                      Positioned(
                                          left: 120,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  width: 200.0,
                                                  child: Text(myData[index]["title"]!,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.deepPurple, fontSize: 15),textAlign: TextAlign.start,)),
                                              SizedBox(
                                                  width: 200.0,
                                                  child: Text(myData[index]["desCr"]!,maxLines: 2,textAlign: TextAlign.start)),
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: SizedBox(
                                                    width: 200.0,
                                                    child: Text("\$"+myData[index]["price"]!,textAlign: TextAlign.start,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: Colors.deepOrange ),)),
                                              )
                                            ],
                                          )),
                                      Positioned(
                                        top: 10.0,
                                          right: 10.0,
                                          child: Bounce(
                                            duration: Duration(milliseconds: 210),
                                            onPressed: (){
                                              setState(() {
                                                getIndex = index;
                                                loveColor++;
                                              });
                                            },
                                            child:loveColor%2==0 && getIndex == index?Icon(Icons.favorite,color: Colors.deepOrange):Icon(Icons.favorite_outline),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ),


                          ),
                        );
                      })
              ),



              // Start programme for Listview.builder modelview=======================================
            ],
          ),
        ),
      ),
    );


  }


 //Start Programme for ItemList===============================================
  void listData(){

    //Start programme for Storing Data in List====================================
    myList = [];
    HashMap<String,String> hashMap;

    hashMap = new HashMap();
    hashMap["image"] = "assets/images/chicago_pizza.png";
    hashMap["title"] = "Chicago Pizza";
    hashMap["price"] = "18.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);

    hashMap = new HashMap();
    hashMap["image"] = "assets/images/hamburguesa_burger.png";
    hashMap["title"] = "Hamburgueasa Burger";
    hashMap["price"] = "18.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);

    hashMap = new HashMap();
    hashMap["image"] = "assets/images/cheese_sandwich.png";
    hashMap["title"] = "Cheese Samdwich";
    hashMap["price"] = "12.50";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/cocina_barbecue.png";
    hashMap["title"] = "Chochina Barbecue";
    hashMap["price"] = "18.50";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);

    hashMap = new HashMap();
    hashMap["image"] = "assets/images/desayuno_completo.png";
    hashMap["title"] = "Desayuno Completo";
    hashMap["price"] = "13.33";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/pizza_veloper.png";
    hashMap["title"] = "Pizza Veloper";
    hashMap["price"] = "15.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/hamburgo_burger.png";
    hashMap["title"] = "Hamburgo Burger";
    hashMap["price"] = "14.50";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/hamburguesa_vegetariana.png";
    hashMap["title"] = "Hamburguesa Begetariana";
    hashMap["price"] = "13.65";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/solomillo_barbecue.png";
    hashMap["title"] = "Solomillo Barbecue";
    hashMap["price"] = "19.99";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/tortilla_breakfast.png";
    hashMap["title"] = "Tortilla Breakfast";
    hashMap["price"] = "9.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/dominios_pizza.png";
    hashMap["title"] = "Dominios Pizza";
    hashMap["price"] = "10.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/hamburguesa_regulador.png";
    hashMap["title"] = "Hamburguesa Regular";
    hashMap["price"] = "13.99";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/burrito_mexicano.png";
    hashMap["title"] = "Burrito Mexicano";
    hashMap["price"] = "15.80";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/perro_caliente.png";
    hashMap["title"] = "Perro Caliente";
    hashMap["price"] = "22.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/desayuno_breakfast.png";
    hashMap["title"] = "Desayuno Breakfast";
    hashMap["price"] = "9.99";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/californiastyle_pizza.png";
    hashMap["title"] = "California Style Pizza";
    hashMap["price"] = "19.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/whopper_humburger.png";
    hashMap["title"] = "Whopper Humburger";
    hashMap["price"] = "18.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/envuelva_sandwich.png";
    hashMap["title"] = "Enuvuelva Sandwich";
    hashMap["price"] = "16.30";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/salchichas_kebab.png";
    hashMap["title"] = "Salchichas Kebab";
    hashMap["price"] = "21.10";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/salchichas_breakfast.png";
    hashMap["title"] = "Salchichas Breakfast";
    hashMap["price"] = "10.33";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);



    hashMap = new HashMap();
    hashMap["image"] = "assets/images/neapolitan_pizza.png";
    hashMap["title"] = "Neapolitan Pizza";
    hashMap["price"] = "22.60";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);

    hashMap = new HashMap();
    hashMap["image"] = "assets/images/hamburguesa_burger.png";
    hashMap["title"] = "Hamburgueasa Burger";
    hashMap["price"] = "16.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);



    hashMap = new HashMap();
    hashMap["image"] = "assets/images/submarine_sandwich.png";
    hashMap["title"] = "Submarine Sandwich";
    hashMap["price"] = "14.80";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);


    hashMap = new HashMap();
    hashMap["image"] = "assets/images/barbacoa_Kebab_Chuan.png";
    hashMap["title"] = "Barbacoa Kebab Chuan";
    hashMap["price"] = "23.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);



    hashMap = new HashMap();
    hashMap["image"] = "assets/images/salchicha_breakfast.png";
    hashMap["title"] = "Salchicha Breakfast";
    hashMap["price"] = "15.00";
    hashMap["desCr"] = "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur";
    myList.add(hashMap);



    //Start programme for Storing Data in List====================================

  }
//End Programme for ItemList========================================================

//Start programme for Item Search================================================
searchList(String getText){

    if(getText.length > 0){
       List<HashMap<String,String>> filterList = [];
       for(int i=0;i<myData.length;i++){
         String name = myData[i]["title"]!.toUpperCase();
       if(name.contains(getText.toUpperCase())) {
         filterList.add(myData[i]);
       }
       }
       setState(() {
       this.myData = filterList;
       });}else{
      setState(() {
          this.myData = this.myList;
        });
    }
}
//Start programme for Item Search================================================

}



