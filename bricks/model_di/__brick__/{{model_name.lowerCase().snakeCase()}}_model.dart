import '{{{relative_path_to_deps}}}';
import './i_{{model_name.lowerCase().snakeCase()}}_model.dart';

@Singleton(as: I{{model_name.pascalCase()}}Model, env: [Env.prod])
class {{model_name.pascalCase()}}Model implements I{{model_name.pascalCase()}}Model {
  // TODO: add concrete implementation of I{{model_name.pascalCase()}}Model for prod
}