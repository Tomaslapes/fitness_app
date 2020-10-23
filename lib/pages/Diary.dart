import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/DiaryCard.dart';
import 'package:fitness_app/scopedModels/DiaryScoped.dart';
import 'package:scoped_model/scoped_model.dart';

class Diary extends StatefulWidget {
  @override
  _DiaryState createState() => _DiaryState();

}

class _DiaryState extends State<Diary> {
  @override
  final _formKey = GlobalKey<FormState>();
  final DiaryScoped diaryScoped = DiaryScoped();
  final nameController = TextEditingController();
  final descController = TextEditingController();
  final durController = TextEditingController();

  Widget build(BuildContext context) {
    return ScopedModel(
      model: diaryScoped,
      child: ScopedModelDescendant<DiaryScoped>(
        builder: (context,child,model){
          model.getData();
          return (Scaffold(
            body: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("lib/assets/topFlip.png"),
                    Positioned(child:Text("Workout\nDiary",
                      style: TextStyle(
                        fontSize: 45,
                        //fontWeight: FontWeight.w700,
                        fontFamily: "Open-Sans",//"Noto-Sans-ItalicBold",
                        letterSpacing: -1,
                        //"lib/assets/open-sans/OpenSans-BoldItalic.tff"
                      ),
                      textAlign: TextAlign.right,),
                      right: 35,
                      top: 30,),
                  ],
                ),
                Flexible(
                  child: ListView.builder(itemBuilder: (context,index){
                    return (DiaryCard(model.diaryEntries[index]));
                  },
                    itemCount: model.diaryEntries.length,),
                )
              ],
            ),
            backgroundColor: Colors.grey[800],
            floatingActionButton: FloatingActionButton(
                onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return(AlertDialog(
                      elevation: 20,
                      content: Form(
                          child: Container(
                            height: 300,
                            child: Column(
                        children: [
                            Text("New Diary entry",
                              style: TextStyle(
                                fontSize: 25,
                                //fontWeight: FontWeight.w700,
                                fontFamily: "Open-Sans",//"Noto-Sans-ItalicBold",
                                letterSpacing: -1,
                                //"lib/assets/open-sans/OpenSans-BoldItalic.tff"
                              ),),
                            Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Workout name"
                              ),
                              controller: nameController,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(decoration: InputDecoration(
                                  hintText: "Describe what you have achieved!"
                              ),
                              controller: descController
                                ,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(decoration: InputDecoration(
                                  hintText: "Duration"
                              ),
                                controller: durController,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(8),
                            child: RaisedButton(onPressed: (){
                              model.uploadData(nameController.text, descController.text, durController.text);
                              print("Saved! name: ${nameController.text} desc: ${descController.text} dur: ${durController.text}");
                              Navigator.pop(context);

                            },
                            child: Row(
                              children: [Icon(Icons.add),Text("Save")],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),),)
                        ],
                      ),
                          )),
                    ));
                  });
                },
            child: Icon(
              Icons.add
            ),
            backgroundColor: Color.fromARGB(255,255,207 , 33)),
          ));
        },
      ),
    );
  }
}
