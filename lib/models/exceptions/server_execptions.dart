import './Failure.dart';

class ServerException extends Failure{


  ServerException(String message, String title) : super(message, title);


  ServerException.fromJson(json):super(json["message"],json["message"]);

}