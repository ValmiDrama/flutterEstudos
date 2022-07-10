import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_teste_unidade/caunter.dart';

void main() {
  group('Counter', () {
    test(
      'Counter value should be incremented',
      () {
        final counter = Counter();

        counter.increment();
        expect(counter.value, greaterThanOrEqualTo(1));
      },
      //pula teste ou grupo
      // skip: true,
    );
    test(
      'Counter value should be decremented',
      () {
        final counter = Counter();

        counter.decrement();
        expect(counter.value, -1);
      },
    );
  });
}
