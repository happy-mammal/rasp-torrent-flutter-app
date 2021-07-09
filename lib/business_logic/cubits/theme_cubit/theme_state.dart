part of 'theme_cubit.dart';

class ThemeState {
  final ThemeMode themeMode;

  ThemeState({required this.themeMode});

  Map<String, dynamic> toMap() {
    return {
      'themeMode': themeMode,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      themeMode: map['themeMode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeState.fromJson(String source) =>
      ThemeState.fromMap(json.decode(source));
}
