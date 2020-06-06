import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/parsing/parsing.dart';
import 'package:catex/src/rendering/character.dart';
import 'package:catex/src/widgets.dart';

class CharacterNode extends LeafNode<RenderCharacter> {
  CharacterNode(ParsingContext context) : super(context);

  @override
  NodeWidget<RenderCharacter> configureWidget(CaTeXContext context) {
    super.configureWidget(context);

    return NodeWidget(context, createRenderNode);
  }

  @override
  RenderCharacter createRenderNode(CaTeXContext context) {
    return RenderCharacter(context);
  }
}
