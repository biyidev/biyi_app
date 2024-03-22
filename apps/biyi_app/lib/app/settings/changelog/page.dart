import 'package:biyi_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:influxui/influxui.dart';

class ChangelogSettingPage extends StatelessWidget {
  const ChangelogSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: LocaleKeys.app_settings_changelog_title.tr(),
      subtitle: LocaleKeys.app_settings_changelog_subtitle.tr(),
      child: Container(),
    );
  }
}
