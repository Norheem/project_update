import 'package:flutter/material.dart';
import 'package:project_update/screens/board.dart';
import 'package:project_update/screens/message.dart';
import 'package:project_update/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final boardNavKey = GlobalKey<NavigatorState>();
  final messageNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  int selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedTab,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hey, Naufal',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '7 tasks today!',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/profile.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    width: 390,
                    height: 40,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 2,
                                left: 5,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 40,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 70,
                                child: Text(
                                  'Find your task or project here...',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            (Icons.arrow_forward_ios_sharp),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 15),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                73, 140, 214, 248),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue
                                                    .withOpacity(0.2),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: const Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.laptop,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 15, top: 15),
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 40),
                                    child: Text(
                                      'Redesign Landing \nPage',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 120),
                                    child: Text(
                                      '36 task',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 0,
                                                  left: 5,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 18,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile2.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 30,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile3.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 2,
                                                  left: 40,
                                                  child: CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            220, 177, 183, 191),
                                                    child: Text(
                                                      '+2',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            '50%',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(182, 80, 13, 187),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 15),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                73, 140, 214, 248),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.purple
                                                    .withOpacity(0.2),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: const Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.phone_iphone,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 15, top: 15),
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 40),
                                    child: Text(
                                      'Project Banking \nMobile App',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 120),
                                    child: Text(
                                      '24 task',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 0,
                                                  left: 5,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile4.png'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 18,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile5.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 30,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile6.png'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 2,
                                                  left: 40,
                                                  child: CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            220, 177, 183, 191),
                                                    child: Text(
                                                      '+1',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            '20%',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                            bottom: 10,
                                            right:
                                                0, // Adjusted padding to meet the first container
                                          ),
                                          child: Container(
                                            height: 5,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex:
                                            2, // The second container is twice as wide as the first
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 15),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                73, 140, 214, 248),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color:
                                                    Colors.red.withOpacity(0.2),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: const Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.addchart,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 15, top: 15),
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 40),
                                    child: Text(
                                      'Redesign Landing \nProject',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 120),
                                    child: Text(
                                      '12 task',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  top: 0,
                                                  left: 5,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 18,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile2.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  left: 30,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundImage: AssetImage(
                                                        'assets/profile3.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 2,
                                                  left: 40,
                                                  child: CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            220, 177, 183, 191),
                                                    child: Text(
                                                      '+2',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            '50%',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            bottom: 10,
                                          ),
                                          child: Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            (Icons.arrow_forward_ios_sharp),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: buildContainer(
                    0,
                    'Landing Page Design',
                    'Today, 10:31 AM',
                    [
                      'assets/profile.jpg',
                      'assets/profile2.jpg',
                      'assets/profile3.jpg',
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: buildContainer(
                    1,
                    'Improvement Color',
                    '31 March 2023, 02:42 PM',
                    [
                      'assets/profile4.png',
                      'assets/profile5.jpg',
                    ],
                  ),
                ),
                const SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: buildContainer(
                    2,
                    'Home Banking Mobile App',
                    '1 April 2023, 09:29 AM',
                    [
                      'assets/profile.jpg',
                      'assets/profile6.png',
                    ],
                  ),
                ),
              ],
            ),
            const Board(),
            const Message(),
            const Profile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_business,
            ),
            label: 'Board',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildContainer(
    int index,
    String title,
    String subtitle,
    List<String> avatarImages,
  ) {
    bool isSelected = selectedContainerIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Container(
        width: 370,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 4,
                offset: const Offset(0, 10),
              ),
            if (!isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 2),
              ),
            if (!isSelected)
              if (isSelected)
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 6,
                  blurRadius: 4,
                  offset: const Offset(-10, -10),
                ),
            if (isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 4,
                offset: const Offset(10, -10),
              ),
            if (isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 4,
                offset: const Offset(-10, 10),
              ),
            if (isSelected)
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 6,
                blurRadius: 4,
                offset: const Offset(10, 10),
              ),
          ],
          border: isSelected
              ? null
              : Border.all(
                  color: Colors.grey,
                  width: 0,
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? Colors.transparent
                        : Colors.grey, // Border color for unselected containers
                    width: 0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: selectedContainerIndex == index
                      ? const Color.fromARGB(232, 244, 67, 54)
                      : Colors.transparent,
                  child: selectedContainerIndex == index
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      : null,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 100),
                child: Stack(
                  children: [
                    for (var i = 0; i < avatarImages.length; i++)
                      Positioned(
                        top: 0,
                        left: i * 10,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(avatarImages[i]),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
