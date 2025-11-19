enum PaymentStatusEnum {
  created('created'),
  processing('processing'),
  hold('hold'),
  success('success'),
  failure('failure'),
  reversed('reversed'),
  expired('expired');

  const PaymentStatusEnum(this.value);
  final String value;

  static PaymentStatusEnum fromString(String? value) {
    return PaymentStatusEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => PaymentStatusEnum.created,
    );
  }
}
