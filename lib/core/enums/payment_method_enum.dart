enum PaymentMethodEnum {
  online('online'),
  cash('cash');

  const PaymentMethodEnum(this.value);
  final String value;

  static PaymentMethodEnum fromString(String? value) {
    return PaymentMethodEnum.values.firstWhere(
      (e) => e.value == value,
      orElse: () => PaymentMethodEnum.online,
    );
  }
}
