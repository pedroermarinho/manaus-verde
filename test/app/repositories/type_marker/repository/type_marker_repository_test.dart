import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:manaus_verde/app/repositories/type_marker/repository/interfaces/type_marker_repository_interface.dart';

class MockClient extends Mock implements Dio {}

void main() {
  ITypeMarkerRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = TypeMarkerRepository(client);
  });

  group('TypeMarkerRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<TypeMarkerRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
