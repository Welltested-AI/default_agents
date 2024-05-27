import 'package:dash_agent/configuration/command.dart';
import 'package:dash_agent/configuration/dash_agent.dart';
import 'package:dash_agent/configuration/metadata.dart';
import 'package:dash_agent/data/datasource.dart';

import 'data_sources.dart';

/// [MyAgent] consists of all your agent configuration.
///
/// This includes:
/// [DataSource] - For providing additional data to commands to process.
/// [Command] - Actions available to the user in the IDE, like "/ask", "/generate" etc
class MyAgent extends AgentConfiguration {
  MyAgent(List<String> docUrls) {
    docsDataSource = DocsDataSource(docUrls);
  }
  late final DocsDataSource docsDataSource;
  final ExamplesDataSource examplesDataSource = ExamplesDataSource();

  @override
  Metadata get metadata => Metadata(
      name: 'Firebase Genkit',
      avatarProfile: 'assets/logo.png',
      tags: ['Generative AI']);

  @override
  String get registerSystemPrompt =>
      '''You are a Firebase Genkit expert. Firebase Genkit is an open source framework that helps you build, deploy, and monitor production-ready AI-powered apps.''';

  @override
  List<DataSource> get registerDataSources => [
        docsDataSource,
      ];

  @override
  List<Command> get registerSupportedCommands => [
        // AskCommand(docsSource: docsDataSource)
      ];
}
