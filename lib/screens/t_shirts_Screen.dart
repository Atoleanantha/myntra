import 'package:flutter/material.dart';
import 'package:myntra/dummy/tshirts.dart';
import 'package:myntra/screens/search_screen.dart';

class TShirtsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shop"),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
            }, icon: Icon(Icons.search,size: 30,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 30,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,size: 30,)),
          ],
        ),
        body: MediaQuery.removePadding(
            context: context,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: tShirtsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(tShirtsList[index].img),
                            ],
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(tShirtsList[index].title),
                           const Icon(Icons.favorite_border),
                         ],
                       ),
                        Text(tShirtsList[index].subtitle,style: const TextStyle(color: Colors.grey,fontSize: 10)),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,size: 17,),
                            Text(tShirtsList[index].price.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                            const SizedBox(width: 5,),
                            const Icon(Icons.currency_rupee,size: 12,color: Colors.grey,),
                            Text(tShirtsList[index].mrp.toString(),style: const TextStyle(fontSize: 12,decoration: TextDecoration.lineThrough,color: Colors.grey),),
                            const SizedBox(width: 5,),
                            Text("(${tShirtsList[index].off}% OFF)",style: const TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 11),)
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Best Price ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                            const Icon(Icons.currency_rupee,size: 17,color: Colors.green),
                            Text(tShirtsList[index].bestPrice.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                            const SizedBox(width: 5,),
                            const Text("with coupon",style: TextStyle(fontSize: 10,color: Colors.black45),)

                          ],
                        ),
                      ],
                    ) ,
                  );
                })));
  }
}
