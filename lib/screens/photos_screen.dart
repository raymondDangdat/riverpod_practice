import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/model/photo.dart';
import 'package:riverpod_practice/state/state_manager.dart';

class PhotosScreen extends ConsumerWidget {
  const PhotosScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Photo>> photos = ref.watch(photoStateFuture);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Photos"),
      ),

      body: photos.when(
          data: (photos){
            return ListView.builder(
              itemCount: photos.length,
                itemBuilder: (context, index){
              return Column(
                children: [
                   ListTile(
                     leading:  CircleAvatar(
                       backgroundImage: NetworkImage(photos[index].thumbnailUrl),
                     ),
                     
                     title: Text("${photos[index].id}. ${photos[index].title}" ),
                   )
                ],
              );
            });
          },
          error: (err, stack) => Center(child: Text(err.toString()),),
          loading: () => const Center(child: CupertinoActivityIndicator(),)),
    );
  }
}
