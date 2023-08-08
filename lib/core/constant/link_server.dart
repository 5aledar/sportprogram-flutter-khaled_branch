// import 'package:get/get.dart';
// import 'package:sportcoaching/core/services/myservices.dart';

// class AppLinkServer {
//   MyServices myServices = Get.find();
//   late String id;
//   late String idProgram;
//   // static const String server = "http://127.0.0.1:8000/api";
//   //static const String server = "http://192.168.43.231:8000/api";

//   static const String server = "http://10.0.2.2:8000/api";

//   //static const String register = "$server/register";
//   static const String login = "$server/login";
//   static const String signupTrainer = "$server/trainers/register";
//   static const String signup = "$server/trainees/register";
//   static const String postprogram = "$server/programs/";
//   static const String browsAllProgram = "$server/programs/browseall";
//   static const String massage = "$server/api/trainees/messages";
//   static const String chat = "$server/messages/3/3";
//   static const String getChat = "$server/chats/";
//   static const String getmessages = "$server/messages/3";
//   static const String getChatTrainees = "$server/trainees";
//   static const String getChatTrainers = "$server/trainers";
//   static const String getImage = "$server/trainers";
//   static const String sendPost = "$server/posts/";
//   static const String logout = "$server/logout"; 
 
//     String browsPosts(page) {
//     id = myServices.sharedPreferences.getString('id').toString();
//     return "$server/posts/browse";
//   }

//  String unFollowUser(int id) { 
//      return "$server/followers/unFollow/${id}";
//   }

//   String followUser(int id) { 
//      return "$server/followers/store/${id}";
//   }

//   String destroyEcersice(id) {
//     return "$server/programs/training/${id}";
//   }

//   /////send request to program from trainee
//   String sendToTrainer(int id) {
//     return "$server/requests/send/$id";
//   }

//   ///update information user
//   String updateuser() {
//     id = myServices.sharedPreferences.getString('id').toString();
//     return "$server/update/$id";
//   }

//   ////get my posts
//   String getPosts(page) {
//     id = myServices.sharedPreferences.getString('id').toString();
//     return "$server/posts/index/$id?page=$page";
//   }

//   ///search user to follower
//   String search(String text) {
//     return "$server/search/$text";
//   }

//   ///update program
//   String PutProgram(int idProgram) {
//     return "$server/programs/$idProgram";
//   }

//   /////update excercise
//   String putExcersise(int idProgram) {
//     return "$server/programs/training/$idProgram";
//   }

//   //////add excersice
//   String setExcersise(int idProgram) {
//     return "$server/programs/training/$idProgram";
//   }

//   ////get Excersice prrogram
//   String getExcersise(int id) {
//     return "$server/programs/training/$id/index";
//   }

// /////delete program
//   String destroyProgram(int idProgram) {
//     return "$server/programs/$idProgram";
//   }

//   ///get my program
//   String getMyProgram() {
//     return "$server/programs/browsemine";
//   }

//   ///get information program
//   String getinfoProgram(int idProgram) {
//     return "$server/programs/${idProgram}";
//   }

//   ////post cv
//   String getcv() {
//     String uploadcv;
//     //////id user
//     id = myServices.sharedPreferences.getString('id').toString();
//     uploadcv = "$server/trainers/uploadcv/$id";
//     return uploadcv;
//   }

//   ////post imageProfile
//   String getIdImage() {
//     String uploadImage;
//     id = myServices.sharedPreferences.getString('id').toString();
//     uploadImage = "$server/uploadprofile/$id";
//     return uploadImage;
//   }
// }
