import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

class ImagesAnimation extends StatefulWidget {
  final EdgeInsetsGeometry padding;
  final double w;
  final double h;
  final ImagesAnimationEntry entry;
  final int durationSeconds;

  ImagesAnimation({Key key, this.w : 80, this.h : 80, this.padding, this.entry, this.durationSeconds : 2}):super(key:key);


  @override
  _InState createState() {
    return _InState();
  }
}

class _InState extends State<ImagesAnimation> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(vsync: this, duration: Duration(seconds: widget.durationSeconds))
      ..repeat();
    _animation = new IntTween(begin: widget.entry.lowIndex, end: widget.entry.highIndex).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        String frame = _animation.value.toString();
        return Padding(
          padding: widget.padding ?? EdgeInsets.zero,
          child: Image.asset(
            sprintf(widget.entry.basePath, [frame]),
            gaplessPlayback: true, 
            width: widget.w,
            height: widget.h,
            fit: BoxFit.fitHeight,
          ),
        );
      },
    );
  }

}

class ImagesAnimationEntry {
  int lowIndex = 0;
  int highIndex = 0;
  String basePath;

  ImagesAnimationEntry(this.lowIndex, this.highIndex, this.basePath);
}