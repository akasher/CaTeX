import 'dart:math';
import 'dart:ui';

import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/lookup/modes.dart';
import 'package:catex/src/lookup/symbols.dart';
import 'package:catex/src/rendering/character.dart';
import 'package:catex/src/rendering/rendering.dart';
import 'package:flutter/rendering.dart';

class RenderHat extends RenderNode with SingleChildRenderNodeMixin {
  RenderHat(CaTeXContext context) : super(context);

  TextPainter _hatPainter;
  Paint _linePaint;

  @override
  void configure() {
    _linePaint = Paint()
      ..color = context.color
      ..strokeWidth = context.textSize / 20
      ..strokeCap = StrokeCap.square;
    _hatPainter = TypesetPainter(
        context.copyWith(input: symbols[CaTeXMode.math][r'\hat'].unicode));

    _hatPainter.layout();
    final childSize = sizeChildNode(child),
        hatSize = _hatPainter.size,
        height = max(hatSize.height, childSize.height);

    child.positionNode(Offset(hatSize.width, height - childSize.height));
    renderSize = Size(hatSize.width + childSize.width, height);
  }

  @override
  void render(Canvas canvas) {
    paintChildNode(child);
    _hatPainter.paint(canvas, Offset.zero);

    // Draws an overline.
    final h =
        (_hatPainter.size.height - context.textSize + _linePaint.strokeWidth) /
            2;
    canvas.drawLine(
      // todo
      Offset(_hatPainter.size.width, h),
      Offset(renderSize.width, h),
      _linePaint,
    );
  }
}
