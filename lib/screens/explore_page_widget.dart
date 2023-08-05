// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class explore_widget extends StatelessWidget {
  const explore_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 26),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xfff2f2f2),
                        hintText: 'Search articles',
                        // Add a clear button to the search bar
                        suffixIcon: TextButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.zero),
                                      side: BorderSide(color: Colors.white)))),
                          child: const Text("Cancel"),
                        ),
                        // Add a search icon or button to the search bar
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Perform the search here
                          },
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 35,
                      height: 15.0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(
                              start: 1.0, end: 1.0),
                          height: 5.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Text(
                      "Featured",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ]),
                    ),
                    Divider(),
                    TextButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      onPressed: () {},
                      child: const Row(children: [
                        Text(
                          'War in Ukraine',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.red),
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: [
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
              label: "Home",
            ),
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
                    icon: Icon(
                      Icons.explore,
                      color: Colors.red,
                    )),
                label: "Explore")
          ]),
    );
  }
}
