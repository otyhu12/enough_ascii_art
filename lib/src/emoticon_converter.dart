/// The style of the emoticons.
/// Currently only the western emoticon style is supported.
enum EmoticonStyle { western }

/// Converts common UTF-8 smileys to their ASCII representation
class EmoticonConverter {
  static const Map<String, String> _westernStyleEmoticons = <String, String>{
    'ð': ':-)',
    'ð': ':-)',
    'ð': ':-D',
    'ð': ':-D',
    'ð': ':-D',
    'ð': ';-)',
    'ð': ':\')',
    'ð': ':\')',
    'ð¤£': ':D',
    'ð': ':-P',
    'ð': ':-P',
    'ð®': ':-O',
    'ð²': '8-0',
    'â¹': ':-(',
    'ð': ':-(',
    'ð': ':-(',
    'ð': ';-P',
    'ð': 'X-D',
    'ð': '8-)',
    'ð': '<3',
    'ð': '<3',
    'ð¥°': '<3',
    'ð': ':-|',
    'ð´': '(-.-)Zzzâ¦',
    'ð': 'o/',
    'ð': '</3',
    'ð': '<3',
    'â¤': '<3',
    'ð': '<3',
    'ð': '0:)',
    'ð': '3:)',
    'ð': '%)',
    'ð ': ':-@',
    'ð¡': ':-.',
    'ð¢': ':\'(',
    'ð¥': ':\'(',
    'ð¤': '^5',
    'ð«': '|-O',
    'ð°': ':###..',
    'ð±': 'D-\':',
    'ð³': ':\$',
    'ðµ': '#-)',
    'ð¶': ':#',
    'ð¼': ':-J',
    'ð½': ':*',
    'ð': ':-*',
    'ð': '8-/',
    'ð': '+1',
    'â': '+1',
    'â': '+1'
  };

  /// Replaces all common smileys with their ASCII representation
  ///
  /// [text] the text that may contain smileys
  /// [style] the optional emoticon style
  static String convertEmoticons(String text,
      [EmoticonStyle style = EmoticonStyle.western]) {
    if (text.isEmpty) {
      return text;
    }
    switch (style) {
      case EmoticonStyle.western:
      default:
        return _convert(text, _westernStyleEmoticons);
    }
  }

  static String _convert(String text, Map<String, String> emoticons) {
    for (var key in emoticons.keys) {
      text = text.replaceAll(key, emoticons[key]!);
    }
    return text;
  }
}
