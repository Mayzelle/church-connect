import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'testimonies_event.dart';
part 'testimonies_state.dart';

class TestimoniesBloc extends Bloc<TestimoniesEvent, TestimoniesState> {
  TestimoniesBloc() : super(TestimoniesInitial()) {
    on<TestimoniesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
