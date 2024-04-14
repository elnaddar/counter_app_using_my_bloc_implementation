import 'dart:async';

import 'package:counter_app_using_my_bloc_implementation/bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc implements Bloc{
  int _counter = 0;

  final StreamController<CounterEvent> _eventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get eventSink => _eventController.sink;

  final StreamController<int> _stateController = StreamController<int>();
  StreamSink<int> get _stateSink => _stateController.sink;
  Stream<int> get counter => _stateController.stream;

  CounterBloc(){
    _eventController.stream.listen(_mapEventToState);
  }

  @override
  void dispose() {
    _stateController.close();
    _eventController.close();
  }

  void _mapEventToState(CounterEvent event) {
    if(event == CounterEvent.increment){
      _stateSink.add(++_counter);
    }else{
      _stateSink.add(--_counter);
    }
  }
}
