import 'dart:io';

import 'package:dash_agent/data/datasource.dart';
import 'package:dash_agent/data/objects/project_data_object.dart';
import 'package:dash_agent/data/objects/file_data_object.dart';
import 'package:dash_agent/data/objects/web_data_object.dart';
import 'package:go_router/data_source/sitemap_url_fetcher.dart';

/// [DocsDataSource] indexes all the documentation related data and provides it to commands.
class DocsDataSource extends DataSource {
  @override
  List<FileDataObject> get fileObjects => [];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects => [
        for (final docUrl
            in sitemapUrlFetcher('assets/documents/go_router_doc.xml'))
          WebDataObject.fromWebPage(docUrl)
      ];
}

/// [ExampleDataSource] indexes all the examples related data and provides it to commands.
class ExampleDataSource extends DataSource {
  @override
  List<FileDataObject> get fileObjects => [
        FileDataObject.fromDirectory(Directory('assets/examples/official/lib'),
            includePaths: true,
            regex: RegExp(r'(\.dart$)'),
            relativeTo:
                '/Users/yogesh/Development/org.welltested/default_agents/go_router/assets/examples')
      ];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects => [];
}

/// [IssuesDataSource] indexes all the issues and their solutions related data and provides it to commands.
class IssuesDataSource extends DataSource {
  final List<String> issuesLinks;

  IssuesDataSource(this.issuesLinks);

  @override
  List<FileDataObject> get fileObjects => [];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects =>
      [for (final issueUrl in issuesLinks) WebDataObject.fromWebPage(issueUrl)];
}


/// [TestExampleDataSource] indexes all the test examples related data and provides it to commands.
class TestExampleDataSource extends DataSource {
  @override
  List<FileDataObject> get fileObjects => [
        FileDataObject.fromDirectory(Directory('assets/examples/official/test'),
            includePaths: true,
            regex: RegExp(r'(\.dart$)'),
            relativeTo:
                '/Users/yogesh/Development/org.welltested/default_agents/go_router/assets/examples')
      ];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects => [];
}