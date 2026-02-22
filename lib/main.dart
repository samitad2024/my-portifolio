// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr/dom.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(options: defaultJasprOptions);

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    Document(
      title: 'Hamza',

      /// Uncomment this line to deploy on github pages just in case your websit is like https://mhmzdev.github.io/devfolio-jaspr/
      /// If its on the base repo, then you don't need to do this
      // base: 'devfolio-jaspr/',
      head: <Component>[
        link(
          href:
              'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css',
          rel: 'stylesheet',
        ),
      ],
      charset: 'utf-8',
      viewport: 'width=device-width, initial-scale=1, shrink-to-fit=no',
      meta: {
        "og:title": "Hamza - Random Dude!",
        "og:url": "https://www.mhmz.dev",
      },
      lang: 'en',
      styles: [
        css.import('https://fonts.googleapis.com/css?family=Montserrat'),
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          margin: Margin.zero,
          padding: Padding.zero,
          fontFamily: FontFamily.list(const [
            FontFamily('Montserrat'),
            FontFamilies.sansSerif,
          ]),
        ),
        css('h1').styles(margin: Margin.zero, fontSize: 4.rem),
        css.fontFace(family: 'Agustina', url: 'fonts/agustina/agustina.otf'),
        css('::-webkit-scrollbar').styles(width: 8.px, height: Unit.zero),
        css(
          '::-webkit-scrollbar-track',
        ).styles(radius: BorderRadius.circular(8.px)),
        css('::-webkit-scrollbar-thumb').styles(
          radius: BorderRadius.circular(8.px),
          backgroundColor: themePrimaryColor,
        ),
      ],
      body: App(),
    ),
  );
}
