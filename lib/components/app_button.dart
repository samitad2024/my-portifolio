import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

@client
class AppButton extends StatelessComponent {
  final String label;
  final String href;
  final double? width;
  final double? height;

  const AppButton({
    super.key,
    required this.label,
    required this.href,
    this.width,
    this.height,
  });

  @override
  Component build(BuildContext context) {
    return a(
      classes: 'app-button',
      target: Target.blank,
      styles: Styles(
        width: width != null ? Unit.pixels(width!) : null,
        height: height != null ? Unit.pixels(height!) : null,
      ),
      href: href,
      [
        span(classes: 'label', [text(label)]),
      ],
    );
  }

  static final List<StyleRule> styles = [
    css('.app-button').styles(
      width: 100.px,
      padding: Padding.all(10.px),
      radius: BorderRadius.circular(6.px),
      border: Border.all(color: themePrimaryColor, width: 1.px),
      flexDirection: FlexDirection.row,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.center,
      textDecoration: TextDecoration.none,
      backgroundColor: Colors.transparent,
    ),
    css('.app-button:hover').styles(
      backgroundColor: themePrimaryColor,
      transition: Transition(
        'background-color',
        duration: Duration(milliseconds: 500),
      ),
      cursor: Cursor.pointer,
    ),
    css('.label').styles(fontSize: 12.px),
  ];
}
