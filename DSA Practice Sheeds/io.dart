void main() async {
  int Game = 3;
  int Room = 3;

  outerLoop:
  for (var i = 1; i <= Game; i++) {
    for (var j = 1; j <= Room; j++) {
      print("Checking Level $i, Room $j");
      if (i == 2 && j == 2) {
        
        break outerLoop;
      }
    }
  }
  print('Scanning stopped');
}
