import 'package:flutter/material.dart';
import 'package:thayam_webapp_flutter/Components/default_button.dart';
import 'dart:js' as js;
import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double appbarHMargin = screenWidth * 0.10;

    return Container(
      margin: EdgeInsets.fromLTRB(appbarHMargin, 30, appbarHMargin, 30),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Text(
            "Thayam App",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
//          MenuItem(
//            title: "Github Repo",
//            press: () {},
//          ),
          DefaultButton(
            text: "Source Code in Github",
            press: () {
              js.context.callMethod(
                  "open", ["https://github.com/coder-selvarajan/Thayam"]);
            },
          ),
        ],
      ),
    );
  }
}
