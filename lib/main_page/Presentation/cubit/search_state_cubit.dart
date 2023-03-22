/*
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/use case/search_job.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final String apiUrl = 'https://example.com/search';

  final SearchJobsUsecase searchJobusecase;
  SearchCubit(this.searchJobusecase) : super(SearchState.initial());



  void updateQuery(String query) {
    emit(state.copyWith(query: query));
    fetchResults(query);
  }

  Future<void> fetchResults(String query) async {
    try {
      final response = await http.get('$apiUrl?q=$query');
      if (response.statusCode == 200) {
        final results = response.body.split(',');
        emit(state.copyWith(results: results));
      }
    } catch (e) {
      emit(state.copyWith(results: []));
    }
  }
}*/
