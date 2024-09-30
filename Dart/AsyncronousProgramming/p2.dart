import 'dart:io';

Future<String?> getOrder() {
  return Future.delayed(Duration(seconds: 5), () => placeOrder());
}

String? placeOrder() {
  print("enter your order");
  String? order = stdin.readLineSync();
  return order;
}

Future<String> getOrdermessege() async {
  String? Order = await getOrder();
  return "your order is $Order";
}

void main() async {
  print("start");
  print(await getOrdermessege());
  print("end");
}
// read documentation to understand Future class
