part of 'schedule_trainings_list.dart';

class ScheduleTrainingsSectionTitle extends StatelessWidget {
  const ScheduleTrainingsSectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        title,
        style: AppStyles.fontSize.md.copyWith(
          fontFamily: FontFamily.unbounded,
          height: AppStyles.lineHeight.condensed,
        ),
      ),
    );
  }
}
