import 'package:thegoodbotps/model/TopicModel.dart';
import 'package:thegoodbotps/database_helper.dart';

class CasesRepository{
  DatabaseHelper _databaseHelper;

  CasesRepository() {
    _databaseHelper = new DatabaseHelper();
  }

  Future<List<Case>> findAll() async {
    var connection = await _databaseHelper.connection;
    var result = await connection.query(
      "ChatMessage",
      columns: [
        "text",
        "name",
        "type",
      ],
    );

    List<Case> cases = new List<Case>();
    for (Map i in result) {
      cases.add(Case.fromMap(i));
    }

    return cases;
  }

  Future<int> create(Case item) async {
    var connection = await _databaseHelper.connection;
    var result = await connection.insert(
      "ChatMessage",
      item.toMap(),
    );

    return result;
  }

  Future<int> add(Case item) async {
    var connection = await _databaseHelper.connection;
    var sqlCommand = " INSERT INTO ChatMessage" +
        "VALUES ( " +
        "    '${item.text}' , " +
        "    '${item.name}' , " +
        "     ${item.type}, "
        "  ) ";

    var result = await connection.rawInsert(sqlCommand);
    return result;
  }

}
