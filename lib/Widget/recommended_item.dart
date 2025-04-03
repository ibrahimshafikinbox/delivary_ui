import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/navigation_container.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width / 1.5, // Adjust height as needed
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 20,
                left: -15,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/Img/Malteadas tropicales.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 120,
              ),
            ],
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Naturales",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFFC0C2C5),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  "Malteadas tropicales",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF153E73),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Elaborado con jugos naturales",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0XFF515F65),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "\$12.58",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF153E73),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    NavigationContainer()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
