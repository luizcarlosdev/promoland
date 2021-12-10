import 'package:flutter/material.dart';
import 'package:promoland/shared/theme/app_theme.dart';

enum ButtonType { fill, outline, none }

class Button extends StatelessWidget {
  final String label;
  final ButtonType type;
  const Button({
    Key? key,
    required this.label,
    this.type = ButtonType.fill,
  }) : super(key: key);

  BoxDecoration get boxDecoration {
    switch (type) {
      case ButtonType.fill:
        return BoxDecoration(
          color: AppTheme.colors.primary,
          borderRadius: BorderRadius.circular(10),
        );
      case ButtonType.outline:
        return BoxDecoration(
          color: Colors.transparent,
          border: Border.fromBorderSide(
            BorderSide(color: AppTheme.colors.border, width: 1.5),
          ),
          borderRadius: BorderRadius.circular(10),
        );
      case ButtonType.none:
        return const BoxDecoration(
          color: Colors.transparent,
        );
      default:
        throw "INVALID BUTTON TYPE";
    }
  }

  TextStyle get textStyle {
    switch (type) {
      case ButtonType.fill:
        return AppTheme.textStyles.buttonBackgroundColor;
      case ButtonType.outline:
        return AppTheme.textStyles.buttonBoldTextColor;
      case ButtonType.none:
        return AppTheme.textStyles.buttonTextColor;
      default:
        throw "INVALID BUTTON TYPE";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(label);
      },
      child: Container(
        height: 58,
        width: double.maxFinite,
        decoration: boxDecoration,
        child: Center(
          child: Text("Entrar", style: textStyle),
        ),
      ),
    );
  }
}
