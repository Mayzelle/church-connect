import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:love_community_chapel/core/resources/data-state.dart';
import 'package:love_community_chapel/features/sermons/data/models/sermon-model.dart';
import 'package:love_community_chapel/features/sermons/domain/usecases/get-sermons-usecase.dart';

part 'sermons_event.dart';
part 'sermons_state.dart';

class SermonsBloc extends Bloc<SermonsEvent, SermonsState> {
  final GetSermonsUseCase getSermonsUseCase;
  SermonsBloc(
    this.getSermonsUseCase,
  ) : super(const SermonsInitial()) {
    on<GetSermonsEvent>(getSermons);
  }

  void getSermons(GetSermonsEvent event, Emitter<SermonsState> emit) async {
    emit(const SermonsLoading());

    DataState result = await getSermonsUseCase(null);

    if (result is DataSuccess) {
      emit(SermonsSuccess(result.data));
    }
    if (result is DataFailed) {
      emit(SermonsError(result.error!));
    }
  }
}
