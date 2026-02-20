import 'package:flutter/material.dart';
import 'package:watch_it/core/theme/colors.dart';
import 'package:watch_it/core/theme/text_style.dart';
import 'package:watch_it/core/util/constans/constans.dart';
import 'package:watch_it/core/util/constans/spacing.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          youtube,
          style: TextStyleManager.extraBold18.copyWith(
            color: ColorsManager.redColor,
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: ColorsManager.iconsColor,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: ColorsManager.iconsColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: ColorsManager.iconsColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ids.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                            initialVideoId: ids[index]['id'],
                            flags: const YoutubePlayerFlags(
                                autoPlay: false, mute: false)),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    ids[index]['title'],
                    style: TextStyleManager.light16
                        .copyWith(color: ColorsManager.textColor),
                  )
                ],
              ),
            );
          }),
    );
  }
}
