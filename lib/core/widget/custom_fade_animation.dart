import 'package:flutter/material.dart';

class CustomFadeAnimation extends StatefulWidget {
  const CustomFadeAnimation({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  _CustomFadeAnimationState createState() => _CustomFadeAnimationState();
}

class _CustomFadeAnimationState extends State<CustomFadeAnimation> with SingleTickerProviderStateMixin{
  late final Animation animation;
  late final AnimationController animationController;

  @override
  void initState() {
    animationController=AnimationController(vsync: this);
    animation=Tween(begin: 0.2,end: 0.8).animate(animationController);
    animationController.addListener(() {
      setState(() {

      });
    });
    animationController.repeat(reverse: true);
super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: animation.value,
      child: widget.child,
    );
  }
}
