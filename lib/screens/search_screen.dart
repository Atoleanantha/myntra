import 'package:flutter/material.dart';
import 'package:myntra/dummy/most_searched_article.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchScreen();
  }
}

class _SearchScreen extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextFormField(
          onTap: () {},
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Search for brands & products",
            hintStyle: TextStyle(fontSize: 12),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.mic_none_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PHOTO SEARCH",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt_outlined)),
                        const Text(
                          "Click a photo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.photo_camera_back_outlined)),
                        const Text(
                          "Select a photo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                color: Colors.grey.shade200,
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "MOST SEARCHED ARTICLES",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              cardSearch(),
                ],
              )
          ),

      ),
    );
  }
}

Widget cardSearch() {
  return Expanded(
    child: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 0.6),
      children: [
        for(int index=0;index<mostSearchedArticles.length;index++)
        Card(
            margin: const EdgeInsets.all(3),
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  FadeInImage(
                    placeholder: AssetImage(mostSearchedArticles[index].img),
                    image: AssetImage(mostSearchedArticles[index].img),
                    fit: BoxFit.cover,
                    height: 400,
                    width: 100,
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Text(
                          mostSearchedArticles[index].title,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ],
              ),
            )),]
    ),
  );
}
