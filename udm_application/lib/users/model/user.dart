class User
{
    int id;
    int studentID;
    String username;
    String stud_password;


  User(
    this.id,
    this.studentID,
    this.username,
    this.stud_password,
  );

  factory User.fromJson(Map<String, dynamic> json) => User(
    int.parse(json["id"]),
    json["studentID"],
    json["username"],
    json["stud_password"],
  );

  Map<String, dynamic> toJson() =>
    {
    'id':id.toString(),
    'studentID':studentID,
    'username': username,
    'stud_password': stud_password,
    };
}