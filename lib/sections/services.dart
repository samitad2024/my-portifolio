import 'package:devfolio/components/service_card.dart';
import 'package:devfolio/models/service_data.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

class ServicesSection extends StatelessComponent {
  final List<ServiceData> services;
  const ServicesSection({super.key, required this.services});

  @override
  Component build(BuildContext context) {
    return section(classes: 'services-section', [
      span(classes: 'title', [text('What I can do?')]),
      span(classes: 'subtitle', [
        text("I may not be perfect but surely I'm of some use :)"),
      ]),
      div(classes: 'section-body', id: 'services', [
        for (final service in services)
          ServiceCard(icon: service.icon, label: service.title),
      ]),
    ]);
  }

  static final List<StyleRule> styles = [
    css('.services-section').styles(
      flexDirection: FlexDirection.column,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.start,
      padding: Padding.symmetric(vertical: 5.vh),
    ),
    css('.section-body').styles(
      flexDirection: FlexDirection.row,
      alignItems: AlignItems.center,
      justifyContent: JustifyContent.center,
      flexWrap: FlexWrap.wrap,
      margin: Margin.only(top: 50.px),
      width: 100.percent,
    ),
  ];
}
