import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class brand_details extends StatelessWidget {
  final List<String> images = [
    'resources/images/image1.jpg', // Replace with your image asset paths
    'resources/images/image2.jpg',
    'resources/images/image3.jpg',
    'resources/images/image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the background color to white
        leading: IconButton(
          icon: Icon(Icons.close,color: Colors.blue),
          onPressed: () {
            // Handle the close button action here
            print("Close button pressed");
          },
        ),
        title: Text(
          "SoboGoG",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0, // Set the height of the slider
                enlargeCenterPage: true, // Enlarge the center image
                autoPlay: true, // Auto-play images
                aspectRatio: 16 / 9, // Aspect ratio of images
                autoPlayInterval: Duration(seconds: 2), // Auto-play interval
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: images.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey, // Background color for images
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20), // Add spacing between the slider and other content
            // Add other content here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "City",
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5),
                    Text("4.2", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Toyota Yaris Comfort 2023",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text("15", style: TextStyle(fontSize: 18)),
                    Icon(Icons.attach_money, color: Colors.greenAccent),
                    Text("per day", style: TextStyle(fontSize: 18)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Cream background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.speed, color: Colors.blue),
                      Text("150 KM Power", style: TextStyle(fontSize: 16)),
                      Text("Power", style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Cream background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.people, color: Colors.orange),
                      Text("People", style: TextStyle(fontSize: 16)),
                      Text("(1-5)", style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey, // Cream background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.shopping_bag, color: Colors.brown),
                      Text("Bags (1-4)", style: TextStyle(fontSize: 16)),
                      Text("(1-4)", style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
              ],
            ),
            // ...

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on, color: Colors.blue),
                      Text(
                        "Kotowice Airport",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "WWNOIC90, 42-03325 Pyrzowice",
                        style: TextStyle(fontSize: 8, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.0),
                  Image.asset(
                    'resources/images/image1.jpg', // Replace with your location icon image asset path
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the "Select" button click action here
                print("Select button pressed");
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(500, 60), // Set the button size
              ),
              child: Text(
                "Select",
                style: TextStyle(fontSize: 20), // Set the button text size
              ),
            ),
          ],
        ),
      ),
    );
  }
}