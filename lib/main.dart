import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rasp_torrent_flutter_app/business_logic/cubits/theme_cubit/theme_cubit.dart';
import 'package:rasp_torrent_flutter_app/router/approute.dart';
import 'package:rasp_torrent_flutter_app/themes/app_theme.dart';

import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  runApp(RaspTorrent());
}

class RaspTorrent extends StatefulWidget {
  @override
  _RaspTorrentState createState() => _RaspTorrentState();
}

class _RaspTorrentState extends State<RaspTorrent> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
          child: RaspApp(),
        );
      },
    );
  }
}

class RaspApp extends StatefulWidget {
  const RaspApp({Key? key}) : super(key: key);

  @override
  _RaspAppState createState() => _RaspAppState();
}

class _RaspAppState extends State<RaspApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          context.select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}
