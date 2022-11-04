import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class RatePage extends StatelessWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [
                  Color(0xffE4F2F7),
                  Color(0xffffffff),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 60),
                  SizedBox(
                    width: 320,
                    child: Text(
                      'Hope you are feeling better now!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(30),
                      // ),
                      border: Border.all(
                        color: Color(0xffB0D6E3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.64, left: 9.75),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/doc1.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Alessya Camella',
                    style: TextStyle(
                      color: Color(0xff252E4E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Eye Specialist',
                    style: TextStyle(
                      color: Color(0xffC3C8D8),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 30),
                  RatingStars(
                    value: 4,
                    starCount: 5,
                    starSize: 40,
                    starSpacing: 10,
                    starColor: Color(0xffFFDF6C),
                    starOffColor: Color(0xffC3C8D8),
                    valueLabelVisibility: false,
                  ),
                  SizedBox(height: 42),
                  Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff252E4E),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffD9E1E4),
                          offset: Offset(0, 6),
                          blurRadius: 15,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Rate Alessya',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 77),
                  Text(
                    'Report for Bad Service',
                    style: TextStyle(
                      color: Color(0xffC3C8D8),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
