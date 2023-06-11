import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:search_engine_app/config/urls.dart';
import 'package:search_engine_app/data/network/remote/dio_helper.dart';

import '../../../data/models/search_model.dart';

part 'search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);
  SearchModel searchModel = SearchModel();

  search1({
    required String value,
  }) {
    emit(SearchLoadingState());
    DioHelper.postData(
      url: Urls.search1,
      data: FormData.fromMap(
        {
          "kewword": value,
        },
      ),
    ).then((value) {
      searchModel = SearchModel.fromJson(value.data);
      emit(SearchDoneState());
    }).catchError((err) {
      print(err.toString());
      emit(SearchErrorState());
    });
  }
}
