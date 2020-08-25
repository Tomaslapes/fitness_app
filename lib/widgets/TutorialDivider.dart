import 'package:flutter/material.dart';
class TutorialDivider extends StatelessWidget {
  @override
  String text;
  bool showText;
  bool largeText = true;
  TutorialDivider([this.text,this.largeText]){
    showText = !(this.text==null);
    if(largeText==null){
      largeText = true;
    }
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("lib/images/dot.png",scale: 5,),
          !showText? SizedBox.shrink():Text(text,
            style: TextStyle(
                fontFamily: "Open-sans-light",
                fontSize: largeText? 45:35,
                wordSpacing: 2,
            ),),
          SizedBox(height: 3,),
          Image.asset("lib/images/dot.png",scale: 5,),
          SizedBox(height: 3,),
          Image.asset("lib/images/dot.png",scale: 5,color: Colors.orange,)
        ],
      ),
    );
  }
}

