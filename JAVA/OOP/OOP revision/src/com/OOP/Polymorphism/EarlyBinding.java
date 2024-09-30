package com.OOP.Polymorphism;

class Animal1 {
    static void staticMethod() {
        System.out.println("Static method in Animal");
    }
}

class Dog1 extends Animal1 {
    static void staticMethod() {
        System.out.println("Static method in Dog");
    }
}

class Main1 {
    public static void main(String[] args) {
        Animal1 animal = new Dog1();
        animal.staticMethod(); // Outputs "Static method in Animal"
    }
}
 /* Early Binding: Early Binding in Java Polymorphism
Early binding, also known as static binding, refers to the compile-time association of a method call to a specific method. In early binding, the method to be invoked is determined at compile time rather than at runtime. This is typical of methods that are not polymorphic, such as static methods, private methods, and final methods.

Key Characteristics of Early Binding
Compile-Time Resolution: The method call is resolved at compile time.
Non-Polymorphic: Does not support polymorphic behavior (method overriding is not involved).
Performance: Generally faster than dynamic binding because the method call is resolved at compile time.
Static, Private, and Final Methods: These methods are bound at compile time. */

