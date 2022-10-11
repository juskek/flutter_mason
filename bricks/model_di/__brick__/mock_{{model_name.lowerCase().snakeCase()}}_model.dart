import '{{{relative_path_to_deps}}}';
import 'package:mockito/mockito.dart';
import './i_{{model_name.lowerCase().snakeCase()}}_model.dart';

@Singleton(as: I{{model_name.pascalCase()}}Model, env: [Env.mock])
class Mock{{model_name.pascalCase()}}Model extends Mock implements I{{model_name.pascalCase()}}Model {
  // this class should be left blank so that mockito can @override interface members for stubbing
}