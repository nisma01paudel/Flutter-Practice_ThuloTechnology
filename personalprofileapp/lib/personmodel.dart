class Person {
  String? name;
  String? address;
  int? age;
  String? image;
  String? description;

  Person({this.name, this.address, this.age, this.image, this.description});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        name: json['name'],
        address: json['address'],
        age: json['age'],
        image: json['image'],
        description: json['description']);
  }
}
