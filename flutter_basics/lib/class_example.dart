class Person {
  String name;
  int age;
  /******************* positional arugment********************************/
  // Person(String Name, int Age) {
  //   name = Name;
  //   age = Age;
  // }
  // Person ('mostafa',20);
  /************************* name argument ********************************/
  Person({String Name, int Age}) {
    name = Name;
    age = Age;
  }
  // Person(Name:"mostafa",Age:20); // no order is required
/************************************************************************** */
/*
  // Person({this.age, this.name});
  // Person(name:'mostafa',age:20);

  // Person({String Name, int Age = 10}) {
  //   // defulat value of the age = 30 ;
  // }*/
  Person.veryOld(this.name) {
    this.age = 90;
  }
  //var p3 = Person.veryOld('max');
}
