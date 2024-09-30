void playerInfo({int? jerNo,String? name},[String? team="India"
]){
  print("$jerNo");
  print(name);
  print(team);
}
void main(){
  playerInfo(name:"virat",jerNo:18);
  playerInfo(jerNo:45,name:"rohit");
 // playerInfo(7,"dhobi");
}
//check next codes for understanding