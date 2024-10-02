import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Orders extends StatelessWidget {
  final String readRepositories = """
  query ReadRepositories(\$nRepositories: Int!) {
    viewer {
      repositories(last: \$nRepositories) {
        nodes {
          id
          name
          viewerHasStarred
        }
      }
    }
  }
""";
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    final readRespositoriesResult = useQuery(
      QueryOptions(
        document: gql(readRepositories),
        variables: const {
          'nRepositories': 50,
        },
        pollInterval: const Duration(seconds: 10),
      ),
    );
    final result = readRespositoriesResult.result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Text('Loading');
    }

    List? repositories = result.data?['viewer']?['repositories']?['nodes'];

    if (repositories == null) {
      return const Text('No repositories');
    }

    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue[900],
            )),
        Expanded(flex: 3, child: Container()),
      ],
    );
    // ListView.builder(
    //     itemCount: repositories.length,
    //     itemBuilder: (context, index) {
    //       final repository = repositories[index];

    //       return Text(repository['name'] ?? '');
    //     });
  }
}
