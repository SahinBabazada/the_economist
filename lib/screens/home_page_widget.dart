// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    // final EdgeInsets padding = MediaQuery.of(context).padding;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0),
            child: Column(
              children: [
                Row(children: [
                  Image.network(
                    "https://images-ext-2.discordapp.net/external/q1HOfXDGqX05ythGYzQwZ0PIeth5IYr3YVzgdwIGIrI/https/www.economist.com/engassets/google-search-logo.png?width=480&height=480",
                    width: 40,
                    height: 40,
                  ),
                  Spacer(),
                  IconButton.outlined(
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                      icon: Icon(Icons.settings))
                ]),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("NEWS FEED"),
                      Icon(Icons.volume_up_rounded)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 170,
                          height: 200,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://images-ext-2.discordapp.net/external/q1HOfXDGqX05ythGYzQwZ0PIeth5IYr3YVzgdwIGIrI/https/www.economist.com/engassets/google-search-logo.png?width=480&height=480",
                                  height: 150,
                                  // fit: BoxFit.cover,
                                  width: 150,
                                ),
                                Text("feed"),
                                Text("NEWS CONTENT FREE")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 200,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://images-ext-2.discordapp.net/external/q1HOfXDGqX05ythGYzQwZ0PIeth5IYr3YVzgdwIGIrI/https/www.economist.com/engassets/google-search-logo.png?width=480&height=480",
                                  height: 150,
                                  // fit: BoxFit.cover,
                                  width: 150,
                                ),
                                Text("feed"),
                                Text("NEWS CONTENT FREE")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 200,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://images-ext-2.discordapp.net/external/q1HOfXDGqX05ythGYzQwZ0PIeth5IYr3YVzgdwIGIrI/https/www.economist.com/engassets/google-search-logo.png?width=480&height=480",
                                  height: 150,
                                  // fit: BoxFit.cover,
                                  width: 150,
                                ),
                                Text("feed"),
                                Text("NEWS CONTENT FREE")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Life expectancy in America",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image.network(
                                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.lchcia.com%2Fwp-content%2Fuploads%2F2020%2F09%2FWebsite-News-Feed-Template-1.png&f=1&nofb=1&ipt=114515a6731f1608e2d1621b62047449b87fed98e06cbb40acfa9953c6d9c30b&ipo=images"),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "United States",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.red),
                                        ),
                                        Text(
                                          "Horrifying numbers of Americans will not make it to old age",
                                          style: TextStyle(
                                              fontSize: 29,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "America tolerates early rates of death well beyond those of other rich countries",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("11 min read"),
                                      IconButton.filled(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.bookmark_add_outlined)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 35,
                                    height: 15.0,
                                    child: Center(
                                      child: Container(
                                        margin: EdgeInsetsDirectional.only(
                                            start: 1.0, end: 1.0),
                                        height: 5.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Read more",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: IntrinsicHeight(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Leaders",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                                "How to reduce America's current wellfare"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "4 min read",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300),
                                        ),
                                        IconButton.filled(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.bookmark_add_outlined)),
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: IntrinsicHeight(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "United States",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                                "Fentanyl is spreading the opioid crisis into America's big cities"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "2 min read",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Row(
                                          children: [
                                            IconButton.filled(
                                                onPressed: () {},
                                                icon: Icon(Icons
                                                    .surround_sound_rounded)),
                                            IconButton.filled(
                                                onPressed: () {},
                                                icon: Icon(Icons
                                                    .bookmark_add_outlined)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/weekly');
                },
                icon: Icon(
                  Icons.weekend_outlined,
                  color: Colors.black,
                ),
              ),
              label: "Weekly"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/podcast');
                  },
                  icon: Icon(
                    Icons.podcasts,
                    color: Colors.black,
                  )),
              label: "Podcast"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/saved');
                },
                icon: Icon(
                  Icons.save_alt_rounded,
                  color: Colors.black,
                ),
              ),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/explore');
                  },
                  icon: Icon(Icons.explore)),
              label: "Explore")
        ]),
      ),
    );
  }
}
