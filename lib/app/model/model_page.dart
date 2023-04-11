class Counter {
  final int count;

  Counter({required this.count});

  Counter copyWith({int? count}) {
    return Counter(count: count ?? this.count);
  }
}
