
class User {
  final int id;
  final String dateCreated;
  final String name;
  final String birth;
  final String? address;
  final String? phoneNumber;
  final String? email;
  final String? avatar;
  final String password;

  User(this.id, this.dateCreated, this.name, this.birth, this.address, this.phoneNumber, this.email, this.avatar, this.password);
}

class Post {
  final int id;
  final String? dateCreated;
  final String title;
  final String? content;
  final List<String>? img;
  final String? status;
  final User? user;

  Post(this.id, this.dateCreated, this.title, this.content, this.img, this.status, this.user);

  String getUrl() {
    String res = title.toLowerCase() + " " + id.toString();
    const String Diacritics = "àáâãèéêếìíòóôõùúăđĩũơưăạảấầẩẫậắằẳẵặẹẻẽềềểễệỉịọỏốồổỗộớờởỡợụủứừửữựỳỵỷỹ";
    const String nonDiacritics = "aaaaeeeeiioooouuadiuouaaaaaaaaaaaaaeeeeeeeeiioooooooooooouuuuuuuyyyy";
    for(int i = 0; i < Diacritics.length; ++i) {
      res = res.replaceAll(Diacritics[i], nonDiacritics[i]);
    }
    res = res.trim();
    res = res.replaceAll(" ", "-");
    res = res.replaceAll("‘", "");
    res = res.replaceAll("’", "");
    return '/$res.html';;
  }

}

