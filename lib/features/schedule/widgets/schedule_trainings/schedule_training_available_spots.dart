part of 'schedule_trainings_list.dart';

class ScheduleTrainingAvailableSpots extends StatelessWidget {
  const ScheduleTrainingAvailableSpots({super.key, required this.spots});

  final int spots;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppStyles.fontSize.sm.copyWith(
        height: AppStyles.lineHeight.condensed,
        fontWeight: FontWeight.w500,
      ),
      child: Row(
        spacing: 4,
        children: [
          Text('Вільних місць:'),
          Text(spots.toString()),
        ],
      ),
    );
  }
}
