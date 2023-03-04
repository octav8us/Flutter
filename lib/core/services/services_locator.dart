import 'package:get_it/get_it.dart';

import '../../Jobp_feature/data/DataSource/getjobs.dart';
import '../../Jobp_feature/data/reposotorey/datarepojop.dart';
import '../../Jobp_feature/domain/reposotrey/job_feature.dart';
import '../../Jobp_feature/domain/use case/getjob.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///bloc
    
     /// Use Cases
     sl.registerLazySingleton(() => GetJobsUsecase(sl()));
    ///DataSource
    sl.registerLazySingleton<BaseDataSource>(() => DataSource());

   /// pository
   sl.registerLazySingleton<BaseJobsReposotrey>(() => JobReposotrey(sl()));
    
   
  }
}
