part of 'schedule_trainings_list.dart';

class ScheduleTrainingsItem extends StatelessWidget {
  const ScheduleTrainingsItem({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: AppStyles.colors.grayDark,
        border: Border.all(color: AppStyles.colors.whiteMilk),
        borderRadius: BorderRadius.all(AppStyles.borderRadius.full),
      ),
      child: child,
    );
  }
}
