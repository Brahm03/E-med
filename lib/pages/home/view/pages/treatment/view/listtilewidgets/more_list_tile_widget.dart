import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/widgets/showModalWidget.dart';
import 'package:flutter/material.dart';

class MoreListTileWidget extends StatelessWidget {
  String title;
  String mg;
  MoreListTileWidget({
    Key? key,
    required this.title,
    required this.mg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              Text(title, style: FontStyles.headline3s),
              const Spacer(),
              Text(
                mg,
                style: FontStyles.headline4s,
              ),
            ],
          ),
          trailing: SizedBox(
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.chevron_right_rounded)),
          ),
          onTap: () {
            ShowModalWidget.showModal(context, title, mg);
          },
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
