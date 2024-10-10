import 'package:api_repository/api_repository.dart';
import 'package:turbo/app/app.dart';
import 'package:turbo/bootstrap.dart';

void main() {
  const apiRepository = ApiRepository();

  bootstrap(() => const App(apiRepository: apiRepository));
}
