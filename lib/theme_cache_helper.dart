import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper {
  void cacheThemeIndex(int themeIndex) async {
    final sharedPreferences = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    ); // initialize the sharedPreferences
    sharedPreferences.setInt(
        "themeIndex", themeIndex); // store in the sharedPreferences
  }

  Future<int> getCachedThemeIndex() async { // returns either the chosen theme or a default one (index[0]).
    final sharedPreferences = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
    final cachedThemeIndex = sharedPreferences.getInt("themeIndex");
    if (cachedThemeIndex != null) {
      return cachedThemeIndex;
    } else {
      return 0;
    }
  }
}
