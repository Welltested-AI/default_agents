import 'dart:io';

import 'package:dash_agent/data/datasource.dart';
import 'package:dash_agent/data/filters/filter.dart';
import 'package:dash_agent/data/objects/file_data_object.dart';
import 'package:dash_agent/data/objects/project_data_object.dart';
import 'package:dash_agent/data/objects/web_data_object.dart';

/// [DocsDataSource] indexes all the documentation related data and provides it to commands.
class DocsDataSource extends DataSource {
  @override
  List<FileDataObject> get fileObjects => [];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects => [
        WebDataObject.fromSiteMap('https://docs.pandas-ai.com/sitemap.xml'),
        WebDataObject.fromGithub(
            'https://github.com/sinaptik-ai/pandas-ai', accessToken,
            codeFilter: CodeFilter(pathRegex: r'^examples\/.*'))
      ];
}