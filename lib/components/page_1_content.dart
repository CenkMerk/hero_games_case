import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Page1Content extends StatelessWidget {
  const Page1Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //page1 content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Row(
              children: [
                Text(
                  "Hello,  ",
                  style: TextStyle(color: HexColor("584056"), fontSize: 25.0),
                ),
                Text(
                  "Sara Lose",
                  style: TextStyle(
                      color: HexColor("584056"),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "How are you feeling today ?",
              style: TextStyle(color: HexColor("584056"), fontSize: 16.0),
            ),
            const SizedBox(
              height: 10.0,
            ),

            //emotion options
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                emojiContainer("😍", "Love"),
                emojiContainer("😎", "Cool"),
                emojiContainer("😃", "Happy"),
                emojiContainer("😟", "Sad"),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),

            //feature title section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Feature",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See more",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.green[800],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),

            //feature card section
            Container(
              decoration: BoxDecoration(
                color: HexColor("9ACCCD"),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Positive vibes",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.green[800],
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "Boost your mood with",
                          style: TextStyle(fontSize: 17.0, letterSpacing: 1.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "pozitives vibes",
                          style: TextStyle(fontSize: 17.0, letterSpacing: 1.0),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.green[800],
                            ),
                            const Text(
                              "10 mins",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      'lib/assets/images/dogg.jpg',
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),

            //exercise title section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Exercise",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See more",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.green[800],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),

            //exercise option cards section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                exerciseContainer(
                  context,
                  "Relaxation",
                  'lib/assets/images/relax.png',
                  "F9F5FF",
                ),
                exerciseContainer(
                  context,
                  "Meditation",
                  'lib/assets/images/medi.png',
                  "FDF2FA",
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                exerciseContainer(
                  context,
                  "Beathing",
                  'lib/assets/images/breath.png',
                  "FFFAF5",
                ),
                exerciseContainer(
                  context,
                  "Yoga",
                  'lib/assets/images/yoga.png',
                  "F0F9FF",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Container exerciseContainer(
    BuildContext context, String text, String image, String color) {
  return Container(
    width: (MediaQuery.of(context).size.width - 70.0) / 2,
    height: 70.0,
    decoration: BoxDecoration(
      color: HexColor(color),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 50.0,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          )
        ],
      ),
    ),
  );
}

Column emojiContainer(String emoji, String text) {
  return Column(
    children: [
      Container(
        width: 50.0,
        height: 50.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey,
        ),
        child: Center(
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      Text(text),
    ],
  );
}
