import 'package:carshub/features/brands/presentation/providers/brands_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Brands extends ConsumerWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var state = ref.watch(getBrandsProvider);
    // final result = state.result;

    // if (result.hasException) {
    //   return Text(result.exception.toString());
    // }

    // if (result.isLoading) {
    //   return const Text('Loading');
    // }
    var result;
    List? repositories = result.data?['viewer']?['repositories']?['nodes'];

    if (repositories == null) {
      return const Text('No repositories');
    }

    return Column(
      children: [
        ListView.builder(
            itemCount: repositories.length,
            itemBuilder: (context, index) {
              final repository = repositories[index];

              return Text(repository['name'] ?? '');
            }),
      ],
    );
  }
}
