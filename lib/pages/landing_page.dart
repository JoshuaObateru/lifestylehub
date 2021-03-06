import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:life_style_hub/models/category.dart';
import 'package:life_style_hub/models/reflection.dart';
import 'package:life_style_hub/pages/Messages.dart';
import 'package:life_style_hub/pages/content_page.dart';
import 'package:life_style_hub/pages/reflection_page.dart';
import 'package:life_style_hub/values/colors.dart';
import 'package:life_style_hub/widgets/category_card.dart';
import 'package:life_style_hub/widgets/reflection_card.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;
  PageController _controller;
  List<Widget> pages = [
    ContentPage(), //0
    ReflectionsPage(), //1
    Messages(), //2
    ContentsPage() //3
  ];

  @override
  void initState() {
    _scaffoldKey = GlobalKey<ScaffoldState>();
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: customAppBar(_scaffoldKey),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    DrawerHeader(),
                    SizedBox(
                      height: 15,
                    ),
                    DrawerTiles(
                      onPress: () {
                        setState(() {
                          _controller.jumpToPage(0);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 10,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 220,
                            decoration: BoxDecoration(
                                color: accentColor,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "SUBSCRIPTIONS",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    DrawerTiles(
                      icon: MaterialCommunityIcons.message_processing,
                      title: "MESSAGES",
                      onPress: () {
                        setState(() {
                          _controller.jumpToPage(2);
                        });
                      },
                    ),
                    DrawerTiles(
                      icon: SimpleLineIcons.calendar,
                      title: "TASKS",
                    ),
                    DrawerTiles(
                      icon: SimpleLineIcons.target,
                      title: "REFLECTION",
                      onPress: () {
                        setState(() {
                          _controller.jumpToPage(1);
                        });
                      },
                    ),
                    DrawerTiles(
                      icon: Icons.shop,
                      title: "DIARY",
                    ),
                    DrawerTiles(
                      icon: Icons.settings,
                      title: "SETTINGS",
                    ),
                    DrawerTiles(
                      icon: Icons.edit,
                      title: "COACHING",
                      onPress: () {
                        setState(() {
                          _controller.jumpToPage(3);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: accentColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Logout"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.exit_to_app)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: pages,
      ),
    );
  }

  AppBar customAppBar(GlobalKey<ScaffoldState> key) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          key.currentState.openDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            width: 30,
            height: 25,
            decoration: BoxDecoration(
                color: backgroundColor, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              MaterialCommunityIcons.menu,
              size: 45,
              color: LSHBlackColor,
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
          child: Container(
            width: 30,
            height: 25,
            decoration: BoxDecoration(
                color: backgroundColor, borderRadius: BorderRadius.circular(5)),
            child: Icon(
              MaterialCommunityIcons.bookmark_outline,
              size: 20,
              color: LSHBlackColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
          child: Container(
            width: 30,
            height: 25,
            decoration: BoxDecoration(
                color: backgroundColor, borderRadius: BorderRadius.circular(5)),
            child: Icon(
              MaterialCommunityIcons.settings,
              size: 20,
              color: LSHBlackColor,
            ),
          ),
        ),
      ],
    );
  }
}

class ContentPage extends StatelessWidget {
  const ContentPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ReflectionHeader(),
            Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: reflections.length,
                    itemBuilder: (context, index) {
                      return ReflectionCard(
                        reflection: reflections[index],
                      );
                    })),
            Center(
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width * .95,
                height: 40,
                onPressed: () {},
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "View All "),
                    TextSpan(
                        text: "To-do List",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ], style: TextStyle(color: LSHBlackColor, fontSize: 18)),
                ),
                color: accentColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "CATEGORIES",
                          style: TextStyle(fontSize: 20, color: LSHBlackColor),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 20, color: LSHBlackColor),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Navigator.of(context).pushNamed("cat-view");
                          },
                          child: CategoryCard(
                            category: categories[index],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(
                  color: LSHBlackColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Tunde Burby!",
                  style: TextStyle(fontSize: 20, color: LSHBlackColor),
                ),
                Text(
                  "gold.oni@gmail.com",
                  style: TextStyle(color: LSHBlackColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: MaterialButton(
                    height: 20,
                    onPressed: () {},
                    color: accentColor,
                    child: Text(
                      "profile",
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerTiles extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onPress;
  const DrawerTiles({
    Key key,
    this.icon = MaterialIcons.book,
    this.title = "DASHBOARD",
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 5),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 30,
              color: Color(0xFF888C98),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: LSHBlackColor),
            )
          ],
        ),
      ),
    );
  }
}

class ReflectionHeader extends StatelessWidget {
  const ReflectionHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "REFLECTIONS",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: LSHBlackColor),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                "Put down your plans and thought!",
                style: TextStyle(wordSpacing: 4, color: LSHBlackColor),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "Go to Diary",
                style: TextStyle(
                    color: accentColor,
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
