import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/src/dom/styles/css.dart';

@client
class NavBar extends StatelessComponent {
  const NavBar({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'navbar', [
      div([
        span([text('< ')]),
        span(classes: 'brand', [text('Hamza')]),
        span([text(' />')]),
      ]),
      div(classes: 'labels', [
        a(classes: 'navbar-label', href: '#', [text('HOME')]),
        a(href: '#about', classes: 'navbar-label', [text('ABOUT')]),
        a(href: '#services', classes: 'navbar-label', [text('SERVICES')]),
        a(href: '#projects', classes: 'navbar-label', [text('PROJECTS')]),
        a(href: '#contact', classes: 'navbar-label', [text('CONTACT')]),
        AppButton(
          label: 'RESUME',
          href:
              "https://drive.google.com/drive/u/0/folders/1E6NxJlmnW2lTYTszcbODdpXiPFYe_kBM",
        ),
      ]),
    ]);
  }

  static final List<StyleRule> styles = [
    css('.navbar').styles(
      padding: Padding.all(25.px),
      flexDirection: FlexDirection.row,
      justifyContent: JustifyContent.spaceBetween,
      alignItems: AlignItems.center,
      backgroundColor: Colors.black,
    ),
    css('.navbar-label').styles(
      padding: Padding.only(right: 35.px),
      fontSize: 12.px,
      textDecoration: TextDecoration.none,
      flexDirection: FlexDirection.row,
      justifyContent: JustifyContent.spaceBetween,
      alignItems: AlignItems.center,
    ),
    css('.navbar-label:hover').styles(
      color: themePrimaryColor,
      transition: Transition('color', duration: Duration(milliseconds: 500)),
    ),
    css('.labels').styles(
      flexDirection: FlexDirection.row,
      justifyContent: JustifyContent.end,
    ),
    css('.brand').styles(fontFamily: FontFamily('Agustina'), fontSize: 24.px),
  ];
}
