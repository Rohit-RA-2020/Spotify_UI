import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/my_flutter_app_icons.dart';
import 'my_flutter_app_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      appBar: AppBar(
        backgroundColor: Color(0xFF191919),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings_outlined),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined), label: "Library"),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.spotify),
            label: "Premium",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Good Afternoon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AlbumMini(
                    image: 'assets/kendrick.jpg',
                    text: "Kendrick\nLamar",
                  ),
                  AlbumMini(
                    image: 'assets/damn.jpg',
                    text: "Damn",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AlbumMini(
                    image: 'assets/jcole.jpg',
                    text: 'J. Cole',
                  ),
                  AlbumMini(
                    image: 'assets/lofi.jpeg',
                    text: 'Lo-fi Beats',
                  )
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Recently Played",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Image.asset(
                            'assets/kendrick.jpg',
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Kemdrick Lamar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Image.asset(
                          'assets/damn.jpg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "Damn",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90)),
                        child: Image.asset(
                          'assets/2014.jpg',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        "J. Cole - 2014 ...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Recommended for you",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlbumMini extends StatelessWidget {
  final String image;
  final String text;

  const AlbumMini({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF313132),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset(
                image,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
