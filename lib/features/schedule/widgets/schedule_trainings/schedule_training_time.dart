part of 'schedule_trainings_list.dart';

class ScheduleTrainingTime extends StatelessWidget {
  const ScheduleTrainingTime({super.key, required this.time, required this.duration});

  final String time;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          time,
          style: AppStyles.fontSize.sm.copyWith(
            fontFamily: FontFamily.unbounded,
            height: AppStyles.lineHeight.condensed,
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            '($duration хв.)',
            style: AppStyles.fontSize.sm.copyWith(
              fontWeight: FontWeight.w500,
              height: AppStyles.lineHeight.none,
            ),
          ),
        ),
      ],
    );
  }
}
