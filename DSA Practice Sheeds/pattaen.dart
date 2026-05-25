import 'dart:io';

void main() {
  var input = 12345;
  // var total = countnumber(input);
  // print(total);

  print(reverce(input));
}

int countnumber(int input) {
  var count = 0;

  while (input > 0) {
    count++;
    input = input % 10;
    print(input);
  }

  return count;
}

int reverce(int orginal) {
  int digit = 0;
  int rev = 0;

  while (orginal > 0) {
    digit = orginal % 10;
    orginal = orginal ~/ 10;
    rev = rev * 10 + digit;
   
  }

  return rev;
}
