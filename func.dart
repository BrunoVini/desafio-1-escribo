import 'dart:io';

main (){
print('Digite um número inteiro positivo: ');
  var input = stdin.readLineSync(); 

  if(input != null){
    try {
      var number = int.parse(input);
      if (number < 0) {
        print('Digite um número positivo \n');
        main();
      } else {
        var result = sum(number);
        print("Soma igual a: $result");
      }
    } catch (e) {
      print('Digite um número, não uma letra! \n');
      main();
    }
  }
}

sum(int a) {
  var arr = [];
  for (var i = 0; i < a; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      arr.add(i);
    }
  }
  return arr.reduce((a, b) => a + b);
}
