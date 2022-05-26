import 'package:flutter_architecture/entities/user_entity.dart';
import 'package:flutter_architecture/ui/global_state/user/user_model_global_state.dart';
import 'package:injectable/injectable.dart';

mixin UserGlobalState {
  UserEntity get get;
  void set(UserEntity user);
  void clean();
  void update(UserEntity user);
}

@LazySingleton(as: UserGlobalState)
class UserGlobalStateConcrete implements UserGlobalState {
  UserModelGlobalState _model = UserModelGlobalState.empty();

  @override
  UserEntity get get => _model.toEntity();

  @override
  void set(UserEntity user) => _model = UserModelGlobalState.fromEntity(user);

  @override
  void clean() => _model = UserModelGlobalState.empty();

  @override
  void update(UserEntity user) => set(user);
}
