import 'package:carshub/features/auth/domain/models/login_request.dart';
import 'package:carshub/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state/login_form_state.dart';

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  Ref ref;
  LoginFormNotifier(this.ref) : super(const LoginFormState());

  void updateMobile(String value) {
    state = state.copyWith(
      mobile: value,
    );
  }

  void updatePassword(String value) {
    state = state.copyWith(password: value);
  }

  void login() async {
    var response = await ref
        .read(authRepositoryImplProvider)
        .login(LoginRequest(contact: state.mobile, password: state.password));
    response.fold((l) => null, (r) => null);
  }
}

final loginFormNotifierProvider =
    StateNotifierProvider.autoDispose<LoginFormNotifier, LoginFormState>(
        (ref) => LoginFormNotifier(ref));
