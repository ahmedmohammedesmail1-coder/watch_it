import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_it/features/home/data/models/articals_model.dart';
import 'package:watch_it/features/home/data/repo/feature_repo.dart';
import 'package:watch_it/features/home/presentation/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialState());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  Future<void> testDio() async {
    emit(LoadingState());

    final result = await FeatureRepo().getData();
    debugPrint(result.toString());
    result.fold(ifLeft: (error) {
      emit(ErrorState(error: error));
    }, ifRight: (ArticalesModel response) {
      debugPrint('Author: ${response.author}');
      emit(SuccessState(articalesModel: response));
    });

//   try {
//     Response response = await DioHelper.get(path: everythingEndpoint,
//     search: 'bitcoin',
//     queryParameters: {
//       'searchIn': 'title,content',
//     });
// EverythingModel everythingModel=EverythingModel.fromjson(response.data);
//     debugPrint(everythingModel.status);
//         debugPrint(everythingModel.totalResults.toString());
//     debugPrint(everythingModel.articles?.length.toString());

//  } catch (e) {
//    debugPrint('Error$e');
//  }
  }
}
