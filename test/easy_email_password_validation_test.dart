import 'package:flutter_test/flutter_test.dart';

import 'package:easy_email_password_validation/easy_email_password_validation.dart';

void main() {
  group("Password Validation", () {
    test('Password Has Number at least 8 numbers', () {
      expect(EasyEmailPasswordValidation.hasMinimumLength("12345678"), true);
    });

    test("Password Has Number less than 8 numbers", () {
      expect(EasyEmailPasswordValidation.hasMinimumLength("1234567"), false);
    });

    test("Password Has Number more than 8 numbers", () {
      expect(EasyEmailPasswordValidation.hasMinimumLength("12345"), false);
    });
    test("Password Has Lower Letter", (){
      expect(EasyEmailPasswordValidation.hasLowerLetter("m"), true);
    });
    test("Password Hasn't Lower Letter", (){
      expect(EasyEmailPasswordValidation.hasLowerLetter("N"), false);
    });
    test("Password Has Upper Letter", (){
      expect(EasyEmailPasswordValidation.hasUpperLetter("M"), true);
    });
    test("Password Hasn't Upper Letter", (){
      expect(EasyEmailPasswordValidation.hasUpperLetter("n"), false);
    });
    test("Password Has Special Character Letter", (){
      expect(EasyEmailPasswordValidation.hasSpecialCharacter("@"), true);
    });
    test("Password Has Number", (){
      expect(EasyEmailPasswordValidation.hasANumber("11"), true);
    });
    test("Password Hasn't Number", (){
      expect(EasyEmailPasswordValidation.hasANumber("M"), false);
    });
    test("Password Is Empty", () {
      expect(EasyEmailPasswordValidation.hasANumber(""), false);
    });
    test("Password Has Matched Password", (){
      expect(EasyEmailPasswordValidation.hasMatchedPassword("12345678", "12345678"), true);
    });
    test("Password Hasn't Matched Password", (){
      expect(EasyEmailPasswordValidation.hasMatchedPassword("12345678", "123456781"), false);
    });
    test("Password Is Valid", () {
      expect(EasyEmailPasswordValidation.isPasswordValid("25100@Mn"), true);
    });
  });
}
