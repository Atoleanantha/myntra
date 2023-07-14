import 'package:flutter/material.dart';
import 'package:myntra/screens/search_screen.dart';
import 'package:myntra/widgets/all_time_favorites.dart';
import 'package:myntra/widgets/offers.dart';
import '../widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget deleveryInfo(String text1,String text2, IconData icon){
      return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 4, 107, 95),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.only(left: 8,right: 8,top: 3,bottom: 3),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(width: 3,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                Text(text2,style: TextStyle(color: Colors.white,fontSize: 10),),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,size: 30,),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add,color: Colors.black,size: 30,),
              label: 'Fwd',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.man,color: Colors.black,size: 30,),
              label: 'Everyday',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined,color: Colors.black,size: 30,),
              label: 'Settings',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_sharp,color: Colors.black,size: 30,),
              label: 'Profile',
              backgroundColor: Colors.white,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pinkAccent,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(

          backgroundColor: Colors.white,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 20,
                  child: Image.asset("images/icon/myntra_logo.png")),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "BECOME",
                    style: TextStyle(fontSize: 12),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "   INSIDER",
                            style: TextStyle(
                                fontSize: 12, color: Colors.orangeAccent),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 10,
                            color: Colors.orangeAccent,
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined,size:30,)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border,size: 30,)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined,size: 30,)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search for brands and products",
                          hintStyle: TextStyle(fontSize: 12),
                          enabled: false,
                          hintMaxLines: 1,
                          suffixIcon: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  IconButton(
                                      autofocus: true,
                                      onPressed: () {
                                        print("click on camera");
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 20,
                                      )),
                                  IconButton(
                                    onPressed: () {
                                      print("cliked on mic");
                                    },
                                    icon: Icon(
                                      Icons.mic_none_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 46, 60, 63),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/categories/fashion.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Fashion",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/categories/beauty.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Beauty",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              category(),
              const SizedBox(
                height: 10,
              ),
              offers(),

              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    deleveryInfo("100% Original", "Products", Icons.assignment_turned_in_outlined),
                    deleveryInfo("Free Shipping", "On 1st Order", Icons.currency_rupee),
                    deleveryInfo("Easy Returnas", "& Refunds", Icons.local_shipping_rounded),
                  ],
                ),
              ),

              Container(height: 10,color: Colors.grey.shade200,),
              const SizedBox(height: 15,),
              //ALL TIME FAVORITES
              AllTimeFavorites(),
            ],
          ),
        ),
      ),
    );
  }
}


