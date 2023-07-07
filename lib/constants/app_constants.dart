import 'package:icons_plus/icons_plus.dart';

import '../pages/models/url_icon.dart';

class AppConstants {
  static final urlsAndIcons = [
    UrlIcon(
      iconData: BoxIcons.bxl_github,
      url: 'https://github.com/orazgulcayew',
    ),
    UrlIcon(
      iconData: BoxIcons.bxl_linkedin_square,
      url: 'https://www.linkedin.com/in/oraz-gulchayev-797127235/',
    ),
    UrlIcon(
      iconData: BoxIcons.bxl_instagram,
      url: 'https://instagram.com/orazgulcayew',
    ),
    UrlIcon(
        iconData: BoxIcons.bxl_twitter, url: 'https://twitter.com/orazgulcayew')
  ];

  static const String aboutMe =
      ''' Welcome to my portfolio website! I'm [Your Name], a Flutter developer proficient in Kotlin, Java, Firebase, and UI/UX design with Figma and Adobe XD. 
  I specialize in creating captivating mobile applications with Flutter, delivering seamless user experiences across Android and iOS platforms. My expertise extends to native Android development using Kotlin and Java. 
  With Firebase, I integrate powerful features like authentication, real-time databases, and cloud messaging to ensure reliable and engaging app experiences. 
  Beyond coding, I possess a keen eye for design, crafting intuitive user interfaces using Figma and Adobe XD. 
  I stay up to date with the latest mobile development trends, ensuring high-quality code, performance, and user satisfaction. 
  Thank you for visiting! Explore my projects and feel free to reach out for collaboration opportunities. Let's bring your ideas to life!''';

  static const dart = "assets/icons/dart.svg";
  static const flutter = "assets/icons/flutter.svg";
  static const figma = "assets/icons/figma.svg";
  static const firebase = "assets/icons/firebase.svg";
  static const git = "assets/icons/git.svg";
  static const github = "assets/icons/github.svg";
  static const java = "assets/icons/java.svg";
  static const kotlin = "assets/icons/kotlin.svg";
  static const nodejs = "assets/icons/nodejs.svg";
  static const photoshop = "assets/icons/photoshop.svg";
  static const python = "assets/icons/python.svg";
  static const visualStudio = "assets/icons/visual-studio.svg";

  static const skills = [
    dart,
    flutter,
    kotlin,
    java,
    python,
    firebase,
    nodejs,
    photoshop,
    figma,
    git,
    github,
    visualStudio
  ];
}
