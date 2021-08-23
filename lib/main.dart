import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

List images = [
  'assets/Group 4.png',
  'assets/Group 7.png',
  'assets/Group 8.png',
  'assets/Group 9.png',
];

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Container(
                height: 80,
                color: Colors.blueAccent,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 70),
                      Text(
                        'My Admissions',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
            Container(
              height: 180,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: CardWeidget(imageName: images[index]),
                  );
                },

                viewportFraction: 0.8,

                autoplay: true,
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                // pagination:
                //     new SwiperPagination(alignment: Alignment.centerRight),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My admissions',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing ",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 10),
            Container(
                height: 140,
                // color: Colors.amber,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            UiCard(title: 'College predictor'),
                            UiCard(title: 'Degree Selector'),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            UiCard(title: 'My Coaching'),
                            UiCard(title: 'Oversease Admissions'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 5),
                Text(
                  'Blogs for you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Text(
                  'View more',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SmallCard(
                    imgname: 'assets/emp.png',
                  ),
                  SmallCard(
                    imgname: 'assets/emp1.jpg',
                  ),
                  SmallCard(
                    imgname: 'assets/emp.png',
                  ),
                  SmallCard(
                    imgname: 'assets/emp1.jpg',
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
    required this.imgname,
  }) : super(key: key);

  final imgname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 200,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgname), fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text('Lorem Ipsum is simply dummy text of the'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Container bottomNavBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.grey.shade300, spreadRadius: 2, blurRadius: 5),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.explore_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              Icons.school_outlined,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.help_outline,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ),
  );
}

class CardWeidget extends StatelessWidget {
  final imageName;

  CardWeidget({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
            child: Image.asset(
          imageName,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}

class UiCard extends StatelessWidget {
  final String title;
  const UiCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 60,
        width: 190,
        // color: Colors.amber,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 47,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset.zero)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            Positioned(
              top: -10,
              right: -5,
              child: Container(
                height: 60,
                width: 40,
                child: Image.asset('assets/Group 10.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
