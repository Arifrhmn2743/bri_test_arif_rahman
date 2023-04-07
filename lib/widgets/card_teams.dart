import 'package:bri_test_arif_rahman/widgets/textstyle.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class CardTeams extends StatefulWidget {
  final String teamsName;
  final String teamsImage;
  final String teamsYear;
  final String teamsSport;
  final String teamsStadium;
  final String teamsAlternate;

  const CardTeams(
      {super.key,
      required this.teamsName,
      required this.teamsImage,
      required this.teamsYear,
      required this.teamsSport,
      required this.teamsStadium,
      required this.teamsAlternate});

  @override
  State<CardTeams> createState() => _CardTeamsState();
}

class _CardTeamsState extends State<CardTeams> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.blueGrey,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            FancyShimmerImage(
              imageUrl: widget.teamsImage,
              boxFit: BoxFit.fill,
              height: 120,
              width: 120,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.teamsName} (${widget.teamsYear})",
                    style: titleTextStyle,
                  ),
                  Text(
                    widget.teamsAlternate,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("${widget.teamsSport} Team"),
                  Text(widget.teamsStadium),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
