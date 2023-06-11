part of 'search_cubit.dart';

@immutable
abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchDoneState extends SearchStates {}

class SearchErrorState extends SearchStates {}
