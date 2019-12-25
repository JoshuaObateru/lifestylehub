import 'package:flutter/material.dart';
import 'package:life_style_hub/models/reflection.dart';
import 'package:life_style_hub/values/values.dart';

class Audios extends StatefulWidget {
  Audios({Key key}) : super(key: key);

  @override
  _AudiosState createState() => _AudiosState();
}

class _AudiosState extends State<Audios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              backgroundColor: accentColor,
              icon: Icon(Icons.music_note),
              title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.folder), title: Text(""))
        ],
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            AudioPlayer(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: (0.8),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(
                                  "${reflections[index].imageUrl}"),
                              fit: BoxFit.cover),
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("${reflections[index].author}"),
                      ),
                    );
                  },
                  itemCount: reflections.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Something in the way"),
                SizedBox(
                  height: 5,
                ),
                Text("Nigeria"),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 2,
                      width: 180,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Container(
                      height: 2,
                      width: 100,
                      decoration: BoxDecoration(color: accentColor),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.pause,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.fast_forward,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
