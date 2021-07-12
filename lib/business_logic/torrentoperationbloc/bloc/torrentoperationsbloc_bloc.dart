import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rasp_torrent_flutter_app/repository/torrentoperationsrepository.dart';

part 'torrentoperationsbloc_event.dart';
part 'torrentoperationsbloc_state.dart';

class TorrentOperationsBloc
    extends Bloc<TorrentOperationsEvent, TorrentOperationsState> {
  final TorrentOperationRepository torrentOperationRepository;
  TorrentOperationsBloc(this.torrentOperationRepository)
      : super(TorrentoperationsblocInitial());

  @override
  Stream<TorrentOperationsState> mapEventToState(
    TorrentOperationsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
