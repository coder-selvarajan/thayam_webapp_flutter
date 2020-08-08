import 'package:flutter/material.dart';
import 'package:thayam_webapp_flutter/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyLeftPadding = screenWidth * 0.18;

    print("screenWidth: $screenWidth");
    print("bodyLeftPadding: $bodyLeftPadding");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bodyLeftPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Thayam".toUpperCase(),
            style: Theme.of(context).textTheme.headline2.copyWith(
//                  color: kTextcolor.withOpacity(0.8),
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "is a board-game app similar to Ludo, but varies \n"
            "in board setup, dices, and pawn movements. \n"
            "This variant is originated from South-India.",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "We are releasing this app in few months time \non App Store & Google play. Stay tuned!",
            style: TextStyle(
              fontSize: 25,
              color: Colors.yellow.withOpacity(0.65),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "If you are interested in contributing this project \nplease connect with us on social media.",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black45.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod(
                      "open", ["https://www.instagram.com/selvarajan.t/"]);
                },
                child: Icon(
                  FontAwesomeIcons.instagramSquare,
                  color: Colors.black.withOpacity(0.65),
                  size: 60.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  js.context
                      .callMethod("open", ["https://twitter.com/selvarajant"]);
                },
                child: Icon(
                  FontAwesomeIcons.twitterSquare,
                  color: Colors.black.withOpacity(0.65),
                  size: 60.0,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod(
                      "open", ["https://github.com/coder-selvarajan"]);
                },
                child: Icon(
                  FontAwesomeIcons.githubSquare,
                  color: Colors.black.withOpacity(0.65),
                  size: 60.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
