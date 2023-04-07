import 'package:bri_test_arif_rahman/helpers/api.dart';
import 'package:bri_test_arif_rahman/model/league_teams_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainProvider with ChangeNotifier {
  bool isloading = true;
  Team? teamData;
  final List<Team> _list = [];
  List<Team> get list {
    return [..._list];
  }

  Future<void> geTeams() async {
    isloading = true;

    try {
      var response = await Dio()
          .get("${Api.apiLink}/search_all_teams.php?l=${Api.league}");

      teamData = Team.fromJson(response.data);

      final loadedTeamData = <Team>[];

      for (var element in (response.data['teams'] as List<dynamic>)) {
        loadedTeamData.add(Team.fromJson(element));
      }
      _list.addAll(loadedTeamData);
      notifyListeners();
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
    await Future.delayed(const Duration(seconds: 10));
    isloading = false;
    notifyListeners();
  }
}
