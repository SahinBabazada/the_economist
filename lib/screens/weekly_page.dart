// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, avoid_print

import 'package:flutter/material.dart';

final List<String> menu = [
  "The world this week",
  "Leaders",
  "Letters",
  "By Invitation",
  "Europe",
  "Britain",
  "United States",
  "Middle East & Africa",
  "The Americas",
  "Asia"
];

class WeeklyScreen extends StatefulWidget {
  WeeklyScreen({Key? key}) : super(key: key);

  @override
  _WeeklyScreenState createState() => _WeeklyScreenState();
}

class _WeeklyScreenState extends State<WeeklyScreen> {
  final ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_scrollPosition <= 50 ? 60 : 60),
        child: AnimatedCrossFade(
          crossFadeState: _scrollPosition <= 50
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 380),
          firstChild: AppBarFirst(),
          secondChild: AppBarSecond(),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Expanded(
                      child: Row(
                        children: menu
                            .map((e) => TextButton(
                                  onPressed: () {},
                                  child: Text(e,
                                      style: TextStyle(color: Colors.blue)),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings))
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 300,
                    padding: EdgeInsets.only(
                        left: 80, top: 20, right: 80, bottom: 10),
                    child: Image.network(
                      "https://www.economist.com/media-assets/image/20230701_DE_US.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      "The Humbling of Vladimir Putin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "July 29th 2023",
                    style: TextStyle(color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 10, left: 4, right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.play_circle_fill_outlined,
                              size: 26.0, color: Colors.blue),
                          label: Text(
                            'Play audio',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 25, right: 25, top: 10, bottom: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add, size: 26.0, color: Colors.blue),
                          label: Text(
                            'Build queue',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(
                                left: 25, right: 25, top: 10, bottom: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download_for_offline_rounded),
                      Text(" Edition downloaded."),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                  Divider(),
                  weeklyPost("The World this week"),
                  Divider(),
                  weeklyPost("Leaders")
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/weekly');
              },
              icon: Icon(
                Icons.weekend_outlined,
                color: Colors.red,
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
    );
  }

  Container weeklyPost(String name) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          WeeklyPostCard(),
          Divider(
            thickness: 0.4,
          ),
          WeeklyPostCard(),
          Divider(
            thickness: 0.4,
          ),
          WeeklyPostCard(),
        ],
      ),
    );
  }

  Container WeeklyPostCard() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The world this week",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Politics",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Spacer(),
              Image.network(
                "https://onepolitician.com/wp-content/uploads/2022/06/Political-Leaders.png",
                width: 140,
                height: 90,
                fit: BoxFit.cover,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "5 min read",
                style: TextStyle(color: Colors.black38),
              ),
              Row(
                children: [
                  Icon(Icons.volume_down_outlined),
                  Icon(Icons.bookmark_border)
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  AppBar AppBarFirst() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: const Text(
        "Weekly",
        style: TextStyle(
            color: Colors.black, fontSize: 26, fontWeight: FontWeight.w900),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Browse editions",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        )
      ],
    );
  }

  AppBar AppBarSecond() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: null,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      title: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  children: menu
                      .map((e) => TextButton(
                            onPressed: () {},
                            child:
                                Text(e, style: TextStyle(color: Colors.blue)),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
