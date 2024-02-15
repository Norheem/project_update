import 'package:flutter/material.dart';
import 'package:project_update/screens/home.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  int selectedContainerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Redesign Landing Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                right: 150,
                bottom: 5,
              ),
              child: Text(
                'Redesign Landing Page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Due Date',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Sunday, 23 April 2023',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65),
                  child: Container(
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(186, 255, 153, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'On Progress',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, bottom: 60),
                  child: Text(
                    'Assign',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Naufal')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage('assets/profile3.jpg'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 9),
                            child: Text('Hanif'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage('assets/profile2.jpg'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('Ramadhan'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Text(
                'Revamp the landing page with a modern layout, clear messaging, and user-friendly navigation to improve user engagement and conversions.',
                style: TextStyle(
                  fontSize: 15,
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
                    'Task',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 20,
            //     right: 20,
            //   ),
            //   child: Column(
            //     children: [
            //       Container(
            //         width: 370,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 4,
            //               blurRadius: 0,
            //               offset: const Offset(0, 10),
            //             ),
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 10,
            //               blurRadius: 6,
            //               offset: const Offset(-10, 0),
            //             ),
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 10,
            //               blurRadius: 6,
            //               offset: const Offset(10, 0),
            //             ),
            //           ],
            //         ),
            //         child: const Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.all(8.0),
            //               child: CircleAvatar(
            //                 radius: 20,
            //                 backgroundColor: Color.fromARGB(232, 244, 67, 54),
            //                 child: Icon(
            //                   Icons.check,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(left: 10, top: 10),
            //               child: Column(
            //                 children: [
            //                   Text(
            //                     'Landing Page Design',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   Text(
            //                     "Today, 10:31 AM",
            //                     style: TextStyle(
            //                       color: Colors.grey,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             Expanded(
            //               child: Padding(
            //                 padding: EdgeInsets.only(top: 20, left: 100),
            //                 child: Stack(
            //                   children: [
            //                     Positioned(
            //                       top: 0,
            //                       left: 5,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile.jpg'),
            //                       ),
            //                     ),
            //                     Positioned(
            //                       top: 0,
            //                       left: 18,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile2.jpg'),
            //                       ),
            //                     ),
            //                     Positioned(
            //                       top: 0,
            //                       left: 30,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile3.jpg'),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         width: 370,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 0,
            //               blurRadius: 8,
            //               offset: const Offset(0, 0),
            //             ),
            //           ],
            //         ),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: CircleAvatar(
            //                 radius: 20,
            //                 backgroundColor: Colors.transparent,
            //                 // backgroundColor:
            //                 //     Color.fromARGB(232, 244, 67, 54),
            //                 // child: Icon(
            //                 //   Icons.check,
            //                 //   color: Colors.white,
            //                 // ),
            //                 child: Container(
            //                   width: 100,
            //                   height: 100,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     border: Border.all(
            //                       color: Colors.grey,
            //                       width: 0.1,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             const Padding(
            //               padding: EdgeInsets.only(top: 10),
            //               child: Column(
            //                 children: [
            //                   Padding(
            //                     padding: EdgeInsets.only(right: 25),
            //                     child: Text(
            //                       'Improvement Color',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.only(left: 20),
            //                     child: Text(
            //                       "31 March 2023, 02:42 PM",
            //                       style: TextStyle(
            //                         color: Colors.grey,
            //                         // fontSize: 13,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             const Expanded(
            //               child: Padding(
            //                 padding: EdgeInsets.only(top: 20, left: 60),
            //                 child: Stack(
            //                   children: [
            //                     Positioned(
            //                       top: 0,
            //                       left: 5,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile.jpg'),
            //                       ),
            //                     ),
            //                     Positioned(
            //                       top: 0,
            //                       left: 18,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile2.jpg'),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         width: 370,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.grey.withOpacity(0.2),
            //               spreadRadius: 0,
            //               blurRadius: 8,
            //               offset: const Offset(0, 0),
            //             ),
            //           ],
            //         ),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: CircleAvatar(
            //                 radius: 20,
            //                 backgroundColor: Colors.transparent,
            //                 foregroundColor: Colors.red,
            //                 //     Color.fromARGB(232, 244, 67, 54),
            //                 // child: Icon(
            //                 //   Icons.check,
            //                 //   color: Colors.white,
            //                 //),
            //                 child: Container(
            //                   width: 100,
            //                   height: 100,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     border: Border.all(
            //                       color: Colors.grey,
            //                       width: 0.1,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             const Padding(
            //               padding: EdgeInsets.only(left: 10, top: 10),
            //               child: Column(
            //                 children: [
            //                   Padding(
            //                     padding: EdgeInsets.only(right: 25),
            //                     child: Text(
            //                       'Home Banking Moble App',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.only(right: 40),
            //                     child: Text(
            //                       "1 April 2023, 09:29 AM",
            //                       style: TextStyle(
            //                         color: Colors.grey,
            //                         // fontSize: 13,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             const Expanded(
            //               child: Padding(
            //                 padding: EdgeInsets.only(top: 20, left: 40),
            //                 child: Stack(
            //                   children: [
            //                     Positioned(
            //                       top: 0,
            //                       left: 5,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile.jpg'),
            //                       ),
            //                     ),
            //                     Positioned(
            //                       top: 0,
            //                       left: 18,
            //                       child: CircleAvatar(
            //                         radius: 10,
            //                         backgroundImage:
            //                             AssetImage('assets/profile2.jpg'),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
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
                        left: i * 13.0,
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
