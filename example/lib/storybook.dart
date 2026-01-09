import 'package:flutter/material.dart';
import 'package:matule_uikit/matule_uikit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      wrapperBuilder: (BuildContext context, Widget? widget) {
        return UtilsMaterialWrapper(widget: widget);
      },
      stories: [
        SmallHeaderWidget.story,
        BaseCardWidget.story,
        PrimaryCardWidget.story,
        CartCardWidget.story,
        ProjectCardWidget.story,
        TabbarWidget.story,
        InputWidget.story,
        ChipsButtonWidget.story,
        BigButtonWidget.story,
        SmallButtonWidget.story,
        BubbleButtonWidget.story,
      ],
    );
  }
}

showStorybook() {
  runApp(StorybookApp());
}
