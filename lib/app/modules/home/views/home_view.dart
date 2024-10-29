import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/about_movie/views/about_movie_view.dart';
import '../../movie/views/movie_list_view.dart';
import '../../setting/views/setting_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/736x/e0/4c/a7/e04ca732befb300343de60b59f1113c3.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), // To make the image brighter
                  BlendMode.darken,
                ),
              ),
            ),
            child: Stack(
              children: [
                // Red gradient at the top
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.red.withOpacity(0.8),
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.5],
                    ),
                  ),
                ),
                // Hamburger and Search buttons
                Positioned(
                  top: 50,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), // Circular button
                      padding: EdgeInsets.all(16), // Adjust size
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      shadowColor: Colors.transparent, // Remove shadow
                    ),
                    child: Icon(Icons.menu, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), // Circular button
                      padding: EdgeInsets.all(16), // Adjust size
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      shadowColor: Colors.transparent, // Remove shadow
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ),
                // Shining TICKFLIX text
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'TICKFLIX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Krona One',
                        letterSpacing: 3.12,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.redAccent,
                            offset: Offset(0, 0),
                          ),
                          Shadow(
                            blurRadius: 30.0,
                            color: Colors.redAccent,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Centered text and button
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 130,
                  child: Column(
                    children: [
                      Text(
                        'AVENGERS ENDGAME',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Lateef',
                          letterSpacing: 0.8,
                          // Stroke style
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 5
                            ..color = Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutMovieView()),
                          ); // Action when "Book Now" is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF700D0E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: Text(
                          'BOOK NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Konkhmer Sleokchher',
                          ),
                        ),
                      ),
                    ],
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
