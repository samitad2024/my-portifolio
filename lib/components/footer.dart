import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

@client
class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'foot', [
      span([text('Developed in 💙 with')]),
      a(
        href: 'https://docs.page/schultek/jaspr',
        classes: 'tech-name',
        target: Target.blank,
        styles: Styles(color: Color('#1977d1')),
        [text('Jaspr')],
      ),
    ]);
  }

  static final List<StyleRule> styles = [
    css('.foot').styles(
      display: Display.flex,
      padding: Padding.symmetric(vertical: 2.vh),
      flexDirection: FlexDirection.row,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.center,
      fontSize: 12.px,
    ),
    css('.tech-name').styles(
      fontSize: 12.px,
      textDecoration: TextDecoration.none,
      margin: Margin.only(left: 5.px),
    ),
  ];
}
