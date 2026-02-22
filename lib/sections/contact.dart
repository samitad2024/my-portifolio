import 'package:devfolio/components/contact.dart';
import 'package:devfolio/models/contact.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class ContactSection extends StatelessComponent {
  final List<Contact> contacts;
  const ContactSection({super.key, required this.contacts});

  @override
  Component build(BuildContext context) {
    return section(classes: 'contact-section', [
      span(classes: 'title', [text('Get in Touch')]),
      span(classes: 'subtitle', [text("Let's build something together :)")]),
      div(classes: 'contact-body', id: 'contact', [
        for (final contact in contacts)
          ContactCard(
            icon: contact.icon,
            title: contact.title,
            description: contact.description,
            action: contact.action,
          ),
      ]),
    ]);
  }

  static final List<StyleRule> styles = [
    css('.contact-section').styles(
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.start,
      padding: Padding.symmetric(vertical: 5.vh, horizontal: 10.vw),
    ),
    css('.contact-body').styles(
      flexDirection: FlexDirection.row,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.center,
      flexWrap: FlexWrap.wrap,
      margin: Margin.only(top: 50.px),
      width: 100.percent,
    ),
  ];
}
