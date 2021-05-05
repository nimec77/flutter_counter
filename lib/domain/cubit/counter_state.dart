part of 'counter_cubit.dart';

@immutable
class CounterState {
  final int? counterValue;

  const CounterState({required this.counterValue});

  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(counterValue: map['counterValue'] as int?);
  }

  @override
  String toString() => 'CounterState(counterValue: $counterValue)';
}
