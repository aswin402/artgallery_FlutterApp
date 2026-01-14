import 'package:artgallery/core/theme/app_text.dart';
import 'package:flutter/material.dart';
import '../theme/theme_x.dart';


class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final double? iconSize;
  final Color? iconColor;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.padding,
    this.leadingIcon,
    this.trailingIcon,
    this.iconSize,
    this.iconColor,
  });

  @override
   Widget build(BuildContext context) {
    final button = FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.primary,
        foregroundColor: Color(0xFF000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: Size.zero,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
       child: buildChild(context),
    );

    if (width != null || height != null) {
      return SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
    Widget buildChild(BuildContext context) {
    final hasLeading = leadingIcon != null;
    final hasTrailing = trailingIcon != null;

    final color = iconColor ?? Colors.black;
    final size = iconSize ?? 16;

    if (!hasLeading && !hasTrailing) {
      return Text(text);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasLeading)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(leadingIcon, size: size, color: color),
          ),
        Text(text , style: AppText.btnMuted(context)),
        if (hasTrailing)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(trailingIcon, size: size, color: color),
          ),
      ],
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.width,
    this.height,
    this.padding,
  });

  @override
   Widget build(BuildContext context) {
    final button = FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.buttonbg,
        foregroundColor: context.colors.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: Size.zero,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
     child: Text(text, style: AppText.btnText(context)),
    );

    if (width != null || height != null) {
      return SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
}
 





class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final double? iconSize;
  final Color? iconColor;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.width,
    this.height,
    this.padding,
    this.leadingIcon,
    this.trailingIcon,
    this.iconSize,
    this.iconColor,
  });

  @override
   Widget build(BuildContext context) {
    final button = FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.secondarybuttonbg,
        foregroundColor: context.colors.secondarybutton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: Size.zero,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
      child: buildChild(context),
    );

    if (width != null || height != null) {
      return SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
Widget buildChild(BuildContext context) {
    final hasLeading = leadingIcon != null;
    final hasTrailing = trailingIcon != null;

    final color = iconColor ?? context.colors.secondarybutton;
    final size = iconSize ?? 16;

    if (!hasLeading && !hasTrailing) {
      return Text(text);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasLeading)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(leadingIcon, size: size, color: color),
          ),
        Text(text , style: AppText.btnText(context),),
        if (hasTrailing)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(trailingIcon, size: size, color: color),
          ),
      ],
    );
  }
}





class ThirdButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const ThirdButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.width,
    this.height,
    this.padding,
  });

  @override
   Widget build(BuildContext context) {
    final button = FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.secondarybuttonbg,
        foregroundColor: context.colors.secondarybutton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        minimumSize: Size.zero,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
      child: Text(text , style: AppText.btnText(context),),
    );

    if (width != null || height != null) {
      return SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
}