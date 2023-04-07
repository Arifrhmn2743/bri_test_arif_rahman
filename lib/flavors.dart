enum Flavor {
  devdebug,
  devrelease,
  proddebug,
  prodrelease,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.devdebug:
        return 'Dev Debug';
      case Flavor.devrelease:
        return 'Dev Release';
      case Flavor.proddebug:
        return 'Prod Debug';
      case Flavor.prodrelease:
        return 'Prod Release';
      default:
        return 'title';
    }
  }

  static String get selectedLeague {
    switch (appFlavor) {
      case Flavor.devdebug:
        return 'English_Premier_League';
      case Flavor.devrelease:
        return 'German_Bundesliga';
      case Flavor.proddebug:
        return 'Scottish_Premier_League';
      case Flavor.prodrelease:
        return 'Indonesian_Super_League';
      default:
        return 'English_Premier_League';
    }
  }
}
