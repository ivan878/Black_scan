import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scan37/screens/details.dart';
import 'package:scan37/screens/details_2.dart';

import '../components/bottomNavbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imageList = [
    {"id": 1, "image_path": 'assets/image1.jpg'},
    {"id": 2, "image_path": 'assets/image2.jpg'},
    {"id": 3, "image_path": 'assets/image3.jpg'},
    {"id": 4, "image_path": 'assets/image5.jpg'},
    {"id": 5, "image_path": 'assets/image6.jpg'},
    {"id": 6, "image_path": 'assets/image7.jpg'},
    {"id": 7, "image_path": 'assets/image8.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  bool state = false;
  bool isselect = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(child: Image.asset('assets/logo1.png')),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  state = !state;
                });
              },
              icon: state
                  ? const Icon(Icons.sunny, color: Colors.black)
                  : const Icon(Icons.dark_mode, color: Colors.white)),
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications, color: Colors.white))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  CarouselSlider(
                    items: imageList
                        .map((data) => Image.asset(
                              data['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 200,
                            ))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentindex = index;
                          });
                        }),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Container(
                      height: 25,
                      color: const Color.fromARGB(78, 0, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: null,
                              child: Container(
                                width: currentindex == entry.key ? 17 : 7,
                                height: 7.0,
                                margin: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentindex == entry.key
                                        ? Colors.red
                                        : Colors.white),
                              ),
                            );
                          }).toList()),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Populaires',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Details())));
                      },
                      icon: const Icon(Icons.keyboard_arrow_right,
                          size: 35, color: Colors.red))
                ],
              ),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.4,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(158, 208, 211, 208),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/image1.png',
                                  height: 100,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                const Text('YASUKE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                const Text('Genre',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 13)),
                                TextButton(
                                    onPressed: null,
                                    child: Center(
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text('suivre',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 17))),
                                      ),
                                    ))
                              ]),
                        ))),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Genres',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              choice(isselect),
            ]),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Recommander',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 35,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const Details2())));
                        },
                        child: Container(
                            height: 170,
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Image.asset(
                              'assets/image9.jpg',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const Text('ALICE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      const Text('Aventure',
                          style: TextStyle(
                              color: Color.fromARGB(255, 138, 135, 135),
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //     height: 350,
            //     child: ListView.builder(
            //         itemCount: 10,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) => Container(
            //               width: MediaQuery.of(context).size.width * 0.8,
            //               margin: const EdgeInsets.all(8),
            //               decoration: BoxDecoration(
            //                   image: const DecorationImage(
            //                     image: AssetImage("assets/image1.png"),
            //                     fit: BoxFit.cover,
            //                   ),
            //                   borderRadius: BorderRadius.circular(20)),
            //               child: Stack(children: [
            //                 Positioned(
            //                   child: Container(
            //                     decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(20),
            //                         gradient: const LinearGradient(
            //                             begin: Alignment.topCenter,
            //                             end: Alignment.bottomCenter,
            //                             colors: [
            //                               Colors.transparent,
            //                               Colors.black
            //                             ])),
            //                   ),
            //                 ),
            //                 Positioned(
            //                   left: 10,
            //                   top: 270,
            //                   child: Row(
            //                     children: const [
            //                       Icon(Icons.favorite_border,
            //                           color: Colors.white),
            //                       SizedBox(
            //                         width: 10,
            //                       ),
            //                       Text('0',
            //                           style: TextStyle(
            //                               color: Colors.white,
            //                               fontWeight: FontWeight.bold,
            //                               fontSize: 17)),
            //                     ],
            //                   ),
            //                 ),
            //                 const Positioned(
            //                   top: 200,
            //                   left: 10,
            //                   child: Text('AFRO-SAMURAI',
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 23)),
            //                 ),
            //                 const Positioned(
            //                   top: 230,
            //                   left: 10,
            //                   child: Text('Genre:  Action',
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 138, 135, 135),
            //                           fontWeight: FontWeight.bold,
            //                           fontSize: 15)),
            //                 ),
            //               ]),
            //             ))),
          ]),
        ),
      ),
    );
  }
}

choice(
  bool isselect,
) {
  return Wrap(
      direction: Axis.horizontal,
      children: List.generate(4, (index) {
        return Container(
          margin: const EdgeInsets.only(right: 20),
          child: ChoiceChip(
              pressElevation: 12.0,
              selectedColor: Colors.red,
              disabledColor: Colors.grey,
              label: Text('Action'),
              onSelected: ((sectionElt) {}),
              selected: isselect),
        );
      }));
}
