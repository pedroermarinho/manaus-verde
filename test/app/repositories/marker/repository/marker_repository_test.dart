import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:manaus_verde/app/repositories/marker/repository/interfaces/marker_repository_interface.dart';

// class MockClient extends Mock implements Dio {}

void main() {
  IMarkerRepository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = MarkerRepository(client);
  });

  group('MarkerRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<MarkerRepository>());
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
