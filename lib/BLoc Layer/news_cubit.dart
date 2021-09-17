import 'package:akhbarna/data_layer/entities/article_model_entities.dart';
import 'package:akhbarna/data_layer/models/article_model.dart';
import 'package:akhbarna/data_layer/repo/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);

  NewsRepository _repository = NewsRepository();

  List<ArticleModel> articles = [];

  List<ArticleModel> Searchedarticles = [];

  String search = '';
  void getTopArticles() async {
    emit(NewsLoading());
    await _repository.searchArticles('apple').then((value) => null);
    try {
      List<ArticleModel> list = await _repository.getTopHeadLine();
      articles = list;
      if (articles == []) throw new Exception('empty list of articles');
      print(list.length);
      emit(NewsLoadedSuccess());
    } catch (e) {
      emit(NewsError(e.toString()));
    }
  }

  void getSearchedArticles() async {
    if (!search.isEmpty) {
      await _repository.searchArticles(search);
    }
  }
}
