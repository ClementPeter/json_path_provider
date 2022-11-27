import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_path_provider/comment_models.dart';
import 'package:path_provider/path_provider.dart';

class ApiProvider {
  final url = "https://jsonplaceholder.typicode.com/comments";

  Future<List<Comment>?> getData() async {
    String fileName = "PathString.json";
    var dir =
        await getTemporaryDirectory(); //Get temp directory for caching in dir
    //print("Temp dir name : $dir");

    File file = File("${dir.path}/$fileName"); //assign the dir path as a file

    //check if the cached files exists
    if (file.existsSync()) {
      //print("Reading from device cache");
      final data = file.readAsStringSync();
      final comment = commentFromJson(data);
      return comment;
    } else {
      //else- get API for network
      //print("Fetching from Network");
      final response = await http.get(Uri.parse(url));

      //HTTP Error Check
      if (response.statusCode == 200) {
        final body = response.body;

        file.writeAsStringSync(body,
            flush: true, mode: FileMode.write); //write data to cache

        final comment = commentFromJson(body);
        return comment;
      } else {
        final body = response.body;
        return commentFromJson(body);
      }
    }
  }
}
