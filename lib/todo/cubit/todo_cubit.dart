import 'package:api_repository/api_repository.dart';
import 'package:bloc/bloc.dart';

class TodoCubit extends Cubit<List<String>> {
  TodoCubit({
    required ApiRepository apiRepository,
  })  : _apiRepository = apiRepository,
        super(const <String>[]);

  final ApiRepository _apiRepository;

  void fetchTodo() => emit(_apiRepository.fetchList());
}
