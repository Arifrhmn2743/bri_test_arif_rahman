import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/textstyle.dart';

class LeagueTeamsDetail extends StatefulWidget {
  const LeagueTeamsDetail({super.key});

  @override
  State<LeagueTeamsDetail> createState() => _LeagueTeamsDetailState();
}

class _LeagueTeamsDetailState extends State<LeagueTeamsDetail> {
  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text(Get.arguments["name"]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                FancyShimmerImage(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    boxFit: BoxFit.fill,
                    imageUrl: Get.arguments['stadium'] ??
                        "https://img.freepik.com/free-vector/soccer-stadium_1284-22432.jpg"),
                Positioned(
                  top: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FancyShimmerImage(
                            imageUrl: Get.arguments['badge'],
                            boxFit: BoxFit.fill,
                            height: 70,
                            width: 70,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Get.arguments["name"],
                                style: titleTextStyle,
                              ),
                              Text(
                                "Founded: ${Get.arguments["year"]}",
                                style: blackTextStyle,
                              ),
                              Text(
                                "Country: ${Get.arguments["country"]}",
                                style: blackTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Team Details",
                          style: titleTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(Get.arguments["team_desc"]),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const Center(
                        child: Text(
                          "Stadium Details",
                          style: titleTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        Get.arguments["stadium_name"] != null
                            ? "Stadium Name: ${Get.arguments["stadium_name"]}"
                            : "-",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        Get.arguments["stadium_loc"] != null
                            ? "Stadium Location: ${Get.arguments["stadium_loc"]}"
                            : "-",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        Get.arguments["stadium_cap"] != null
                            ? "Stadium Capacity: ${Get.arguments["stadium_cap"]} people"
                            : "-",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        Get.arguments["stadium_desc"] != null
                            ? "Stadium Description: ${Get.arguments["stadium_desc"]}"
                            : "-",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const Center(
                        child: Text(
                          "Team Socials",
                          style: titleTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Get.arguments["fb"] != null
                              ? FlutterSocialButton(
                                  mini: true,
                                  onTap: () {
                                    _launchUrl(Uri.parse(
                                        "https://${Get.arguments["fb"]}"));
                                  },
                                  buttonType: ButtonType.facebook,
                                )
                              : const SizedBox(),
                          Get.arguments["tw"] != null
                              ? FlutterSocialButton(
                                  mini: true,
                                  onTap: () {
                                    _launchUrl(Uri.parse(
                                        "https://${Get.arguments["tw"]}"));
                                  },
                                  buttonType: ButtonType.twitter,
                                )
                              : const SizedBox()
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
