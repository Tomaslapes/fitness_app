import 'package:scoped_model/scoped_model.dart';
import 'package:mysql1/mysql1.dart';
import 'package:fitness_app/models/DiaryEntry.dart';
import 'package:fitness_app/loginInfo.dart';

class DiaryScoped extends Model{

  List<DiaryEntry> diaryEntries = [];
  bool dataDownloaded = false;

  Future<Results> connectToDB(String sqlCommand) async{
    final connection = await MySqlConnection.connect(new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    ));
    var results = await connection.query(sqlCommand);
    print(results.runtimeType);

    await connection.close();

    return results;
  }

  void getData()async{
    if(!dataDownloaded){
      Results results = await connectToDB("SELECT * FROM workoutDiary");
      if(diaryEntries.length !=0){
        diaryEntries.clear();
      }
      for (var row in results){
        print(row["name"]);
        print(row["date"].toString());
        List<String> _dateLst1 = row["date"].toString().split(" ");
        List<String> _dateLst = _dateLst1[0].toString().split("-");
        String _name = row["name"].toString();
        String _date = row["date"].toString().split(" ")[0];
        String _text = row["text"].toString();
        String _duration = row["duration"].toString();
        diaryEntries.add(DiaryEntry(_name, row["date"], _text,_duration));
      }
    }
    dataDownloaded = true;
    notifyListeners();
  }

  void uploadData(String name, String description, String duration)async{
    DateTime date = DateTime.now();
    Results results = await connectToDB("INSERT INTO `workoutDiary`(`name`, `date`, `text`, `duration`) VALUES (\"$name\",\"${date.year}.${date.month}.${date.day}\",\"$description\",\"$duration\")");
    //print(results.toString());
    dataDownloaded = false;
    notifyListeners();
  }
}