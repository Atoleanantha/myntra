
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/dummy/all_time_favorites_model.dart';
import 'package:myntra/screens/t_shirts_Screen.dart';

class AllTimeFavorites extends StatefulWidget {
  @override
  State<AllTimeFavorites> createState() => _AllTimeFavoritesState();
}

class _AllTimeFavoritesState extends State<AllTimeFavorites> {
  @override
  Widget build(BuildContext context) {
    dynamic screen;
    void screens(int index){

      switch(index){
        case 1:
              break;
        case 2:break;
        case 3:break;
        case 4:setState(() {
          screen=TShirtsScreen();
        });
              break;

      }
    }
    return Column(
      children: [
        const Text(
          "ALL-TIME FAVORITES",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 0,crossAxisSpacing: 0),
          itemCount: allTimeFavoriteList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                setState(() {
                  screens(index);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>TShirtsScreen()));
                });

              },
              child: Card(
                borderOnForeground: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        FadeInImage(
                          placeholder: const AssetImage("images/icon/myntra_logo.png"),
                          image: AssetImage(allTimeFavoriteList[index].img),
                          fit: BoxFit.cover,
                          height:146,
                          width: double.infinity,
                        ),
                        Positioned(
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Container(
                              color:const Color.fromARGB(166, 44, 41, 41),
                              child: Text(
                                allTimeFavoriteList[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Under ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        const Icon(Icons.currency_rupee,size: 12,),
                        Text(
                          "${allTimeFavoriteList[index].priceRange}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),

      ],
    );
  }
}
