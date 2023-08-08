import 'package:get/get.dart';
import 'package:projectsport/controller/auth/sigin_up_controller/sigin_up.dart';
class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}