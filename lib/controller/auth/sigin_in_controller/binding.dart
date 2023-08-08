import 'package:get/get.dart';
import 'package:projectsport/controller/auth/sigin_in_controller/sigin_in.dart';
class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
