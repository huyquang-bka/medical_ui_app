import 'package:flutter/material.dart';
import 'package:medical_ui_app/models/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              //header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //greeting
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      //name
                      Text(
                        "Huy Wang",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  //profile picture
                  GestureDetector(
                    onTap: () => print("Profile picture tapped!"),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("lib/assets/images/avatar.jpg"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //Card how do you feel today?
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink[100],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //cute animation
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple[200],
                        ),
                      ),
                      const SizedBox(width: 20),
                      //Text how do you feel and get started button
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //Text how do you feel
                              const Text(
                                "How do you feel today?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12),
                              //Text fill out your medical card right now
                              const Text(
                                  "Fill out your medical card right now!"),
                              const SizedBox(height: 12),
                              //Get started button
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.deepPurple,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Get Started",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 25),
              //search bar
              TextField(
                decoration: InputDecoration(
                  hintText: "How can we help you?",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.deepPurple[100],
                ),
              ),
              const SizedBox(height: 25),
              //horizontal list view
              Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryCard(
                        text: "Consultation",
                        icon: Icons.chat,
                      ),
                      CategoryCard(
                        text: "Consultation",
                        icon: Icons.chat,
                      ),
                      CategoryCard(
                        text: "Consultation",
                        icon: Icons.chat,
                      ),
                      CategoryCard(
                        text: "Consultation",
                        icon: Icons.chat,
                      ),
                    ],
                  ))
              //doctor list
            ],
          ),
        ),
      ),
    );
  }
}
