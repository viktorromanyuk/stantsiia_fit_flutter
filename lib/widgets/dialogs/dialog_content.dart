import 'package:flutter/material.dart';
import 'package:stantsiia_fit_flutter/styles/styles.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
    this.header,
    this.title,
    required this.body,
    this.footer,
  });

  final Widget? header;
  final String? title;
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
        ] else if (title != null) ...[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Text(
              title!,
              style: AppStyles.fontSize.fs18.copyWith(
                fontFamily: FontFamily.unbounded,
                color: AppStyles.colors.whiteMilk,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
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
