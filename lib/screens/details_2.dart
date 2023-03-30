import 'package:flutter/material.dart';

class Details2 extends StatefulWidget {
  const Details2({Key? key}) : super(key: key);

  @override
  State<Details2> createState() => _Details2State();
}

class _Details2State extends State<Details2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Stack(
          children: [
            Image.asset(
              'assets/image7.jpg',
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 37,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: CircleAvatar(child: Icon(Icons.arrow_back_ios)),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 88, 88, 88)
                            .withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('QM EDITIONS'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(child: Icon(Icons.share)),
                  ],
                ),
                Expanded(
                  child: ListTile(
                    leading: Container(),
                    title: Text('ALITA Batle'),
                    subtitle: Text('Drame'),
                    trailing: Icon(Icons.circle, color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
