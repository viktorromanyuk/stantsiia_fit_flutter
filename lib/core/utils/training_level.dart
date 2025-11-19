import 'package:stantsiia_fit_flutter/core/enums/enums.dart';

({String title, String value}) getTrainingLevelText(
  TrainingLevelEnum level,
  TrainingTypeEnum type,
) {
  final isDance = type == TrainingTypeEnum.dance;

  final title = isDance ? 'Рівень' : 'Інтенсивність';

  final value = switch (level) {
    TrainingLevelEnum.low => isDance ? 'Початковий' : 'Низька',
    TrainingLevelEnum.medium => isDance ? 'Середній' : 'Середня',
    TrainingLevelEnum.high => isDance ? 'Pro' : 'Висока',
  };

  return (title: title, value: value);
}
