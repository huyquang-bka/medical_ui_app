import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_ui_app/models/category_card.dart';
import 'package:medical_ui_app/models/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentNavigationBarIndex = 0;

  void onBottomNavigationBarTap(int index) {
    currentNavigationBarIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavigationBarIndex,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.deepPurple),
          onTap: onBottomNavigationBarTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: "Appointment",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
        ),
        //backgroundColor
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
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
                const SizedBox(height: 25),
                //Card how do you feel today?
                Container(
                  padding: const EdgeInsets.all(20),
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
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Lottie.asset(
                              "lib/assets/animations/animation_lo5gl2z5.json"),
                        ),
                        const SizedBox(width: 20),
                        //Text how do you feel and get started button
                        Expanded(
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
                SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryCard(
                          text: "Dentist",
                          //icon from assests
                          iconPath: "lib/assets/icons/tooth.png",
                        ),
                        CategoryCard(
                          text: "Surgeon",
                          iconPath: "lib/assets/icons/surgeon.png",
                        ),
                        CategoryCard(
                          text: "Dentist",
                          //icon from assests
                          iconPath: "lib/assets/icons/tooth.png",
                        ),
                        CategoryCard(
                          text: "Surgeon",
                          iconPath: "lib/assets/icons/surgeon.png",
                        ),
                      ],
                    )),
                const SizedBox(height: 25),
                //doctor list
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Doctor List",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("See all",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ]),
                const SizedBox(height: 25),
                // Doctor Card
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //scroll horizontal
                    children: [
                      DoctorCard(
                        doctorImagePath: "lib/assets/images/avatar.jpg",
                        rating: 4.5,
                        doctorName: "Dr. 1",
                        doctorExperienceYears: 5,
                      ),
                      DoctorCard(
                        doctorImagePath: "lib/assets/images/avatar.jpg",
                        rating: 5.0,
                        doctorName: "Dr. 2",
                        doctorExperienceYears: 10,
                      ),
                      DoctorCard(
                        doctorImagePath: "lib/assets/images/avatar.jpg",
                        rating: 3.2,
                        doctorName: "Dr. 3",
                        doctorExperienceYears: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
