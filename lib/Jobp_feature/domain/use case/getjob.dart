import 'package:dartz/dartz.dart';



import '../../../core/error/failure.dart';
import '../entities/jobs.dart';
import '../reposotrey/job_feature.dart';

class JobsByNameUsecase {
  final BaseJobsReposotrey baserepo;

  JobsByNameUsecase(this.baserepo);

  Future<Either< Failure,List<Jobs>>> excute(String word) async {
    return await baserepo.getJobsByName(word);
  }

  Future<Either< Failure,List<Jobs>>> call() async {
    return await baserepo.getAllJobs();
  }
}
