

import 'package:dio/dio.dart';


import '../../../core/error/exceptions.dart';
import '../../../core/network/error_message_model.dart';
import '../model/jobmodel.dart';

abstract class BaseDataSource {
  Future<List<JobsModel>> getAllJobs();
  Future<List<JobsModel>> getJobsByName(String word);
}

class DataSource extends BaseDataSource {
  @override
  Future<List<JobsModel>> getAllJobs() async {
    final response = await Dio().get('http://back-ph2h.onrender.com/jobs/');
    if (response.statusCode == 200) {
      return List<JobsModel>.from((response.data["jobs"] as List).map(
        (e) => JobsModel.fromjson(e),
      ));
    } else {
      // throw Exception(response.data['"message']);
      // return message only of error mdeljobs
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
  
  @override
  Future<List<JobsModel>> getJobsByName(String word) async{
    final response = await Dio().get('http://back-ph2h.onrender.com/jobs/?search=$word' );
  
   if (response.statusCode == 200) {
      return List<JobsModel>.from((response.data["jobs"] as List).map(
        (e) => JobsModel.fromjson(e),
      ));
    } else {
      // throw Exception(response.data['"message']);
      // return message only of error mdeljobs
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  
  }

 
}
