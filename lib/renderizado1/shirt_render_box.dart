import 'package:flutter/material.dart';

class ShirtRenderBox extends RenderBox {
  Color _color;

  Color get color => _color;

  set color(Color value) {
    if (value == color) return;
    _color = color;
    markNeedsPaint();
  }

  ShirtRenderBox({required Color color}) : _color = color;

  @override
  bool get sizedByParent => true;

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    // DRAWiNG THE BACKGROUND
    //los mismo que Rect.fromLTWH()
    canvas.drawRect(offset & size, Paint()..color = color);
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return Size(constraints.maxWidth, constraints.maxHeight);
  }
}
