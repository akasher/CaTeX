import 'dart:ui';

import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/rendering/rendering.dart';

class RenderEmpty extends RenderNode {
  RenderEmpty(CaTeXContext context) : super(context);

  @override
  void configure() {
    renderSize = Size.zero;
  }

  @override
  void render(Canvas canvas) {}
}
