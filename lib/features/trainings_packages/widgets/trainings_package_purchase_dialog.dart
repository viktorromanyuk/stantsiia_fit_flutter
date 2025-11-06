import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';

import './trainings_package.dart';

class TrainingsPackagePurchaseDialog extends StatelessWidget {
  const TrainingsPackagePurchaseDialog({super.key, required this.data});

  // TODO: add models
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: DialogContent(
        body: TrainingsPackage(data: data),
        footer: Column(
          spacing: 16,
          children: [
            AppButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'Скасувати',
            ),
            AppButton(
              onPressed: () {},
              text: 'Придбати',
            ),
          ],
        ),
      ),
    );
  }
}
