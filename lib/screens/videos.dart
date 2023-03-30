import 'dart:ui';

import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<String> images = [
    'assets/image7.jpg',
    'assets/image6.jpg',
    'assets/image8.jpg',
    'assets/image1.jpg',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // FractionallySizedBox(
          //   heightFactor: 0.55,
          //   child: PageView.builder(
          //     itemBuilder: (context, int index) {
          //       return FractionallySizedBox(
          //         widthFactor: 0.8,
          //         child: Container(
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(32),
          //               image: DecorationImage(
          //                   image: AssetImage(images[index]), fit: BoxFit.cover)),
          //         ),
          //       );
          //     },
          //   ),
          // )
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images[currentIndex]),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.55,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: images.length,
                itemBuilder: ((context, index) {
                  return FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover)),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
