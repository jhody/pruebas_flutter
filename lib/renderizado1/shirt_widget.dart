import 'package:flutter/material.dart';
import 'package:pruebas/renderizado1/shirt_render_box.dart';

class ShirtWidget extends LeafRenderObjectWidget {
  final Color color;
  const ShirtWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return ShirtRenderBox(color: color);
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant ShirtRenderBox renderObject) {
    renderObject.color = color;
  }
}
