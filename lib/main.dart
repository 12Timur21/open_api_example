import 'package:flutter/material.dart';
import 'package:open_api_example/swagger_generated_code/client_index.dart';
import 'package:open_api_example/swagger_generated_code/full_documentation.swagger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Api Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _request() async {
    final x = await FullDocumentation.create(
      baseUrl: Uri(
        scheme: 'http',
        host: '10.0.2.2', //'localhost',
        path: '/api',
        port: 1337,
      ),
    ).exampleGet();

    // final c = await FullDocumentation.create(
    //   baseUrl: Uri(
    //     scheme: 'http',
    //     host: '10.0.2.2', //'localhost',
    //     path: '/api',
    //     port: 1337,
    //   ),
    // ).;

    // final b = await FullDocumentation.create(
    //   baseUrl: Uri(
    //     scheme: 'http',
    //     host: '10.0.2.2', //'localhost',
    //     path: '/api',
    //     port: 1337,
    //   ),
    // ).uploadFilesIdGet(id: '1');

    // final n = await FullDocumentation.create(
    //   baseUrl: Uri(
    //     scheme: 'http',
    //     host: '10.0.2.2', //'localhost',
    //     path: '/api',
    //     port: 1337,
    //   ),
    // ).testsIdGet(id: 1);

    // final c = await FullDocumentation.create(
    //   baseUrl: Uri(
    //     scheme: 'http',
    //     host: '10.0.2.2', //'localhost',
    //     path: '/api',
    //     port: 1337,
    //   ),
    // ).get

    // print(x);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Open Api Test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _request,
        tooltip: 'Request',
        child: const Icon(Icons.add),
      ),
    );
  }
}
