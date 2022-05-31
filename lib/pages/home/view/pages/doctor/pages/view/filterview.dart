import 'package:emed/core/constants/font/fontStyles.dart';
import 'package:emed/core/init/navigator/NavigationService.dart';
import 'package:emed/widgets/appbar.dart';
import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          AppBarWidget(
            leading: InkWell(
                onTap: () => NavigationService.instance.pop,
                child: const Text(
                  'canel',
                  style: FontStyles.headline3sblue,
                )),
            center: const Text(
              'Filter',
              style: FontStyles.headline3s,
            ),
          ),
          ExpansionTile(title: Text('data'))
        ],
      ),
    ));
  }
}
