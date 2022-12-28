import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/utils/emoticon_face.dart';
import 'package:mental_health_app_ui/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
            child: Column(
              children: [
                //greetings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Sumit!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '27 Dec, 2022',
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),

                    //Notification
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //search bar
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Colors.blue[600],
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                //4 different emoji
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotiConFace(emoji: '😫'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmotiConFace(emoji: '😇'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmotiConFace(emoji: '😌'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    //excellent
                    Column(
                      children: [
                        EmotiConFace(emoji: '🥳'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    //Listview of Exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking skills',
                            numberOfExercises: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 8,
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 16,
                            color: Colors.pink,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
