import 'package:stantsiia_fit_flutter/core/enums.dart';

({String title, String value}) getTrainingLevelText(
  TrainingLevel level,
  EntityType type,
) {
  final isDance = type == EntityType.dance;

  final title = isDance ? 'Рівень' : 'Інтенсивність';

  final value = switch (level) {
    TrainingLevel.low => isDance ? 'Початковий' : 'Низька',
    TrainingLevel.medium => isDance ? 'Середній' : 'Середня',
    TrainingLevel.high => isDance ? 'Pro' : 'Висока',
  };

  return (title: title, value: value);
}
