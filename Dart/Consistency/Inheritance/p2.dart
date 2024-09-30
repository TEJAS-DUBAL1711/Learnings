class Parent{

  int x=10;
  String str1="Name";

  void parentMethod(){
    print(x);
    print(str1);
  }
}
class Child extends Parent{
  int y=20;
  String str2="data";

  void childMethod(){
    print(y);
    print(str2)
  }
}
void main(){
  Parent obj1=new Parent();
  print(obj1.y);
  print(obj1.str1);
  obj1.childMethod();
}