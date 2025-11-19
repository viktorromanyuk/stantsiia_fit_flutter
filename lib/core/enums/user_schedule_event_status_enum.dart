enum UserScheduleEventStatusEnum {
  active('active'),
  visited('visited'),
  missed('missed'),
  canceled('canceled');

  const UserScheduleEventStatusEnum(this.value);
  final String value;

  static UserScheduleEventStatusEnum fromString(String? value) {
    return UserScheduleEventStatusEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => UserScheduleEventStatusEnum.active,
    );
  }
}
