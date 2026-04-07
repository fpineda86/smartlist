class Product {
  final String id;
  final String name;
  final double priceAmazon;
  final double priceEbay;
  final bool isChecked;
  final int urgencyScore;

  Product({
    required this.id,
    required this.name,
    required this.priceAmazon,
    required this.priceEbay,
    required this.urgencyScore,
    this.isChecked = false,
  });

  /// Creates a copy of this Product instance with optional field updates
  Product copyWith({
    String? id,
    String? name,
    double? priceAmazon,
    double? priceEbay,
    bool? isChecked,
    int? urgencyScore,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      priceAmazon: priceAmazon ?? this.priceAmazon,
      priceEbay: priceEbay ?? this.priceEbay,
      isChecked: isChecked ?? this.isChecked,
      urgencyScore: urgencyScore ?? this.urgencyScore,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, priceAmazon: $priceAmazon, priceEbay: $priceEbay, isChecked: $isChecked, urgencyScore: $urgencyScore)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          priceAmazon == other.priceAmazon &&
          priceEbay == other.priceEbay &&
          isChecked == other.isChecked &&
          urgencyScore == other.urgencyScore;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      priceAmazon.hashCode ^
      priceEbay.hashCode ^
      isChecked.hashCode ^
      urgencyScore.hashCode;
}
