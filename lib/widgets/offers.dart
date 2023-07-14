import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget offers() {
  return CarouselSlider(
    items: [
      //1st Image of Slider
      for(int i=1;i<=3;i++)
      InkWell(
        onTap: (){},
        child: Container(
          margin:const EdgeInsets.only(left: 3.0,right: 3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage("images/offers/offer$i.jpg"),
              // image: NetworkImage("ADD IMAGE URL HERE"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

    ],

    //Slider Container properties
    options: CarouselOptions(
      height: 180.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 9,
      // autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration:const Duration(milliseconds: 800),
      viewportFraction: 1,
    ),
  );
  }

