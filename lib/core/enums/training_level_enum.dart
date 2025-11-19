enum TrainingLevelEnum {
  low('low'),
  medium('medium'),
  high('high');

  const TrainingLevelEnum(this.value);
  final String value;

  static TrainingLevelEnum fromString(String? value) {
    return TrainingLevelEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => TrainingLevelEnum.low,
    );
  }
}
