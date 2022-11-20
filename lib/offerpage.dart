import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Dismissible(
                  key: ValueKey("1"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/burger_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Hambaergueasa Burger"),
                      subtitle: RichText(
                        text: TextSpan(
                          text: "Discount: ",style: TextStyle(color: Colors.black54),
                             children: const<TextSpan>[
                               TextSpan(
                                   text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                               )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider1.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("2"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/pizza_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Pizza Veloper Special discount!"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider2.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("3"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/sandwich_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Chesee Sandwich"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "30%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider3.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("4"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/barbecue_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Barbecue 11 Campaign offer"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "70%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider4.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("5"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/burger_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Hambaergueasa Burger"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider1.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("6"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/pizza_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Pizza Veloper Special discount!"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider2.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("7"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/sandwich_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Chesee Sandwich"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "30%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider3.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("8"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/barbecue_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Barbecue 11 Campaign offer"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "70%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider1.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("9"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/pizza_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Pizza Veloper Special discount!"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider2.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
                Dismissible(
                  key: ValueKey("10"),
                  background: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Card(
                    child: ExpansionTile(
                      leading: CircleAvatar(child: Image.asset("assets/images/burger_ctg.png"),backgroundColor: Colors.deepPurple,),
                      title: Text("Hambaergueasa Burger"),
                      subtitle: RichText(
                        text: TextSpan(
                            text: "Discount: ",style: TextStyle(color: Colors.black54),
                            children: const<TextSpan>[
                              TextSpan(
                                  text: "50%",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)
                              )
                            ]
                        ),
                      ),
                      trailing: Icon(Icons.arrow_drop_down_outlined),
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Image.asset("assets/images/img_slider1.jpg"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
