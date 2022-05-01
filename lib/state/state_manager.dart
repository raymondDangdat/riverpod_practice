 import 'package:riverpod_practice/model/photo.dart';
import 'package:riverpod_practice/network/network_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final photoStateFuture = FutureProvider<List<Photo>>((ref) async{
  return fetchPhotos();
});
