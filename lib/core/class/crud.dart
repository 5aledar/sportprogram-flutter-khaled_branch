// import 'dart:convert';
// import 'package:dartz/dartz.dart';
// import 'package:get/get.dart';
// import 'package:sportcoaching/core/class/status_request.dart';
// import 'package:http/http.dart' as http;
// import 'package:sportcoaching/core/constant/link_server.dart';
// import '../services/myservices.dart';

// class Crud {
//   AppLinkServer appLinkServer = AppLinkServer();

//   ///SharedPrefrance
//   MyServices myServices = Get.find();

//   ///return two type Statusrequest and map
//   /// use packeg dartz because return two prameter
//   Future<Either<StatusRequest, Map>> postData(
//     String linkurl,
//     Map data,
//   ) async {
//     // if (await checkinternet()) {
//     print("=================== go =======================");
//     try {
//       var response =
//           await http.post(Uri.parse(linkurl), body: jsonEncode(data), headers: {
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//       });
//       print("=================== wait status code  =======================");

//       print(response.statusCode);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print(response.statusCode);
//         print("=================== CRUD =======================");
//         try {
//           var responsebody = await jsonDecode(response.body);
//           print(responsebody);
//           print("Done");
//           return Right(responsebody);
//         } catch (e) {
//           throw e;
//         }
//       }

//       if (response.statusCode == 401) {
//         var responsebody = await jsonDecode(response.body.toString());
//         print(responsebody);
//         return Right(responsebody);
//       } else
//         return const Left(StatusRequest.serverfailure);
//     } catch (_) {
//       print(_);
//       return const Left(StatusRequest.serverexception);
//     }
//   } //else {

//   //Get.snackbar("Error", "Pleas Check internet",
//   //backgroundColor: Colors.redAccent);
//   //return const Left(StatusRequest.offlinefailure);
//   // }
//   //}
// ///////// method to upload File Cv with trainer
//   Future uploadFile(
//     String file,
//     String token,
//   ) async {
//     // Create a multipart request
//     try {
//       var request =
//           http.MultipartRequest('POST', Uri.parse(appLinkServer.getcv()));
//       request.files.add(await http.MultipartFile.fromPath('cv', file));
//       await myServices.sharedPreferences.setString('file_path', file);
//       print("---------------------------------------------------------");
//       var header = {'Authorization': 'Bearer $token', 'ClientId': 'ABC!@#'};
//       request.headers.addAll(header);
//       // Send the request and get the response
//       var response = await request.send();
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('File uploaded successfully!');
//       } else {
//         print('faile . Status code: ${response.statusCode} }');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   ///////////////////upload image
//   Future uploadImage(String image, String token, String link) async {
//     // Create a multipart request
//     try {
//       var request = http.MultipartRequest('POST', Uri.parse(link));
//       request.files
//           .add(await http.MultipartFile.fromPath('profile_picture', image));
//       print("---------------------------------------------------------");
//       var header = {'Authorization': 'Bearer $token', 'ClientId': 'ABC!@#'};
//       request.headers.addAll(header);
//       // Send the request and get the response
//       var response = await request.send();
//       /////// STROY path image value request
//       response.stream.transform(utf8.decoder).listen((value) async {
//         print(value);
//         await myServices.sharedPreferences
//             .setString('image_path', value.toString());
//       });
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('Faile uploaded successfully!');
//       } else {
//         print('faile . Status code: ${response.statusCode} }');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future PutUploadImage(String image, String token, String link) async {
//     // Create a multipart request
//     try {
//       var request = http.MultipartRequest('POST', Uri.parse(link));
//       request.files
//           .add(await http.MultipartFile.fromPath('profile_picture', image));
//       print("---------------------------------------------------------");
//       request.fields['_method'] = "PUT";
//       var header = {'Authorization': 'Bearer $token', 'ClientId': 'ABC!@#'};
//       request.headers.addAll(header);
//       // Send the request and get the response
//       var response = await request.send();
//       /////// STROY path image value request
//       response.stream.transform(utf8.decoder).listen((value) async {
//         print(value);
//         await myServices.sharedPreferences
//             .setString('image_path', value.toString());
//       });
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('Faile uploaded successfully!');
//       } else {
//         print('faile . Status code: ${response.statusCode} }');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   //////posts
//   Future uploadImagewithinfo(
//       String image, String token, String link, String caption) async {
//     // Create a multipart request
//     try {
//       var request = http.MultipartRequest('POST', Uri.parse(link));
//       request.files.add(await http.MultipartFile.fromPath('attachment', image));
//       print("---------------------------------------------------------");
//       request.fields['caption'] = caption;

//       ///save path to get image
//       var header = {'Authorization': 'Bearer $token', 'ClientId': 'ABC!@#'};
//       request.headers.addAll(header);
//       // Send the request and get the response
//       var response = await request.send();
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('Faile uploaded successfully!');
//       } else {
//         print('faile . Status code: ${response.statusCode} }');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

// /////////////////////////////////////////////////////////Get Data
//   Future<Either<StatusRequest, Map>> getData(
//     String linkurl,
//   ) async {
//     //if (await checkinternet()) {
//     print("=================== go =======================");
//     try {
//       var response = await http.get(Uri.parse(linkurl), headers: {
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//       });
//       print("=================== wait status code  =======================");
//       print(response.statusCode);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print(response.statusCode);
//         print("=================== CRUD =======================");
//         try {
//           var responsebody = await jsonDecode(response.body.toString());
//           print(responsebody);
//           print("Done");
//           return Right(responsebody);
//         } catch (e) {
//           print(e);
//         }
//       }
//       if (response.statusCode == 401) {
//         var responsebody = await jsonDecode(response.body.toString());
//         print(responsebody);
//         return Right(responsebody);
//       } else
//         return const Left(StatusRequest.serverfailure);
//       // } else {
//       //   return const Left(StatusRequest.offlinefailure);
// //}
//     } catch (_) {
//       print(_);
//       return const Left(StatusRequest.serverexception);
//     }
//   }

// ////////////////post with token
//   Future<Either<StatusRequest, Map>> postDataToken(
//       String linkurl, Map data, String token) async {
//     //if (await checkinternet()) {
//     print("=================== go =======================");
//     try {
//       var response =
//           await http.post(Uri.parse(linkurl), body: jsonEncode(data), headers: {
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token'
//       });
//       print("=================== wait status code  =======================");
//       print(response.statusCode);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print(response.statusCode);
//         print("=================== CRUD =======================");
//         try {
//           var responsebody = await jsonDecode(response.body);
//           print(responsebody);
//           print("Done");
//           return Right(responsebody);
//         } catch (e) {
//           throw e;
//         }
//       }
//       if (response.statusCode == 401) {
//         var responsebody = await jsonDecode(response.body.toString());
//         print(responsebody);
//         return Right(responsebody);
//       } else
//         return const Left(StatusRequest.serverfailure);
//       // } else {
//       //   return const Left(StatusRequest.offlinefailure);
// //}
//     } catch (_) {
//       print(_);
//       return const Left(StatusRequest.serverexception);
//     }
//   }

//   /////////////////////////
//   Future<Either<StatusRequest, Map>> getDataToken(
//       String linkurl, String token) async {
//     //if (await checkinternet()) {
//     print("=================== go =======================");
//     print(token);
//     try {
//       var response = await http.get(Uri.parse(linkurl), headers: {
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token'
//       });
//       print("=================== wait status code  =======================");
//       print(response.statusCode);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print(response.statusCode);
//         print("=================== CRUD =======================");
//         try {
//           print(myServices.sharedPreferences.getString('token'));
//           var responsebody = await jsonDecode(response.body.toString());
//           print(responsebody);
//           print("Done");
//           return Right(responsebody);
//         } catch (e) {
//           print(e);
//         }
//       }
//       if (response.statusCode == 401) {
//         var responsebody = await jsonDecode(response.body.toString());
//         print(responsebody);
//         return Right(responsebody);
//       } else
//         return const Left(StatusRequest.serverfailure);
//       // } else {
//       //   return const Left(StatusRequest.offlinefailure);
// //}
//     } catch (_) {
//       print(_);
//       return const Left(StatusRequest.serverexception);
//     }
//   }

// ////////////////post with token
//   Future<Either<StatusRequest, Map>> putDataToken(
//       String linkurl, Map data, String token) async {
//     //if (await checkinternet()) {
//     print("=================== go =======================");
//     try {
//       var response =
//           await http.post(Uri.parse(linkurl), body: jsonEncode(data), headers: {
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token'
//       });
//       print("=================== wait status code  =======================");
//       print(response.statusCode);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print(response.statusCode);
//         print("=================== CRUD =======================");
//         try {
//           var responsebody = await jsonDecode(response.body.toString());
//           print(responsebody);
//           print("Done");
//           return Right(responsebody);
//         } catch (e) {
//           throw e;
//         }
//       }
//       if (response.statusCode == 401) {
//         var responsebody = await jsonDecode(response.body);
//         print(responsebody);
//         return Right(responsebody);
//       } else
//         return const Left(StatusRequest.serverfailure);
//       // } else {
//       //   return const Left(StatusRequest.offlinefailure);
// //}
//     } catch (_) {
//       print(_);
//       return const Left(StatusRequest.serverexception);
//     }
//   }

//   //////////////////////////////////Delete
//   deleteDataToken(String linkurl, String token) async {
//     //if (await checkinternet()) {
//     print("=================== go =======================");
//     var response = await http.delete(Uri.parse(linkurl), headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $token'
//     });
//     print("=================== wait status code  =======================");
//     print(response.statusCode);
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       print(response.statusCode);
//       print("=================== CRUD =======================");
//       try {
//         var responsebody = response.body.toString();

//         print(responsebody);
//         print("Done");
//         return (responsebody);
//       } catch (e) {
//         throw e;
//       }
//     }
//     // } else {
//     //   return const Left(StatusRequest.offlinefailure);
// //}
//   }
// }
