package com.OOP.Polymorphism;

class Animal {
    void makeSound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
   // @Override
    void makeSound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
   // @Override
    void makeSound() {
        System.out.println("Cat meows");
    }
}

 class Main {
    public static void main(String[] args) {
        Animal myAnimal=new Dog();

       // myAnimal = new Dog();
        myAnimal.makeSound(); // Outputs "Dog barks"

        myAnimal = new Cat();
        myAnimal.makeSound();// Outputs "Cat meows"
    }
}
/* Late Binding in Java Polymorphism
Late binding, also known as dynamic binding or runtime binding, refers to the runtime resolution of a method call. In late binding, the method to be invoked is determined at runtime based on the actual object type rather than the reference type. This enables polymorphism, allowing a single method call to behave differently based on the object it is called on.

Key Characteristics of Late Binding
Runtime Resolution: The method call is resolved at runtime.
Polymorphic Behavior: Supports polymorphism, where the method to be executed depends on the actual object type.
Overridden Methods: Typically involves overridden methods in subclasses.
Flexibility: Allows for more flexible and extensible code.
Examples
Method Overriding
When a subclass provides a specific implementation of a method already defined in its superclass, the method call is resolved at runtime based on the actual object.*/