import 'package:flutter/material.dart';

void main() {
  runApp(  const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int teamAPoints = 0;

   int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Sets the corners to be sharp/square
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++; 
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Sets the corners to be sharp/square
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints=teamAPoints+2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Sets the corners to be sharp/square
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints= teamAPoints+3 ;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 40,
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Sets the corners to be sharp/square
                          ),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints=teamBPoints+2;
                          });
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Sets the corners to be sharp/square
                          ),

                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(200, 50),
                          elevation: 10,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints= teamBPoints+3 ;
                          });
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Sets the corners to be sharp/square
                ),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.black,
                minimumSize: Size(200, 50),
                elevation: 10,
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text("Reset", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
