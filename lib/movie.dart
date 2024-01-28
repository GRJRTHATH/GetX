//make class observable by amking individual variables observable
//
/*class Movie {
  var name = "Predator".obs;
  var ticket = 200.obs;
}*/
// want to make entire classs as observable
class Movie {
  String? name;
  int? ticket;
  Movie({required this.name, required this.ticket});
}
