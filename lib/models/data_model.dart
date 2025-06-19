class DataModel{
  String? name;
  String? email;
  String? time;
  DataModel(this.name,this.email,this.time);
}

List<DataModel> d = [
  DataModel("Raman", "raman@example.com", "10:00 AM"),
  DataModel("Pankaj", "pankaj@example.com", "10:30 AM"),
  DataModel("Sudhir", "sudhir@example.com", "11:00 AM"),
];