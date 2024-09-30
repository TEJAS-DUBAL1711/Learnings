mixin DemoParent{
  void m1(){
    print("in m1-DemoParent");
  }
}
class Demo{
  void m2(){
    print("in m2 Demo");
  }
}
class DemoChild extends DemoParent,Demo{

}
void main(){
  
}