import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late int selectedContainerIndex;
  @override
  void initState() {
    super.initState();
    selectedContainerIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          buildContainer(0),
          const SizedBox(height: 10),
          buildContainer(1),
          const SizedBox(height: 10),
          buildContainer(2),
        ],
      ),
    );
  }

  Widget buildContainer(int index) {
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
            if (selectedContainerIndex == index)
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 6,
                blurRadius: 12,
                offset: const Offset(0, 10),
              ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  index == 0
                      ? 'Landing Page Design'
                      : index == 1
                          ? 'Improvement Color'
                          : 'Home Banking Mobile App',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  index == 0
                      ? 'Today, 10:31 AM'
                      : index == 1
                          ? '31 March 2023, 02:42 PM'
                          : '1 April 2023, 09:29 AM',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    Positioned(
                      top: 0,
                      left: 18,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/profile2.jpg'),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 30,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/profile3.jpg'),
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
