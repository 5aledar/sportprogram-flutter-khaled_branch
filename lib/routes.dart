import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projectsport/controller/auth/sigin_in_controller/binding.dart';
import 'package:projectsport/view/screen/auth/sign_in.dart';
import 'package:projectsport/view/screen/auth/sign_up.dart';

import 'controller/auth/sigin_up_controller/binding.dart';
import 'core/constant/approutes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.root, page: () => SignIn(), binding: SignInBinding()
      //  middlewares: [Middleware()]
      ),
  GetPage(
      name: AppRoute.signIn,
      page: () => const SignIn(),
      binding: SignInBinding()), 
        GetPage(
      name: AppRoute.signUp,
      page: () => const SignUp(),
      binding: SignUpBinding()),
];
