part of 'calendar_week.dart';

class CalendarWeekDayButton extends StatelessWidget {
  const CalendarWeekDayButton({
    super.key,
    required this.day,
    required this.isSelected,
    required this.isToday,
    required this.onPressed,
  });

  final WeekDay day;
  final bool isSelected;
  final bool isToday;
  final ValueChanged<WeekDay> onPressed;

  bool get isDisabled => day.disabled;

  @override
  Widget build(BuildContext context) {
    final textColor = isDisabled
        ? AppColors.grayDark.withValues(alpha: 0.5)
        : isSelected
        ? AppColors.whiteMilk
        : AppColors.grayDark;

    final backgroundColor = isSelected ? AppColors.grayDark : AppColors.transparent;
    final showRing = !isDisabled && isToday && !isSelected;

    return TextButton(
      onPressed: isDisabled ? null : () => onPressed(day),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(9999),
          border: showRing
              ? Border.all(
                  color: AppColors.grayDark,
                  width: 2,
                )
              : null,
        ),
        alignment: Alignment.center,
        child: DefaultTextStyle(
          style: AppFontSize.fs12.copyWith(
            color: textColor,
            height: 1,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                day.name,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(
                day.date,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
