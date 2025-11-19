import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/core/enums/enums.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

class TrainingsFilterDialog extends StatelessWidget {
  const TrainingsFilterDialog({
    super.key,
    required this.selectedFilter,
    required this.onChanged,
  });

  final TrainingTypeEnum? selectedFilter;
  final ValueChanged<TrainingTypeEnum?> onChanged;

  @override
  Widget build(BuildContext context) {
    final filters = <TrainingTypeEnum?, ({String label, Color color})>{
      null: (label: 'Усі', color: AppStyles.colors.grayLight),
      TrainingTypeEnum.train: (label: 'Тренуватись', color: AppStyles.colors.orange100),
      TrainingTypeEnum.dance: (label: 'Танцювати', color: AppStyles.colors.purple100),
      TrainingTypeEnum.relax: (label: 'Розслаблятись', color: AppStyles.colors.orange100),
    };

    return DialogContent(
      title: 'Фільтр тренувань',
      body: RadioGroup<TrainingTypeEnum?>(
        groupValue: selectedFilter,
        onChanged: (TrainingTypeEnum? value) {
          onChanged(value);
          Navigator.of(context).pop();
        },
        child: Column(
          spacing: 12,
          children: [
            ...filters.entries.map(
              (entry) => GestureDetector(
                onTap: () {
                  onChanged(entry.key);
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: selectedFilter == entry.key
                        ? entry.value.color.withValues(alpha: 0.15)
                        : AppStyles.colors.transparent,
                    border: Border.all(
                      color: selectedFilter == entry.key
                          ? entry.value.color
                          : AppStyles.colors.grayLight.withValues(alpha: 0.3),
                      width: selectedFilter == entry.key ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.all(AppStyles.borderRadius.full),
                  ),
                  child: Row(
                    children: [
                      Radio<TrainingTypeEnum?>(
                        value: entry.key,
                        activeColor: entry.value.color,
                      ),
                      Text(
                        entry.value.label,
                        style: AppStyles.fontSize.md.copyWith(
                          color: AppStyles.colors.whiteMilk,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
