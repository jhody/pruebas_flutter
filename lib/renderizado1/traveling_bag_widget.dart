import 'package:flutter/material.dart';
import 'package:pruebas/renderizado1/shirt_widget.dart';
import 'package:pruebas/renderizado1/traveling_bag_render_object.dart';

class TravelingBagWidget extends MultiChildRenderObjectWidget {
  TravelingBagWidget({
    Key? key,
    List<ShirtWidget> children = const [],
  }) : super(key: key, children: children);

  @override
  RenderObject createRenderObject(BuildContext context) =>
      TravelingBagRenderObject();

  @override
  void updateRenderObject(
      BuildContext context, covariant TravelingBagRenderObject renderObject) {}
}
