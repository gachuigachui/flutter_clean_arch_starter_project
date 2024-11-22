import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'feature_state.dart';

class FeatureCubit extends Cubit<FeatureState> {
  FeatureCubit() : super(FeatureInitial());
}
