part of 'sermons_bloc.dart';

abstract class SermonsState extends Equatable {
  final DioException? error;
  final List<SermonModel>? sermons;
  const SermonsState({this.error, this.sermons});

  @override
  List<Object> get props => [error ?? Object(), sermons ?? Object()];
}

class SermonsInitial extends SermonsState {
  const SermonsInitial() : super();
}

class SermonsLoading extends SermonsState {
  const SermonsLoading() : super();
}

class SermonsSuccess extends SermonsState {
  const SermonsSuccess(List<SermonModel> sermons) : super(sermons: sermons);
}

class SermonsError extends SermonsState {
  const SermonsError(DioException error) : super(error: error);
}
