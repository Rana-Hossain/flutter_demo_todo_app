

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_todo_application/api/call_api.dart';
import 'package:simple_todo_application/models/user_model.dart';

final userDataProvider = FutureProvider<List<Data>>((ref) async {
  return ref.watch(userProvider).getUsers();
});