import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:web_client/core/contracts/repository_contract.dart';

part 'clear_group_id_event.dart';
part 'clear_group_id_state.dart';

class ClearGroupIdBloc extends Bloc<ClearGroupIdEvent, ClearGroupIdState> {
  ClearGroupIdBloc(this.repo) : super(ClearGroupIdInitial());
  RepositoryContract repo;

  @override
  Stream<ClearGroupIdState> mapEventToState(
    ClearGroupIdEvent event,
  ) async* {
    if (event is ClearGroupIdConfirm) {
      repo.clearGroupId();

      yield ClearGroupIdConfirmed();
    }
  }
}
