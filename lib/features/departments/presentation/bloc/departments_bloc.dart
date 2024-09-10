import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'departments_event.dart';
part 'departments_state.dart';

class DepartmentsBloc extends Bloc<DepartmentsEvent, DepartmentsState> {
  DepartmentsBloc() : super(DepartmentsInitial()) {
    on<DepartmentsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
