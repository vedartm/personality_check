// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/trait/repo/i_trait_repo.dart' as _i3;
import '../../features/trait/repo/trait_repo.dart' as _i4;
import '../../features/trait/ui/cubits/questions/questions_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ITraitRepo>(() => _i4.TraitRepo());
  gh.factory<_i5.QuestionsCubit>(
      () => _i5.QuestionsCubit(get<_i3.ITraitRepo>()));
  return get;
}
