part of 'sermons_bloc.dart';

abstract class SermonsEvent {
  const SermonsEvent();
}

class GetSermonsEvent extends SermonsEvent {
  const GetSermonsEvent();
}
