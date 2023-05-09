// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../global/constants.dart';
import './login_service.dart';
import '../../core/storage/storage.dart';
import '../../repositories/auth/auth_respository.dart';

class LoginServiceImpl implements LoginService {
  final AuthRepository _authRepository;
  final Storage _storage;

  LoginServiceImpl(this._authRepository, this._storage);

  @override
  Future<void> execute(String email, String password) async {
    final authmodel = await _authRepository.login(
      email,
      password,
    );

    _storage.setdata(
      SessionStorageKeys.accessToken.key,
      authmodel.accessToken,
    );
  }
}
