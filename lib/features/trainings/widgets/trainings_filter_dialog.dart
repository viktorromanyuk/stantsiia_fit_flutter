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
      null: (label: 'Усі', color: AppColors.whiteMilk),
      TrainingTypeEnum.train: (label: 'Тренуватись', color: AppColors.orange100),
      TrainingTypeEnum.dance: (label: 'Танцювати', color: AppColors.purple100),
      TrainingTypeEnum.relax: (label: 'Розслаблятись', color: AppColors.orange100),
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
                        : AppColors.grayDarkAccent,
                    border: Border.all(
                      color: selectedFilter == entry.key ? entry.value.color : AppColors.gray,
                      width: selectedFilter == entry.key ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.all(AppBorderRadius.full),
                  ),
                  child: Row(
                    children: [
                      Radio<TrainingTypeEnum?>(
                        value: entry.key,
                        activeColor: entry.value.color,
                      ),
                      Text(
                        entry.value.label,
                        style: AppFontSize.fs16.copyWith(
                          color: AppColors.whiteMilk,
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

void showTrainingsFilterBottomSheet({
  required BuildContext context,
  required TrainingTypeEnum? selectedFilter,
  required ValueChanged<TrainingTypeEnum?> onChanged,
}) {
  showModalBottomSheet(
    context: context,
    showDragHandle: true,
    builder: (context) => SizedBox(
      height: 400,
      child: TrainingsFilterDialog(
        selectedFilter: selectedFilter,
        onChanged: onChanged,
      ),
    ),
  );
}
