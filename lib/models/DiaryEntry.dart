
class DiaryEntry{
  String name;
  DateTime date;
  String text;
  String duration;
  String dayOfWeek;

  DiaryEntry(this.name,this.date,this.text,this.duration){
    switch (date.weekday){
      case 1: {
        dayOfWeek = "Mon";
      }
      break;
      case 2: {
        dayOfWeek = "Tue";
      }
      break;
      case 3: {
        dayOfWeek = "Wed";
      }
      break;
      case 4: {
        dayOfWeek = "Thur";
      }
      break;
      case 5: {
        dayOfWeek = "Fri";
      }
      break;
      case 6: {
        dayOfWeek = "Sun";
      }
      break;
      case 7: {
        dayOfWeek = "Sat";
      }
      break;
    }
  }
}