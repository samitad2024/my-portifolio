// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:devfolio/components/app_button.dart' as _app_button;
import 'package:devfolio/components/contact.dart' as _contact;
import 'package:devfolio/components/footer.dart' as _footer;
import 'package:devfolio/components/nav_bar.dart' as _nav_bar;
import 'package:devfolio/components/project_card.dart' as _project_card;
import 'package:devfolio/components/service_card.dart' as _service_card;
import 'package:devfolio/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clients: {
    _app.App: ClientTarget<_app.App>('app'),
    _app_button.AppButton: ClientTarget<_app_button.AppButton>(
      'app_button',
      params: __app_buttonAppButton,
    ),
    _contact.ContactCard: ClientTarget<_contact.ContactCard>(
      'contact',
      params: __contactContactCard,
    ),
    _footer.Footer: ClientTarget<_footer.Footer>('footer'),
    _nav_bar.NavBar: ClientTarget<_nav_bar.NavBar>('nav_bar'),
    _project_card.ProjectCard: ClientTarget<_project_card.ProjectCard>(
      'project_card',
      params: __project_cardProjectCard,
    ),
    _service_card.ServiceCard: ClientTarget<_service_card.ServiceCard>(
      'service_card',
      params: __service_cardServiceCard,
    ),
  },
);

Map<String, Object?> __app_buttonAppButton(_app_button.AppButton c) => {
  'label': c.label,
  'href': c.href,
  'width': c.width,
  'height': c.height,
};
Map<String, Object?> __contactContactCard(_contact.ContactCard c) => {
  'icon': c.icon,
  'title': c.title,
  'description': c.description,
  'action': c.action,
};
Map<String, Object?> __project_cardProjectCard(_project_card.ProjectCard c) => {
  'title': c.title,
  'description': c.description,
  'icon': c.icon,
  'banner': c.banner,
  'url': c.url,
};
Map<String, Object?> __service_cardServiceCard(_service_card.ServiceCard c) => {
  'icon': c.icon,
  'label': c.label,
};
