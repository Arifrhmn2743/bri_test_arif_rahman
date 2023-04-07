enum Flavor {
  DEVDEBUG,
  DEVRELEASE,
  PRODDEBUG,
  PRODRELEASE,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVDEBUG:
        return 'Dev Debug';
      case Flavor.DEVRELEASE:
        return 'Dev Release';
      case Flavor.PRODDEBUG:
        return 'Prod Debug';
      case Flavor.PRODRELEASE:
        return 'Prod Release';
      default:
        return 'title';
    }
  }

  static String get selectedLeague {
    switch (appFlavor) {
      case Flavor.DEVDEBUG:
        return 'English_Premier_League';
      case Flavor.DEVRELEASE:
        return 'German_Bundesliga';
      case Flavor.PRODDEBUG:
        return 'Scottish_Premier_League';
      case Flavor.PRODRELEASE:
        return 'Indonesian_Super_League';
      default:
        return 'English_Premier_League';
    }
  }
}
