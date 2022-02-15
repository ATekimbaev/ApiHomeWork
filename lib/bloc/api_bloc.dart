import 'package:api_project/bloc/api_event.dart';
import 'package:api_project/bloc/api_state.dart';
import 'package:bloc/bloc.dart';

import '../api/response.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc()
      : super(ApiStateValue()) {
    on<ApiEventButtonPress>(
      (event, emit) async => emit(
        
        ApiGetUser(name: name, userName: userName, email: email),
      ),
    );
  }
}
