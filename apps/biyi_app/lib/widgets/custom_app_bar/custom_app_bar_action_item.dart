import 'package:flutter/cupertino.dart';
import 'package:influxui/influxui.dart';

class CustomAppBarActionItem extends StatelessWidget {
  const CustomAppBarActionItem({
    super.key,
    this.icon,
    this.text,
    this.child,
    this.padding,
    this.onPressed,
  });

  final IconData? icon;
  final String? text;
  final Widget? child;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding ?? const EdgeInsets.only(right: 12),
      child: child ??
          Row(
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: 20,
                  color: Theme.of(context).appBarTheme.iconTheme!.color,
                ),
              if (text != null)
                Padding(
                  padding: EdgeInsets.only(left: icon != null ? 4 : 0),
                  child: Text(
                    text!,
                    style: TextStyle(
                      color:
                          Theme.of(context).appBarTheme.actionsIconTheme?.color,
                      fontSize: 14,
                    ),
                  ),
                ),
            ],
          ),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
          return;
        }
        Navigator.maybePop(context);
      },
    );
  }
}
