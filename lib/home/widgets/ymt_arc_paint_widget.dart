import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ymatou/common/ymt_hex_color.dart';
import 'package:ymatou/home/blocs/ymt_home_color_change_bloc.dart';

class YMTArcPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YMTHomeColorChangeBloc, String>(
      builder: (context, color) {
        return CustomPaint(
          foregroundPainter: ArcPainter(width: MediaQuery.of(context).size.width, height: 40, color: color),
          size: Size(MediaQuery.of(context).size.width, 40),
        );
      },
    );
  }
}

class ArcPainter extends CustomPainter {
  final double width;
  final double height;
  final String color;
  ArcPainter({this.width, this.height, this.color});
  @override
  void paint(Canvas canvas, Size size) {
    const PI = 3.1415926;
    canvas.drawArc(Rect.fromCircle(center: Offset(width / 2.0, -569.0), radius: 600.0),
        0.78, PI / 2, true,
        Paint()..color = ColorsUtil.hexToColor(color)..strokeWidth = 4.0..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}