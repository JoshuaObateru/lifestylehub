import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_style_hub/values/values.dart';
import 'package:life_style_hub/widgets/logo_widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)..init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 29,
              right: ScreenUtil.getInstance().setWidth(100),
              left: ScreenUtil.getInstance().setWidth(100),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text("Login",style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)
                  ],),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: ScreenUtil.getInstance().setWidth(140),
              left: ScreenUtil.getInstance().setWidth(140),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: ScreenUtil.getInstance().setHeight(135),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF386B4F),
                            offset: Offset(0.0,25.0),
                            blurRadius: 5
                        )
                      ]
                  ),
                ),
              ),
            ),
            Container(
              width: ScreenUtil.mediaQueryData.size.width,
              height: ScreenUtil.mediaQueryData.size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(60),
                  ),
                  Logo(),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: ScreenUtil.mediaQueryData.size.height * 0.68,
                    width: ScreenUtil.mediaQueryData.size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color(0xFF353A50),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),

                        ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 10),
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Full Name",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Phone",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Username",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Email Address",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Password",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Re-type Password",
                              filled: true,
                              fillColor: Color(0xFF5F6273),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container()
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: accentColor,
                          child: Text("REGISTER"),
                          minWidth: double.infinity,
                          height: 50,
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(20),
                        ),
                        InkWell(
                          onTap: ()=> Navigator.of(context).pushNamed("forget"),
                          child: Row(
                            children: <Widget>[
                              Text("Forgot Password?")
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
