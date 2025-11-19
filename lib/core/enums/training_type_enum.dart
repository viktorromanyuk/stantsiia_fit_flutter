enum TrainingTypeEnum {
  train('train'),
  dance('dance'),
  relax('relax');

  const TrainingTypeEnum(this.value);
  final String value;

  static TrainingTypeEnum fromString(String? value) {
    return TrainingTypeEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => TrainingTypeEnum.train,
    );
  }
}
