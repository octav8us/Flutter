import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/jobs.dart';
import '../reposotrey/job_feature.dart';

class GetJobsUsecase {
  final BaseJobsReposotrey baserepo;

  GetJobsUsecase(this.baserepo);

  Future<Either<Failure, List<Jobs>>> excute(String word) async {
    return await baserepo.getJobsByName(word);
  }

  Future<Either<Failure, List<Jobs>>> call() async {
    return await baserepo.getAllJobs();
  }
}
