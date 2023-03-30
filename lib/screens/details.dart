import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Genre'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1 / 2,
              mainAxisSpacing: 5),
          children: List.generate(
              25,
              (index) => Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    color: const Color.fromARGB(158, 208, 211, 208),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/image1.png',
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          const Text('Action',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 13)),
                          const Text('YASUKE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.favorite,
                                  color: Colors.green, size: 17),
                              Text('178 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 13)),
                            ],
                          ),
                        ]),
                  ))),
    );
  }
}
