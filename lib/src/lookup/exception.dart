abstract class CaTeXException implements Exception {
  const CaTeXException(String reason, String input, String during)
      : assert(reason != null),
        assert(input != null),
        assert(during != null),
        _reason = reason,
        _input = input,
        _during = during;

  final String _reason, _input, _during;

  String get message =>
      '$CaTeXException during $_during: $_reason, for input: $_input';

  @override
  String toString() => message;
}

class ParsingException extends CaTeXException {
  ParsingException({String reason, String input})
      : super(reason, input, 'parsing');
}

class ConfigurationException extends CaTeXException {
  ConfigurationException({String reason, String input})
      : super(reason, input, 'configuration');
}

class RenderingException extends CaTeXException {
  RenderingException({String reason, String input})
      : super(reason, input, 'rendering');
}
