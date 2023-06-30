import 'dart:math';

void main() {
  // Bismillahir-Rahmanir-Rahim
  // Allahumma Salli 'ala Muhammad

  // Write a program that takes a list of numbers as input and prints the
  // even numbers in the list using a for loop.
  void even(List nums) {
    List evenNums = List.empty(growable: true);
    for (var i in nums) {
      i % 2 == 0 ? evenNums.add(i) : 0;
    }
    print(evenNums);
  }

  even([2, 3, 4, 5, 6, 7, 8, 9, 10]); // > [2, 4, 6, 8, 10]

  //  Write a program that prints the Fibonacci sequence up to a given
  // number using a for loop.

  void fibonacci(int limit) {
    List nums = [0, 1];
    while (true) {
      int num = nums[nums.length - 1] + nums[nums.length - 2];
      if (num < limit) {
        nums.add(num);
      } else {
        break;
      }
    }
    print(nums);
  }

  fibonacci(20); // > [0, 1, 1, 2, 3, 5, 8, 13]

  // Implement a code that checks whether a given number is prime or not.
  void checkPrime(int n) {
    bool isPrime = true;
    for (int i = 2; i < sqrt(n); i++) {
      if (n % i == 0) {
        isPrime = false;
      }
    }
    isPrime ? print("Number is prime") : print("Number not prime");
  }

  checkPrime(101); // > Number is prime
  checkPrime(24); // > Number not prime
  checkPrime(63); // > Number not prime

  // Implement a code that finds the factorial of a number using a while
  // or for loop
  void factorial(int num) {
    for (int i = num - 1; i > 0; i--) {
      num *= i;
    }
    print(num);
  }

  factorial(5); // > 120

  //  Write a program that calculates the sum of all the digits in a given
  // number using a while loop.
  void sumOfDigits(int num) {
    int sum = 0;
    String numAsString = num.toString();
    for (int i = 0; i < numAsString.length; i++) {
      sum += int.parse(numAsString[i]);
    }
    print(sum);
  }

  sumOfDigits(123456); // > 21
}
