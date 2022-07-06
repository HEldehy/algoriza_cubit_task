import 'package:algoriza_cubit_task/features/counter/presentation/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterInitialState());
  static CounterCubit get(context)=>BlocProvider.of<CounterCubit>(context);
  int counter=0;
  void plus(){
    counter++;
    emit(CounterPlusState());
  }
  void minus(){
    counter--;
    emit(CounterMinusState());
  }

}