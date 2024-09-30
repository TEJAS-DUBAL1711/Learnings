mixin Demo1{
  void fun1(){
    print("in fun1-Demo1");
  }
}
mixin Demo2 extends Demo1{
  void fun2(){
    print("in fun2-Demo2");
  }
}
class DemoChild with Demo1,Demo2{

}
void main(){
  DemoChild obj=DemoChild();
  obj.fun1();
  obj.fun2();
}

/*Error: Expected 'on' instead of this.
mixin Demo2 extends Demo1{ */