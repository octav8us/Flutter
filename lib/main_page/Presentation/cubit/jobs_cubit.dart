import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/use case/getjob.dart';

part 'jobs_state.dart';

class JobsCubit extends Cubit<JobsState> {
  final GetJobsUsecase getjobusecase;
  JobsCubit(this.getjobusecase) : super(JobsInitial());

  //usecase to provide logic of ui in presentation layer
  void getJobs() async {
    emit(JobsLoading());
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(JobsSuccess());
    } catch (e) {
      emit(JobsFail());
    }
  }
}
