import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_instagram_stories_example/story_view.dart';
import 'package:story_view/controller/story_controller.dart';


class StoryCircle extends StatelessWidget {
final int selectedIndex;
StoryController controller;
  StoryCircle({
    Key? key,required this.selectedIndex,required this.controller}) : super(key: key);
  @override
   
   TextStyle? storyCircleTextStyle;
   Color? highLightColor;
   double? circleRadius;
   double? circlePadding;
   double? borderThickness;
   TextStyle? fullPagetitleStyle;
   Color? paddingColor;

  /// Choose whether progress has to be shown
   bool? displayProgress;

  /// Color for visited region in progress indicator
   Color? fullpageVisitedColor;

  /// Color for non visited region in progress indicator
   Color? fullpageUnvisitedColor;

  /// Horizontal space between stories
   double? spaceBetweenStories;

  /// Whether image has to be show on top left of the page
   bool? showThumbnailOnFullPage;

  /// Size of the top left image
   double? fullpageThumbnailSize;

  /// Whether image has to be show on top left of the page
   bool? showStoryNameOnFullPage;

  /// Status bar color in full view of story
   Color? storyStatusBarColor;

  /// Function to run when page changes
   Function? onPageChanged;

  /// Duration after which next story is displayed
  /// Default value is infinite.
   Duration? autoPlayDuration;

  /// Show story name on main page
   bool showStoryName=true;

  Widget build(BuildContext context) {
    double? altRadius = 27;
    double altPadding;
    if (circleRadius != null) {
      altRadius = circleRadius;
    }
    if (circlePadding != null) {
      altPadding = altRadius! + circlePadding!;
    } else {
      altPadding = altRadius! + 3;
    }
    return Container(
      margin: EdgeInsets.fromLTRB(
        spaceBetweenStories ?? 5,
        0,
        spaceBetweenStories ?? 5,
        10,
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) =>StoryViewInsta(page: selectedIndex, controller: controller)
                ),
              );
            },
            child: CircleAvatar(
              radius: borderThickness != null
                  ? altPadding + borderThickness!
                  : altPadding + 1.5,
              backgroundColor: highLightColor ?? const Color(0xffcc306C),
              child: CircleAvatar(
                backgroundColor: paddingColor ?? Colors.white,
                radius: altPadding,
                child: CircleAvatar(
                    radius: altRadius,
                    backgroundColor: Colors.white,
                    backgroundImage: selectedIndex==2?NetworkImage("https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
              ):selectedIndex==1?NetworkImage(
                      "https://wallpaperaccess.com/full/16568.png",
                    ):NetworkImage(
                      "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
                    ),
                ), ),),),
          const SizedBox(height: 5),
          //showStoryName
           //   ? Text(
           //       story![selectedIndex!].name,
             //     style: storyCircleTextStyle ?? const TextStyle(fontSize: 13),
               // )
              //: const Center()
        ],
      ),
    );
  }
}
