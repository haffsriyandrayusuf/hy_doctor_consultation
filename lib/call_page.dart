import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill),
            ),
          ),
          Container(
            height: 198,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff000000),
                  Color(0xff000000).withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              border: Border.all(
                                color: Color(0xffB0D6E3),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, left: 4),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/pic1.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Alessya Camella',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Eye Specialist',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 26,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xffFF6565),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            'End Call',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Container(
                    height: 170,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xffFF6565),
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(0.12),
                          blurRadius: 15,
                          spreadRadius: 0,
                          offset: Offset(0, 15),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/images/user.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
