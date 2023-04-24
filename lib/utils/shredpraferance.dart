import 'package:shared_preferences/shared_preferences.dart';

class Shr {
  void createdShr(String email, String password) async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    spref.setString('e1', email);
    spref.setString('p1', password);
  }

  Future<Map> readShr() async {
    SharedPreferences sPref = await SharedPreferences.getInstance();
    String? email = sPref.getString('e1');
    String? password = sPref.getString('p1');
    Map m1 = {"e1": email, "p1": password};
    return m1;

  }
}
