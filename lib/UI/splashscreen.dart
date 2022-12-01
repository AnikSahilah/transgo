///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          ///***If you have exported images you must have to copy those images in assets/images directory.
          Image(
            image: const AssetImage("assets/images/Frame 5.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const Align(
            alignment: Alignment(0.0, -0.1),
            child:

                ///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
              image: AssetImage("assets/images/bus1-removebg-preview.png"),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment(-0.7, -0.7),
            child:

                ///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
              image: AssetImage("assets/images/TransGo (1).png"),
              height: 20,
              width: 115,
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment(-0.2, -0.82),
            child:

                ///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
              image: AssetImage("assets/images/logo.png"),
              height: 70,
              width: 45,
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment(0.0, 0.2),
            child: Text(
              "Selamat Datang di TransGo",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xfffbf9f9),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.6),
            child: MaterialButton(
              onPressed: () => Navigator.pushNamed(context, "/login"),
              color: const Color(0x964d3bab),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xfffaf7f7),
              height: 40,
              minWidth: 140,
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.8),
            child: MaterialButton(
              onPressed: () {Navigator.pushNamed(context, "/register");},
              color: const Color(0x974d3bab),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(16),
              textColor: const Color(0xfffbf9f9),
              height: 40,
              minWidth: 140,
              child: const Text(
                "Register",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
