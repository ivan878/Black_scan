import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  // @override
  // void initstate() {
  //   animationController1 = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   );
  //   animation1 = Tween<double>(begin: .1, end: .15).animate(
  //     CurvedAnimation(
  //       parent: animationController1,
  //       curve: Curves.easeInOut,
  //     ),
  //   )
  //     ..addListener(() {
  //       setState(() {});
  //     })
  //     ..addStatusListener((status) {
  //       if (status == AnimationStatus.completed) {
  //         animationController1.reverse();
  //       } else if (status == AnimationStatus.dismissed) {
  //         animationController1.forward();
  //       }
  //     });
  //   animation2 = Tween<double>(begin: .02, end: .04).animate(
  //       CurvedAnimation(parent: animationController1, curve: Curves.easeInOut))
  //     ..addListener(() {
  //       setState(() {});
  //     });
  //   animationController2 =
  //       AnimationController(vsync: this, duration: Duration(seconds: 5));
  //   animation3 = Tween<double>(begin: .43, end: .38).animate(
  //       CurvedAnimation(parent: animationController2, curve: Curves.easeInOut))
  //     ..addListener(() {
  //       setState(() {});
  //     })
  //     ..addStatusListener((status) {
  //       if (status == AnimationStatus.completed) {
  //         animationController2.reverse();
  //       } else if (status == AnimationStatus.dismissed) {
  //         animationController2.forward();
  //       }
  //     });
  //   animation4 = Tween<double>(begin: .170, end: .190).animate(
  //       CurvedAnimation(parent: animationController2, curve: Curves.easeInOut))
  //     ..addListener(() {
  //       setState(() {});
  //     });
  //   Timer(Duration(milliseconds: 2500), () {
  //     animationController1.forward();
  //   });
  //   animationController2.forward();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   animationController1.dispose();
  //   animationController2.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Color(0xff192028),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background_scan37.png'),
          fit: BoxFit.cover,
        )),
        child: ScrollConfiguration(
          behavior: Mybehavior(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * (animation2.value + .15),
                    left: size.width * .21,
                    child: CustomPaint(
                      painter: MyPainter(50),
                    ),
                  ),
                  Positioned(
                    top: size.height * .98,
                    left: size.width * .1,
                    child: CustomPaint(
                      painter: MyPainter(animation4.value - 30),
                    ),
                  ),
                  Positioned(
                    top: size.height * .7,
                    left: size.width * (animation2.value + .8),
                    child: CustomPaint(
                      painter: MyPainter(30),
                    ),
                  ),
                  Positioned(
                    top: size.height * animation3.value,
                    left: size.width * (animation1.value + .1),
                    child: CustomPaint(
                      painter: MyPainter(60),
                    ),
                  ),
                  Positioned(
                    top: size.height * animation3.value,
                    left: size.width * (animation1.value + .5),
                    child: CustomPaint(
                      painter: MyPainter(10),
                    ),
                  ),
                  Positioned(
                    top: size.height * .1,
                    left: size.width * .8,
                    child: CustomPaint(
                      painter: MyPainter(animation4.value),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 40),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BIENVENU',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.7),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    wordSpacing: 4,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                component1(Icons.account_circle_outlined,
                                    'User name...', false, false),
                                const SizedBox(
                                  height: 20,
                                ),
                                component1(Icons.email_outlined, 'Email...',
                                    false, true),
                                const SizedBox(
                                  height: 20,
                                ),
                                component1(Icons.lock_outline, 'Password...',
                                    true, false),
                                const SizedBox(
                                  height: 20,
                                ),
                                component2(
                                  'CONNEXION',
                                  1,
                                  () {
                                    HapticFeedback.lightImpact();
                                    // Fluttertoast.showToast(
                                    //     msg: 'Login button pressed');
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  thickness: 4,
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Mots de passe oublier...? 😢',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                SizedBox(
                                  height: size.height * 0.3,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Déja un compte...?',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       body: ScrollConfiguration(
//         behavior: Mybehavior(),
//         child: SingleChildScrollView(
//             child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(children: [
//             Positioned(
//                 top: MediaQuery.of(context).size.height *
//                     (animation1.value + .58),
//                 left: MediaQuery.of(context).size.width * 0.3,
//                 child: CustomPaint(
//                   painter: MyPainter(50),
//                 )),
//             Positioned(
//                 top: MediaQuery.of(context).size.height * .98,
//                 left: MediaQuery.of(context).size.width * .1,
//                 child: CustomPaint(painter: MyPainter(150)))
//           ]),
//         )),
//       ),
//     );
//   }
// }
  Widget component1(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
            fillColor: Colors.white.withOpacity(0.8)));
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: InkWell(
        onTap: voidCallback,
        child: Container(
          height: size.width / 7,
          width: size.width / width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(
            string,
            style: TextStyle(
                color: Colors.white.withOpacity(.8),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
      ),
    );
  }
}

//  class MyPainter1 extends CustomPainter {
//   final double radius;
//   MyPainter1(this.radius);
//   @override
//   void paint1(Canvas canvas, Size size) {
//     final paint1 = Paint()
//       ..shader = const LinearGradient(colors: [
//         Color.fromARGB(255, 214, 17, 17),
//         Color.fromARGB(255, 175, 47, 175)
//       ], begin: Alignment.topLeft, end: Alignment.bottomRight)
//           .createShader(Rect.fromCircle(center: Offset(0, 0), radius: radius));

//     canvas.drawCircle(Offset.zero, radius, paint1);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }

class MyPainter extends CustomPainter {
  final double radius;
  MyPainter(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
              colors: [Color(0xfffd5e3d), Color(0xffc43990)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)
          .createShader(Rect.fromCircle(center: Offset(0, 0), radius: radius));

    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Mybehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
