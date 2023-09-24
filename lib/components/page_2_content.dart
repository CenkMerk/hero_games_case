import 'package:flutter/material.dart';

class Page2Content extends StatefulWidget {
  const Page2Content({super.key});

  @override
  State<Page2Content> createState() => _Page2ContentState();
}

class _Page2ContentState extends State<Page2Content> {
  int selectedBoxIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header section
            const Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('lib/assets/images/profil.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Ready to workout?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),

            //Info Containers
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    infoContainer(
                        Icons.favorite_border, "81", "BPM", "Heart Rade"),
                    Container(
                      width: 3.0,
                      height: 50.0,
                      color: Colors.indigo[200],
                    ),
                    infoContainer(Icons.list, "32,5", "%", "To-do"),
                    Container(
                      width: 3.0,
                      height: 50.0,
                      color: Colors.indigo[200],
                    ),
                    infoContainer(Icons.whatshot, "1000", "cal", "Calorie"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //title
            const Text(
              "Workout Programs",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),

            //programs options
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBox(0, "All Types"),
                buildBox(1, "Full Body"),
                buildBox(2, "Upper"),
                buildBox(3, "Lower"),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),

            //exercise cards
            exerciseCard(7, "Morning Yoga", 30, "lib/assets/images/yoga1.webp"),
            exerciseCard(3, "Exercises 1", 10, "lib/assets/images/yoga2.webp"),
            exerciseCard(5, "Exercises 2", 20, "lib/assets/images/yoga3.webp"),
            exerciseCard(4, "Exercises 3", 5, "lib/assets/images/yoga4.webp"),
          ],
        ),
      ),
    );
  }

  Widget buildBox(int index, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBoxIndex = index;
        });
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 3.0,
              color: selectedBoxIndex == index
                  ? Colors.indigo
                  : Colors.transparent,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: selectedBoxIndex == index
                  ? Colors.indigo
                  : Colors.indigo[200],
            ),
          ),
        ),
      ),
    );
  }
}

Container exerciseCard(int days, String title, int time, String img) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
      color: Colors.indigo[100],
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Text(
                    "$days days",
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Improve mental focus",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Icon(Icons.access_time),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "$time mins",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Image.asset(
            img,
            height: 100,
          )
        ],
      ),
    ),
  );
}

Row infoContainer(IconData icon, String value, String type, String text) {
  return Row(
    children: [
      Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 16.0),
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Text(
                value,
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                type,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      )
    ],
  );
}
