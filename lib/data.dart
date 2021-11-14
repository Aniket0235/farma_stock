class data{
  late String name;
  late String imageUrl;
  data(this.name,this.imageUrl);

  data.fromjson(Map<String,dynamic> json){
    name =json["name"];
    imageUrl=json["imageUrl"];
  }
}