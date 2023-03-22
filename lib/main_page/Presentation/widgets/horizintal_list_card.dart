
import 'package:flutter/material.dart';

class HorizintalCard extends StatelessWidget {
  const HorizintalCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      child:   Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "lib/main_page/Presentation/testing_assets/profile_pic1.jpeg",
                  height:24.0,
                  width: 24.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'abbas eldow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'the best in town',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

