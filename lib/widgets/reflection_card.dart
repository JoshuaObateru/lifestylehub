import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_style_hub/values/values.dart';


class ReflectionCard extends StatelessWidget {
  const ReflectionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width * .98,
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 25),
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 10, right: 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "My name, my origin,my backgroun and my experiences are what leveraged my success. The angle of the immigrant,through which i exmined the rality in france,distinguished me.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 1),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("- Gad Elmalch -"),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "quoteparrel.com",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: MaterialButton(
                  onPressed: () {},
                  color: accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Listen",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "QUOTE ON "),
                  TextSpan(
                      text: " SUCCESS", style: TextStyle(color: accentColor))
                ], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Today,17,Nov 2019",
                style: TextStyle(letterSpacing: 2),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: accentColor, fontSize: 16),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
