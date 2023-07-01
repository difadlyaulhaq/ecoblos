import 'package:finalp/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4957, 0.9231],
                  colors: [Colors.white, Colors.red.shade900],
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 121,
                      height: 196,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          hintText: 'Nama',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          hintText: 'NIK',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 206,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFD9D9D9),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),

                          hintText: 'daerah',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    SizedBox(height: 50),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MENU()),
                          );
                        },
                        child: Text('Login'.toUpperCase()),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade900,
                          minimumSize: Size(200, 40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CardPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE74646)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.3, size.height)
      ..lineTo(size.width * 0.7, size.height)
      ..lineTo(size.width * 0.6, size.height * 0.4)
      ..lineTo(size.width * 0.8, 0)
      ..lineTo(0, 0)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MENU extends StatelessWidget {
  const MENU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(250, 152, 132, 1),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Transform.rotate(
              angle: 42.09 * (3.141592653589793238 / 180),
              child: Container(
                width: 247,
                height: 313,
                color: Color.fromRGBO(255, 230, 201, 1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 53, right: 12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(26)),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 53, right: 12),
              child: Image.asset(
                'assets/2.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Transform.rotate(
                  angle: -29.0 * (3.141592653589793238 / 180),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: SizedBox(
                      width: 247,
                      height: 356,
                      child: Container(
                        color: Color.fromRGBO(255, 242, 228, 1),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Selamat datang',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(231, 70, 70, 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Difa Dlyaul Haq',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(231, 70, 70, 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 18),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '63710901023021',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(231, 70, 70, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(26)),
              child: SizedBox(
                width: 400,
                height: 400,
                child: Container(
                  color: const Color(0xFFE74646),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 320,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(37),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 3.5,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pilkada(title: 'pilkada')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37),
                          ),
                          minimumSize: Size(200, 40), // Adjust the size as desired
                          padding: EdgeInsets.zero, // Remove any padding
                        ),
                        child: Text(
                          'pilkada'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 70, 70, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 320,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(37),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 3.5,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pilpress(title: 'pilpress')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37),
                          ),
                          minimumSize: Size(101, 120), // Adjust the size as desired
                          padding: EdgeInsets.zero, // Remove any padding
                        ),
                        child: Text(
                          'pilpress'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 70, 70, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 320,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(37),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 3.5,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pemilu(title: 'pemilu')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37),
                          ),
                          minimumSize: Size(101, 120), // Adjust the size as desired
                          padding: EdgeInsets.zero, // Remove any padding
                        ),
                        child: Text(
                          'pemilu'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 70, 70, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class pilkada extends StatelessWidget {
  final String title;

  const pilkada({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4957, 0.9231],
          colors: [Colors.grey, Colors.red.shade900],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 154,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pilkada'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'yogyakarta'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 224,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6) * 2,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class pemilu extends StatelessWidget {
  final String title;

  const pemilu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4957, 0.9231],
          colors: [Colors.grey, Colors.red.shade900],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 154,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pemilu'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'yogyakarta'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 224,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6) * 2,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class pilpress extends StatelessWidget {
  final String title;

  const pilpress({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4957, 0.9231],
          colors: [Colors.grey, Colors.red.shade900],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 154,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pilpres'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'indonesia'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(231, 70, 70, 1),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 224,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 224 + (107 + 6) * 2,
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(37),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 3.5,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                      Image(
                        image: AssetImage('assets/orang.png'),
                        width: 86,
                        height: 86,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
