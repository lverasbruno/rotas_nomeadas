// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/games/games_datasource.dart' as _i3;
import '../data/data_source/games/games_datasource_impl.dart' as _i4;
import '../data/repository/games/games_repository_impl.dart' as _i6;
import '../domain/repository/games/games_repository.dart' as _i5;
import '../domain/use_case/games/fetch_games_usecase.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GameDataSource>(() => _i4.GameDataSourceImpl());
    gh.factory<_i5.GamesRepository>(
        () => _i6.GamesRepositoryImpl(dataSource: gh<_i3.GameDataSource>()));
    gh.factory<_i7.FetchGamesUseCase>(
        () => _i7.FetchGamesUseCase(repository: gh<_i5.GamesRepository>()));
    return this;
  }
}
