import 'package:flutter/material.dart';

class TutorialCard extends StatefulWidget {
  @override
  String name = "Default card name";
  List<String> goals = [];
  String imageUrl;
  TutorialCard({this.name,this.goals,this.imageUrl});

  _TutorialCardState createState() => _TutorialCardState(this.name,this.goals,this.imageUrl);
}

class _TutorialCardState extends State<TutorialCard> {
  String name = "Default card name";
  List<String> goals = [];
  String imageUrl;
  _TutorialCardState(this.name,this.goals,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(35)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 9,
                  spreadRadius: 2,
                  color: Colors.black.withOpacity(0.1)
              )
            ]),
        child: Column(
          children: [
            Text(name,
            style: TextStyle(
              fontFamily: "Open-sans-semiBold",
              fontSize: 30,
              letterSpacing: 1.1
            ),),
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(itemBuilder: (context,index){
                        return(Row(
                          children: [
                            Row(
                              children: [
                                Text("${index+1}. ",
                                  style: TextStyle(
                                      fontFamily: "Open-sans-light",
                                      fontSize: 30,
                                      wordSpacing: 1
                                  ),),
                                Text(goals[index],
                                  style: TextStyle(
                                      fontFamily: "Open-sans-light",
                                      fontSize: 22,
                                      wordSpacing: 1
                                  ),)
                              ],

                            ),

                          ],
                        ));
                      },
                      itemCount: goals.length,),
                    ),
                  ),
                  imageUrl == null?SizedBox.shrink():Image.asset(imageUrl,
                      width: 150,
                  height: 180,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
