import 'dart:io';

void main(List<String> arguments) {
  while (true) {
    stdout.write("""
================== SEMI CALCULATOR ==================
1. Add two numbers
2. Subtract two numbers
3. Multiply two numbers
4. Divide two numbers
5. Exit
Enter your choice (number or phrase): """);

    String? choice = stdin.readLineSync();

    if (choice == null || choice.trim().isEmpty) {
      print("Invalid input. Please try again.\n");
      continue;
    }

    if (choice == "5" || choice.toLowerCase() == "exit") {
      print("Thanks\n");
      break;
    }

    stdout.write("Enter the first number: ");
    double? num1 = double.tryParse(stdin.readLineSync()!);

    stdout.write("Enter the second number: ");
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null) {
      print("Invalid number(s), please try again.\n");
      continue;
    }

    if (choice == "1" || choice.toLowerCase() == "add two numbers") {
      print("Result: ${sumTwoNums(num1, num2)}\n");
    } else if (choice == "2" ||
        choice.toLowerCase() == "subtract two numbers") {
      print("Result: ${subtractTwoNums(num1, num2)}\n");
    } else if (choice == "3" ||
        choice.toLowerCase() == "multiply two numbers") {
      print("Result: ${multiplyTwoNums(num1, num2)}\n");
    } else if (choice == "4" || choice.toLowerCase() == "divide two numbers") {
      print("Result: ${divideTwoNums(num1, num2)}\n");
    } else {
      print("Invalid choice, please choose again.\n");
    }
  }
}

double sumTwoNums(double num1, double num2) {
  return num1 + num2;
}

double subtractTwoNums(double num1, double num2) {
  return num1 - num2;
}

double multiplyTwoNums(double num1, double num2) {
  return num1 * num2;
}

double divideTwoNums(double num1, double num2) {
  if (num2 == 0) {
    print("Error: Division by zero is not allowed.");
    return 0;
  }
  return num1 / num2;
}
