//call datasource to run methode in last stage
import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failure.dart';
import '../../domain/entities/jobs.dart';
import '../../domain/reposotrey/job_feature.dart';
import '../DataSource/getjobs.dart';


class JobReposotrey extends BaseJobsReposotrey {
  final BaseDataSource basedatasource;

  JobReposotrey(this.basedatasource);

  @override
  Future<Either<Failure, List<Jobs>>> getAllJobs() async {
    final result = await basedatasource.getAllJobs();
    try {
      return right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
  
  @override
  Future<Either<Failure, List<Jobs>>> getJobsByName(String word)async {
      final result=await basedatasource.getJobsByName(word);
    try{
      return right(result);
    }
    on ServerException catch(failure){
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
  
 
 
  
}
