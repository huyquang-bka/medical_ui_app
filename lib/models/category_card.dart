import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String text;
  const CategoryCard({
    super.key,
    required this.text,
    required this.icon,
  });

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
        child: Row(
          children: [
            //icon
            Icon(icon, color: Colors.deepPurple[900]),
            const SizedBox(width: 10),
            //text
            Text(text),
          ],
        ),
      ),
    );
  }
}
