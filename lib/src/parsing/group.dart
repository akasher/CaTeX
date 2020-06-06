import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/parsing/parsing.dart';
import 'package:catex/src/rendering/group.dart';
import 'package:catex/src/widgets.dart';

class GroupNode extends MultiChildNode<RenderGroup> {
  GroupNode(ParsingContext context) : super(context);

  @override
  NodeWidget<RenderGroup> configureWidget(CaTeXContext context) {
    super.configureWidget(context);
    // A simple group node does not modify the context.
    return NodeWidget(
      context,
      createRenderNode,
      children: [for (final child in children) child.createWidget(context)],
    );
  }

  @override
  RenderGroup createRenderNode(CaTeXContext context) {
    return RenderGroup(context);
  }
}
