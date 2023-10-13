import 'package:aulas_bruno/domain/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? textColor;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => onTap(),
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: ThemeConstants.paddingXS, horizontal: ThemeConstants.padding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ThemeConstants.buttonRadius),
            color: backgroundColor ?? Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: textColor,
                size: ThemeConstants.iconSizeM,
              ),
              const SizedBox(
                width: ThemeConstants.paddingS,
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
