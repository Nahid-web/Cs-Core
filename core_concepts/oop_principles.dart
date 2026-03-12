/// # Object-Oriented Programming (OOP) Principles
///
/// OOP is a programming paradigm based on the concept of "objects," which can 
/// contain data and code.
///
/// ## The Four Pillars of OOP
///
/// ### 1. Encapsulation
/// Bundling the data (variables) and the methods that operate on the data 
/// into a single unit (class) and restricting access to some details.
///
/// ### 2. Abstraction
/// Hiding complex implementation details and showing only the necessary 
/// features of an object.
///
/// ### 3. Inheritance
/// Creating a new class from an existing class to reuse code.
///
/// ### 4. Polymorphism
/// The ability of different classes to be treated as instances of the same 
/// class through inheritance, allowing a single interface to represent different 
/// underlying forms (e.g., method overriding).

abstract class Animal {
  String name;
  
  Animal(this.name);

  /// Abstraction: Defining a behavior without implementation.
  void makeSelection();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  /// Polymorphism: Overriding the abstract method.
  @override
  void makeSelection() {
    print('$name says: Woof! Woof!');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSelection() {
    print('$name says: Meow!');
  }
}

void main() {
  print('--- OOP Principles Practice ---');

  // Polymorphism in action: treating different animals as the base class
  List<Animal> animals = [
    Dog('Buddy'),
    Cat('Luna'),
  ];

  for (var animal in animals) {
    animal.makeSelection();
  }
}
