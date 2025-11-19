import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/widgets/widgets.dart';
import 'package:stantsiia_fit_flutter/models/models.dart';

import './trainings_package.dart';

class TrainingsPackagePurchaseDialog extends StatelessWidget {
  const TrainingsPackagePurchaseDialog({super.key, required this.package});

  final TrainingsPackageModel package;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: DialogContent(
        body: TrainingsPackage(package: package),
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
