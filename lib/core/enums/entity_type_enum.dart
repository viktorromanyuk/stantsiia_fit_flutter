enum EntityTypeEnum {
  fitness('fitness'),
  dance('dance'),
  photo('photo'),
  unset('unset');

  const EntityTypeEnum(this.value);
  final String value;

  static EntityTypeEnum fromString(String? value) {
    return EntityTypeEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => EntityTypeEnum.unset,
    );
  }
}
