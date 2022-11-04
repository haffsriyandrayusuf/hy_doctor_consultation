import 'package:flutter/material.dart';
import 'package:hy_doctor_consultation/model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Container> category = List.generate(
      listCategory.length,
      (index) {
        return Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(21),
            boxShadow: [
              BoxShadow(
                color: Color(0xffE1EDF2).withOpacity(0.5),
                blurRadius: 15,
                offset: Offset(0, 15),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                listCategory[index].imageGategory,
                height: 38,
                width: 38,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                listCategory[index].category,
                style: TextStyle(
                  color: Color(0xff252E4E),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
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
          // PAGE VIEW
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TIDAK BISA DI SCROLL
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
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
                      Text(
                        'Howdy, Tamara!',
                        style: TextStyle(
                          color: Color(0xff252E4E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // BISA DI SCROLL
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Find the professional doctor, quickly and promising.',
                          style: TextStyle(
                            color: Color(0xff252E4E),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffE1EDF2).withOpacity(0.5),
                                offset: Offset(0, 15),
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Search by specialist',
                              hintStyle: TextStyle(
                                color: Color(0xffC3C8D8),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                size: 36,
                                color: Color(0xffC3C8D8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                          height: 308,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Browse by category',
                                style: TextStyle(
                                  color: Color(0xff252E4E),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 12),
                              Expanded(
                                child: GridView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  // padding: EdgeInsets.symmetric(horizontal: 16),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 21,
                                    mainAxisSpacing: 22,
                                    childAspectRatio: 3 / 3.25,
                                  ),
                                  children: category,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Our top doctors',
                          style: TextStyle(
                            color: Color(0xff252E4E),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      // SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 4),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          ourTopDoctor[index].imageDoctor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 13),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ourTopDoctor[index].name,
                                      style: TextStyle(
                                        color: Color(0xff252E4E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      ourTopDoctor[index].specialist,
                                      style: TextStyle(
                                        color: Color(0xffC3C8D8),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 18,
                          ),
                          itemCount: ourTopDoctor.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          selectedItemColor: Color(0xff252E4E),
          unselectedItemColor: Color(0xffC3C8D8),
          currentIndex: 2,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 32),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 32),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people, size: 32),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
