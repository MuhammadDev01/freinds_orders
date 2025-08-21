part of 'teacher_cubit.dart';

@immutable
sealed class TeacherStates {}

final class TeacherInitialState extends TeacherStates {}

final class TeacherAddLoadingState extends TeacherStates {}

final class TeacherAddSuccessState extends TeacherStates {}

final class TeacherAddErrorState extends TeacherStates {}

final class TeacherReceivedOrderState extends TeacherStates {}
