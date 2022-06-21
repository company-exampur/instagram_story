import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryViewInsta extends StatefulWidget {
   StoryViewInsta({ Key? key,required this.page,required this.controller}) : super(key: key);
  @override
 final StoryController controller;
   int page;
  _StoryViewInstaState createState() => _StoryViewInstaState();
}

class _StoryViewInstaState extends State<StoryViewInsta> {
  late PageController _pageController;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _pageController = PageController(initialPage: widget.page);
    if(widget.page==1){
    return Scaffold(body:StoryView(
     controller: widget.controller,
      storyItems: [
        StoryItem.text(
          title:
          "Hello world!\nHave a look at some great Indian delicacies.. \n\nTap!",
          backgroundColor: Colors.orange,
          roundedTop: true,
        ),
        // StoryItem.inlineImage(
        //   NetworkImage(
        //       "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg"),
        //   caption: Text(
        //     "Banku & Tilapia. The food to keep you charged whole day.\n#1 Local food.",
        //     style: TextStyle(
        //       color: Colors.white,
        //       backgroundColor: Colors.black54,
        //       fontSize: 17,
        //     ),
        //   ),
        // ),
        StoryItem.inlineImage(
          url:
          "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
          controller: widget.controller,
          caption: Text(
            "Congratulations on ur achievement!!",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black54,
              fontSize: 17,
            ),
          ),
        ),
        StoryItem.inlineImage(
          url:
          "https://wallpaperaccess.com/full/16568.png",
          controller: widget.controller,
          caption: Text(
            "Happy Birthday",
            style: TextStyle(
              fontFamily: 'Dancing',
              color: Colors.white,
              backgroundColor: Colors.black54,
              fontSize: 17,
            ),
          ),
        )
      ],
      onStoryShow: (s) {
        print("Showing a story");

      },

      onComplete: () {
        print("Completed a cycle");

      },

      progressPosition: ProgressPosition.bottom,
      repeat: false,
      inline: true,
    ));
  }
 if(widget.page==2){
  return Scaffold(body:StoryView(
    storyItems: [
      StoryItem.text(
        title: "I guess you'd love to see more of our food. That's great.",
        backgroundColor: Colors.blue,
      ),
      StoryItem.text(
        title: "Nice!\n\nTap to continue.",
        backgroundColor: Colors.red,
        textStyle: TextStyle(
          fontFamily: 'Dancing',
          fontSize: 40,
        ),
      ),
      StoryItem.pageImage(
        url:
        "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
        caption: "Still sampling",
        controller: widget.controller,
      ),
      StoryItem.pageImage(
          url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
          caption: "Working with gifs",
          controller: widget.controller),
      StoryItem.pageImage(
        url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
        caption: "Hello, from the other side",
        controller: widget.controller,
      ),
      StoryItem.pageImage(
        url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
         caption: "Hello, from the other side2",
       controller: widget.controller,
      ),
    ],
    onStoryShow: (s) {
      print("Showing a story");
    },
    onComplete: () {
      print("Completed a cycle");

    },
    progressPosition: ProgressPosition.top,
    repeat: false,
    controller: widget.controller,
  ));
  }
  else{
    return Scaffold(body:StoryView(
      storyItems: [
        StoryItem.text(
          title: "I guess you'd love to see more of our food. That's great.",
          backgroundColor: Colors.blue,
        ),
        StoryItem.text(
          title: "Nice!\n\nTap to continue.",
          backgroundColor: Colors.red,
          textStyle: TextStyle(
            fontFamily: 'Dancing',
            fontSize: 40,
          ),
        ),

        StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Working with gifs",
            controller: widget.controller),

        StoryItem.pageImage(
          url: "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
          caption: "Hello, from the other side2",
          controller: widget.controller,
        ),
      ],
      onStoryShow: (s) {
        print("Showing a story");
      },
      onComplete: () {
        print("Completed a cycle");

      },
      progressPosition: ProgressPosition.top,
      repeat: false,
      controller: widget.controller,
    ));
 }

  }
}