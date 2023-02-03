export 'package:injectable/injectable.dart';
import './i_{{data_type.lowerCase().snakeCase()}}_repository.dart';

@Singleton(as: I{{data_type.pascalCase()}}Repository)
class {{data_type.pascalCase()}}Repository implements I{{data_type.pascalCase()}}Repository {
  {{data_type.pascalCase()}}Repository(this._{{data_type.camelCase()}}LocalDataSource,this._{{data_type.camelCase()}}RemoteDataSource);

  final _{{data_type.pascalCase()}}LocalDataSource _{{data_type.camelCase()}}LocalDataSource;
  final _{{data_type.pascalCase()}}RemoteDataSource _{{data_type.camelCase()}}RemoteDataSource;

}