import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/parsing/parsing.dart';
import 'package:catex/src/rendering/empty.dart';
import 'package:catex/src/widgets.dart';

class EmptyNode extends LeafNode<RenderEmpty> {
  EmptyNode(ParsingContext context) : super(context);

  @override
  NodeWidget<RenderEmpty> configureWidget(CaTeXContext context) {
    super.configureWidget(context);
    return NodeWidget(context, createRenderNode);
  }

  @override
  RenderEmpty createRenderNode(CaTeXContext context) {
    return RenderEmpty(context);
  }
}
