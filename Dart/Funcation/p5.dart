//positional named parameters
void playerInfo({int? jerno, String? name}) {
  print(jerno);
  print(name);
}

void main() {
  playerInfo(name: "virat", jerno: 18);
  playerInfo(name: "rohit");
}
//note :null sefty