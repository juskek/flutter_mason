export 'package:injectable/injectable.dart';
import './i_{{model_name.lowerCase().snakeCase()}}_repository.dart';

@Singleton(as: I{{model_name.pascalCase()}}Repository)
class {{model_name.pascalCase()}}Repository implements I{{model_name.pascalCase()}}Repository {
  {{model_name.pascalCase()}}Repository(this._{{model_name.camelCase()}}LocalDataSource,this._{{model_name.camelCase()}}RemoteDataSource);

  final _{{model_name.pascalCase()}}LocalDataSource _{{model_name.camelCase()}}LocalDataSource;
  final _{{model_name.pascalCase()}}RemoteDataSource _{{model_name.camelCase()}}RemoteDataSource;

}