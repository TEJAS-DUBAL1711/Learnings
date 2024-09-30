void add(int a, int b) => a + b; //error nahi yet prototype varun return karate
int sub(int a, int b) => a - b;

void main() {
  add(10,
      5); //error nahi yet prototype varun samajate return karayache ki nahi.
  print(add(15, 5)); //error yeil karan void dele ahe ani print madhe lihalay
  print(sub(10, 5));
}
