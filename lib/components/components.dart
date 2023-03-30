import 'package:flutter/material.dart';

Widget Card1() {
  //  Size size = MediaQuery.of(context).size;
  return Container(
    // width: MediaQuery.of(context).size.width * 0.8,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/image1.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20)),
    child: Stack(children: [
      Positioned(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black])),
        ),
      ),
      Positioned(
        left: 10,
        top: 270,
        child: Row(
          children: const [
            Icon(Icons.favorite_border, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Text('0',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17)),
          ],
        ),
      ),
      const Positioned(
        top: 200,
        left: 10,
        child: Text('AFRO-SAMURAI',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23)),
      ),
      const Positioned(
        top: 230,
        left: 10,
        child: Text('Genre:  Action',
            style: TextStyle(
                color: Color.fromARGB(255, 138, 135, 135),
                fontWeight: FontWeight.bold,
                fontSize: 15)),
      ),
    ]),
  );
}
// Widget component1(
//       IconData icon, String hintText, bool isPassword, bool isEmail) {
//     Size size = MediaQuery.of(context).size;
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(15),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(
//           sigmaY: 15,
//           sigmaX: 15,
//         ),
//         child: Container(
//           height: size.width / 8,
//           width: size.width / 1.2,
//           alignment: Alignment.center,
//           padding: EdgeInsets.only(right: size.width / 30),
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(.05),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: TextField(
//             style: TextStyle(color: Colors.white.withOpacity(.8)),
//             cursorColor: Colors.white,
//             obscureText: isPassword,
//             keyboardType:
//                 isEmail ? TextInputType.emailAddress : TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(
//                 icon,
//                 color: Colors.white.withOpacity(.7),
//               ),
//               border: InputBorder.none,
//               hintMaxLines: 1,
//               hintText: hintText,
//               hintStyle:
//                   TextStyle(fontSize: 14, color: Colors.white.withOpacity(.5)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
  
//  Widget component2(String string, double width, VoidCallback voidCallback) {
//     Size size = MediaQuery.of(context).size;
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(15),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
//         child: InkWell(
//           highlightColor: Colors.transparent,
//           splashColor: Colors.transparent,
//           onTap: voidCallback,
//           child: Container(
//             height: size.width / 8,
//             width: size.width / width,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(.05),
//               borderRadius: BorderRadius.circular(15),cv 
//             ),
//             child: Text(
//               string,
//               style: TextStyle(color: Colors.white.withOpacity(.8)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }