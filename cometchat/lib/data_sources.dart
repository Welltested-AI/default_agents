import 'dart:io';

import 'package:dash_agent/data/datasource.dart';
import 'package:dash_agent/data/objects/project_data_object.dart';
import 'package:dash_agent/data/objects/file_data_object.dart';
import 'package:dash_agent/data/objects/web_data_object.dart';

/// [DocsDataSource] indexes all the documentation related data and provides it to commands.
class DocsDataSource extends DataSource {
  @override
  List<FileDataObject> get fileObjects => [];

  @override
  List<ProjectDataObject> get projectObjects => [];

  @override
  List<WebDataObject> get webObjects => [
        WebDataObject.fromSiteMap('https://www.cometchat.com/docs/sitemap.xml'),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-android-kotlin',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-android-kotlin',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-android-java',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-react',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-angular',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-vue',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-flutter',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-ios',
        //     accessToken),
        // WebDataObject.fromGithub(
        //     'https://github.com/cometchat/cometchat-sample-app-react-native',
        //     accessToken)
      ];
}
