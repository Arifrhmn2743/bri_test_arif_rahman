import 'dart:convert';

LeagueTeams leagueTeamsFromJson(String str) =>
    LeagueTeams.fromJson(json.decode(str));

String leagueTeamsToJson(LeagueTeams data) => json.encode(data.toJson());

class LeagueTeams {
  LeagueTeams({
    this.teams,
  });

  List<Team>? teams;

  factory LeagueTeams.fromJson(Map<String, dynamic> json) => LeagueTeams(
        teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teams": List<dynamic>.from(teams!.map((x) => x.toJson())),
      };
}

class Team {
  Team({
    this.idTeam,
    this.idSoccerXml,
    this.idApIfootball,
    this.intLoved,
    this.strTeam,
    this.strTeamShort,
    this.strAlternate,
    this.intFormedYear,
    this.strSport,
    this.strLeague,
    this.idLeague,
    this.strLeague2,
    this.idLeague2,
    this.strLeague3,
    this.idLeague3,
    this.strLeague4,
    this.strManager,
    this.strStadium,
    this.strKeywords,
    this.strRss,
    this.strStadiumThumb,
    this.strStadiumDescription,
    this.strStadiumLocation,
    this.intStadiumCapacity,
    this.strWebsite,
    this.strFacebook,
    this.strTwitter,
    this.strInstagram,
    this.strDescriptionEn,
    this.strDescriptionDe,
    this.strDescriptionFr,
    this.strCountry,
    this.strTeamBadge,
    this.strTeamJersey,
    this.strTeamLogo,
    this.strTeamFanart1,
    this.strTeamFanart2,
    this.strTeamFanart3,
    this.strTeamFanart4,
    this.strTeamBanner,
  });

  String? idTeam;
  String? idSoccerXml;
  String? idApIfootball;
  String? intLoved;
  String? strTeam;
  String? strTeamShort;
  String? strAlternate;
  String? intFormedYear;
  String? strSport;
  String? strLeague;
  String? idLeague;
  String? strLeague2;
  String? idLeague2;
  String? strLeague3;
  String? idLeague3;
  String? strLeague4;
  String? strManager;
  String? strStadium;
  String? strKeywords;
  String? strRss;
  String? strStadiumThumb;
  String? strStadiumDescription;
  String? strStadiumLocation;
  String? intStadiumCapacity;
  String? strWebsite;
  String? strFacebook;
  String? strTwitter;
  String? strInstagram;
  String? strDescriptionEn;
  String? strDescriptionDe;
  String? strDescriptionFr;
  String? strCountry;
  String? strTeamBadge;
  String? strTeamJersey;
  String? strTeamLogo;
  String? strTeamFanart1;
  String? strTeamFanart2;
  String? strTeamFanart3;
  String? strTeamFanart4;
  String? strTeamBanner;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        idTeam: json["idTeam"],
        idSoccerXml: json["idSoccerXML"],
        idApIfootball: json["idAPIfootball"],
        intLoved: json["intLoved"],
        strTeam: json["strTeam"],
        strTeamShort: json["strTeamShort"],
        strAlternate: json["strAlternate"],
        intFormedYear: json["intFormedYear"],
        strSport: json["strSport"],
        strLeague: json["strLeague"],
        idLeague: json["idLeague"],
        strLeague2: json["strLeague2"],
        idLeague2: json["idLeague2"],
        strLeague3: json["strLeague3"],
        idLeague3: json["idLeague3"],
        strLeague4: json["strLeague4"],
        strManager: json["strManager"],
        strStadium: json["strStadium"],
        strKeywords: json["strKeywords"],
        strRss: json["strRSS"],
        strStadiumThumb: json["strStadiumThumb"],
        strStadiumDescription: json["strStadiumDescription"],
        strStadiumLocation: json["strStadiumLocation"],
        intStadiumCapacity: json["intStadiumCapacity"],
        strWebsite: json["strWebsite"],
        strFacebook: json["strFacebook"],
        strTwitter: json["strTwitter"],
        strInstagram: json["strInstagram"],
        strDescriptionEn: json["strDescriptionEN"],
        strDescriptionDe: json["strDescriptionDE"],
        strDescriptionFr: json["strDescriptionFR"],
        strCountry: json["strCountry"],
        strTeamBadge: json["strTeamBadge"],
        strTeamJersey: json["strTeamJersey"],
        strTeamLogo: json["strTeamLogo"],
        strTeamFanart1: json["strTeamFanart1"],
        strTeamFanart2: json["strTeamFanart2"],
        strTeamFanart3: json["strTeamFanart3"],
        strTeamFanart4: json["strTeamFanart4"],
        strTeamBanner: json["strTeamBanner"],
      );

  Map<String, dynamic> toJson() => {
        "idTeam": idTeam,
        "idSoccerXML": idSoccerXml,
        "idAPIfootball": idApIfootball,
        "intLoved": intLoved,
        "strTeam": strTeam,
        "strTeamShort": strTeamShort,
        "strAlternate": strAlternate,
        "intFormedYear": intFormedYear,
        "strSport": strSport,
        "strLeague": strLeague,
        "idLeague": idLeague,
        "strLeague2": strLeague2,
        "idLeague2": idLeague2,
        "strLeague3": strLeague3,
        "idLeague3": idLeague3,
        "strLeague4": strLeague4,
        "strManager": strManager,
        "strStadium": strStadium,
        "strKeywords": strKeywords,
        "strRSS": strRss,
        "strStadiumThumb": strStadiumThumb,
        "strStadiumDescription": strStadiumDescription,
        "strStadiumLocation": strStadiumLocation,
        "intStadiumCapacity": intStadiumCapacity,
        "strWebsite": strWebsite,
        "strFacebook": strFacebook,
        "strTwitter": strTwitter,
        "strInstagram": strInstagram,
        "strDescriptionEN": strDescriptionEn,
        "strDescriptionDE": strDescriptionDe,
        "strDescriptionFR": strDescriptionFr,
        "strCountry": strCountry,
        "strTeamBadge": strTeamBadge,
        "strTeamJersey": strTeamJersey,
        "strTeamLogo": strTeamLogo,
        "strTeamFanart1": strTeamFanart1,
        "strTeamFanart2": strTeamFanart2,
        "strTeamFanart3": strTeamFanart3,
        "strTeamFanart4": strTeamFanart4,
        "strTeamBanner": strTeamBanner,
      };
}
