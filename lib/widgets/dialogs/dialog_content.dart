import 'package:flutter/material.dart';

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

        Padding(
          padding: const EdgeInsets.all(16),
          child: body,
        ),

        if (footer != null) ...[
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: footer!,
          ),
        ],
      ],
    );
  }
}
