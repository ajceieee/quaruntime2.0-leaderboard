import 'package:flutter/material.dart';
import 'package:flutter_boiler_plate/ui/widgets/position_infocard.dart';

class UsersPosition extends StatelessWidget {
  const UsersPosition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Players",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16.0),
          PositionInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            rank: "1.3GB",
            numOfFiles: 1328,
          ),
          PositionInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            rank: "15.3GB",
            numOfFiles: 1328,
          ),
          PositionInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            rank: "1.3GB",
            numOfFiles: 1328,
          ),
          PositionInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            rank: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
