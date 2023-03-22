// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/jobs.dart';




abstract class BaseJobsReposotrey {
  
 Future<Either< Failure,List<Jobs>>>getAllJobs();
 Future<Either< Failure,List<Jobs>>> getJobsByName(String word);
}
