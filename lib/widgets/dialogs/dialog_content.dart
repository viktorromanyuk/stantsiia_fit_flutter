import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({super.key, required this.body, this.header, this.footer});

  final Widget? header;
  final Widget body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (header != null) ...[
          Padding(padding: const EdgeInsets.all(16), child: header!),
          Divider(),
        ],

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: body,
          ),
        ),

        if (footer != null) ...[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: AppStyles.colors.grayLight)),
            ),
            child: footer!,
          ),
        ],
      ],
    );
  }
}
