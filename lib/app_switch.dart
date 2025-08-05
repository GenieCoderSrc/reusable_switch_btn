import 'package:flutter/material.dart';

class AppSwitch extends StatefulWidget {
  final String? activeTxt;
  final String? disableTxt;
  final bool? initSwitched;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;
  final Color? deActiveColor;
  final Color? activeTxtColor;
  final Color? activeOptionColor;

  const AppSwitch({
    super.key,
    this.activeTxt = 'ON',
    this.disableTxt = 'OFF',
    this.initSwitched = false,
    this.onChanged,
    this.activeColor,
    this.activeTxtColor,
    this.deActiveColor,
    this.activeOptionColor,
  });

  @override
  _AppSwitchState createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch>
    with SingleTickerProviderStateMixin {
  late Animation<Alignment> _circleAnimation;
  late AnimationController _animationController;
  bool isSwitch = false;

  @override
  void initState() {
    super.initState();
    isSwitch = widget.initSwitched ?? false;

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 60),
    );
    _circleAnimation =
        AlignmentTween(
          begin: widget.initSwitched!
              ? Alignment.centerRight
              : Alignment.centerLeft,
          end: widget.initSwitched!
              ? Alignment.centerLeft
              : Alignment.centerRight,
        ).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.linear),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () {
            isSwitch = !isSwitch;

            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            debugPrint('AppSwitch isSwitch: $isSwitch');
            widget.onChanged?.call(isSwitch);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: _circleAnimation.value == Alignment.centerLeft
                  ? widget.deActiveColor ?? Colors.blueGrey[300]
                  : widget.activeColor ?? Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                bottom: 4.0,
                right: 4.0,
                left: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (_circleAnimation.value == Alignment.centerRight)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        widget.activeTxt!,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: widget.activeTxtColor ?? Colors.white,
                        ),
                        // style: AppTxtStyles.kSmallTitleTextStyle.copyWith(
                        //   color: widget.activeTxtColor ?? Colors.white,
                        // ),
                      ),
                    )
                  else
                    Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.activeOptionColor ?? Colors.white,
                      ),
                    ),
                  ),
                  if (_circleAnimation.value == Alignment.centerLeft)
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 5.0),
                      child: Text(
                        widget.disableTxt!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  else
                    Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
