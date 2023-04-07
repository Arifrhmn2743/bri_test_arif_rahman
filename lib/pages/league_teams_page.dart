import 'package:bri_test_arif_rahman/pages/league_teams_detail.dart';
import 'package:bri_test_arif_rahman/provider/main_provider.dart';
import 'package:bri_test_arif_rahman/widgets/card_teams.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LeagueTeamsPage extends StatefulWidget {
  const LeagueTeamsPage({super.key});

  @override
  State<LeagueTeamsPage> createState() => _LeagueTeamsPageState();
}

class _LeagueTeamsPageState extends State<LeagueTeamsPage> {
  var scrollController = ScrollController();

  var length = 5;
  void getData() async {
    final getData = Provider.of<MainProvider>(context, listen: false);
    await getData.geTeams();
  }

  @override
  void initState() {
    getData();
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (!isTop) {
          setState(() {
            length = length + 5;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, teamsData, child) {
      return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: const Text("League Teams"),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                if (teamsData.list.isNotEmpty)
                  ...teamsData.list.take(length).map((e) => GestureDetector(
                        onTap: () =>
                            Get.to(const LeagueTeamsDetail(), arguments: {
                          "name": e.strTeam,
                          "year": e.intFormedYear,
                          "badge": e.strTeamBadge,
                          "country": e.strCountry,
                          "stadium": e.strStadiumThumb,
                          "stadium_name": e.strStadium,
                          "stadium_desc": e.strStadiumDescription,
                          "stadium_loc": e.strStadiumLocation,
                          "stadium_cap": e.intStadiumCapacity,
                          "team_desc": e.strDescriptionEn,
                          "fb": e.strFacebook,
                          "tw": e.strTwitter
                        }),
                        child: CardTeams(
                            teamsName: e.strTeam.toString(),
                            teamsImage: e.strTeamBadge.toString(),
                            teamsYear: e.intFormedYear.toString(),
                            teamsSport: e.strSport.toString(),
                            teamsStadium: e.strStadium.toString(),
                            teamsAlternate: e.strAlternate.toString()),
                      )),
                teamsData.isloading == true
                    ? const CircularProgressIndicator()
                    : const SizedBox()
              ],
            ),
          ),
        ),
      );
    });
  }
}
