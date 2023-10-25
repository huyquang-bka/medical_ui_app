import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final double rating;
  final String doctorName;
  final double doctorExperienceYears;
  const DoctorCard(
      {super.key,
      required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorExperienceYears});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          //doctor image
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(doctorImagePath),
          ),
          //rating
          Row(
            children: [
              //icon star
              Icon(Icons.star, color: Colors.yellow[500]),
              //rating
              Text(rating.toString()),
            ],
          ),
          //doctor name and experience
          Text(doctorName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 10),
          Text(
            "${doctorExperienceYears.toString()} years of experience",
            style: TextStyle(fontSize: 12),
          ),
        ]),
      ),
    );
  }
}
