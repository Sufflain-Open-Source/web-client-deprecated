import 'package:firebase/firebase.dart';
import 'package:web_client/ui/components/error_message.dart';

class Authenticator {
  static final cannotSignInErrorMessage =
      'Произошла ошибка аутентификации. Повторите попытку позже.';

  Authenticator(this.app);

  final App app;
  late final Auth auth = app.auth();

  Future<String> anonymousSignIn() async {
    var errorMessageElement = '';

    try {
      await auth.signInAnonymously();
    } catch (e) {
      errorMessageElement = makeMessage(
          'error-message', 'sign-in-error', cannotSignInErrorMessage);
    }

    return errorMessageElement;
  }
}
