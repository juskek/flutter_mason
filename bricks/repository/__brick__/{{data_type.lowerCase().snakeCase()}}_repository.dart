import 'package:injectable/injectable.dart';
import './i_{{data_type.lowerCase().snakeCase()}}_repository.dart';
import './{{data_type.lowerCase().snakeCase()}}_local_data_source.dart';
import './{{data_type.lowerCase().snakeCase()}}_remote_data_source.dart';

@Singleton(as: I{{data_type.pascalCase()}}Repository)
class {{data_type.pascalCase()}}Repository implements I{{data_type.pascalCase()}}Repository {
  {{data_type.pascalCase()}}Repository(this._{{data_type.camelCase()}}LocalDataSource,this._{{data_type.camelCase()}}RemoteDataSource);

  final {{data_type.pascalCase()}}LocalDataSource _{{data_type.camelCase()}}LocalDataSource;
  final {{data_type.pascalCase()}}RemoteDataSource _{{data_type.camelCase()}}RemoteDataSource;

}