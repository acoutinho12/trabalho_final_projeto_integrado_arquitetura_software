import 'package:ollen/core/error/failures.dart';

const serverFailureMessage = "Erro ao processar sua solicitacao";

String failureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      default:
        return serverFailureMessage;
    }
  }