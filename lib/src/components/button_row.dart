import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {

  const ButtonRow({
    super.key,
    required this.onCancelPressed,
    required this.onSavePressed,
    this.textStyle
  });

  final void Function() onCancelPressed;
  final void Function() onSavePressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primary
            ),
            child: TextButton(
                onPressed: onCancelPressed,
                child: Text(
                  localizations.cancelButtonLabel,
                  style: textStyle,
                ),
              ),
            )
          )
        ),
        const SizedBox(
          height: 20,
          child: VerticalDivider(color: Colors.transparent),
        ),
        Expanded(
          child: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primary
            ),
            child: TextButton(
                onPressed: onSavePressed,
                child: Text(
                  localizations.okButtonLabel,
                  style: textStyle,
                ),
              ),
            )
          )
        )
      ],
    );
  }
}
