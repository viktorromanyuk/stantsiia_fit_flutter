enum EntityType {
  fitness('fitness'),
  dance('dance'),
  photo('photo'),
  unset('unset');

  const EntityType(this.value);
  final String value;

  static EntityType fromString(String? value) {
    return EntityType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => EntityType.unset,
    );
  }
}

enum TrainingLevel {
  low('low'),
  medium('medium'),
  high('high');

  const TrainingLevel(this.value);
  final String value;

  static TrainingLevel fromString(String? value) {
    return TrainingLevel.values.firstWhere(
      (e) => e.value == value,
      orElse: () => TrainingLevel.low,
    );
  }
}

enum TrainingType {
  train('train'),
  dance('dance'),
  relax('relax');

  const TrainingType(this.value);
  final String value;

  static TrainingType fromString(String? value) {
    return TrainingType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => TrainingType.train,
    );
  }
}
