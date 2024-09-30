abstract class IPL {
  void oCap();
  void pCap();
}

class Demo implements IPL {}

void main() {
  Demo obj = Demo();
}
/*Error: The non-abstract class 'Demo' is missing implementations for these members:
 - IPL.oCap
 - IPL.pCap */
