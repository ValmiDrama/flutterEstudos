// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_teste_unidade/model/person.dart';

void main() {
  final person = Person(
    name: 'ValmiDrama',
    age: 30,
    height: 1.77,
    weight: 64.4,
  );

  test('Imc deve vir 21.00', () {
    expect(person.imc, 21.00);
  });
}
