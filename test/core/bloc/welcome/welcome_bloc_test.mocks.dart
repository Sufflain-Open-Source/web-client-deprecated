// Mocks generated by Mockito 5.0.7 from annotations
// in web_client/test/core/bloc/welcome/welcome_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:web_client/core/contracts/repository_contract.dart' as _i2;
import 'package:web_client/core/entities/timetable.dart' as _i4;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

/// A class which mocks [RepositoryContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepositoryContract extends _i1.Mock
    implements _i2.RepositoryContract {
  MockRepositoryContract() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get isGroupSaved =>
      (super.noSuchMethod(Invocation.getter(#isGroupSaved), returnValue: false)
          as bool);
  @override
  String get groupId =>
      (super.noSuchMethod(Invocation.getter(#groupId), returnValue: '')
          as String);
  @override
  set groupId(String? groupId) =>
      super.noSuchMethod(Invocation.setter(#groupId, groupId),
          returnValueForMissingStub: null);
  @override
  _i3.Future<List<_i4.Timetable>> getTimetables(String? groupId) =>
      (super.noSuchMethod(Invocation.method(#getTimetables, [groupId]),
              returnValue: Future<List<_i4.Timetable>>.value(<_i4.Timetable>[]))
          as _i3.Future<List<_i4.Timetable>>);
  @override
  _i3.Future<List<String>> getGroups() =>
      (super.noSuchMethod(Invocation.method(#getGroups, []),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i3.Future<List<String>>);
}
