import 'package:flutter/material.dart';

import 'HomeProfile.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    startGoToHome();
  }

  void startGoToHome() {
    Future.delayed(Duration(milliseconds: 10000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePro()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(children: [
              Image.network(
                "https://r1.ilikewallpaper.net/iphone-wallpapers/download-144812/white-cloth-with-stain_200.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipOval(
                            child: Image.network(
                              "https://inkythuatso.com/uploads/thumbnails/800/2022/05/screenshot-1-06-15-58-44.jpg",
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Đỗ Duy Hào",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "20110297",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
