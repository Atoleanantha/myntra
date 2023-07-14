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
    void screens(int index) {
      switch (index) {
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          setState(() {
            screen = TShirtsScreen();
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 0, crossAxisSpacing: 0,childAspectRatio: 19 / 16,),
          itemCount: allTimeFavoriteList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  screens(index);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TShirtsScreen()));
                });
              },
              child: SizedBox(
                height: 100,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderOnForeground: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: FadeInImage(
                              placeholder: const AssetImage(
                                  "images/icon/myntra_logo.png"),
                              image: AssetImage(allTimeFavoriteList[index].img),
                              fit: BoxFit.cover,
                              height: 100,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                              right: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                color: const Color.fromARGB(30, 44, 41, 41),
                                child: Text(
                                  allTimeFavoriteList[index].title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Under ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Icon(
                            Icons.currency_rupee,
                            size: 12,
                          ),
                          Text(
                            "${allTimeFavoriteList[index].priceRange}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
