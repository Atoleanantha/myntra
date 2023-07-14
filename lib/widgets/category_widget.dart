
import 'package:flutter/material.dart';

import '../dummy/categories.dart';

Widget category() {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final content in categoriesList)
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(202, 215, 215, 206),
                        foregroundImage: AssetImage(
                          "images/categories/${content.img}",
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        content.title,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    ],
  );
}
