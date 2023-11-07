import 'package:sqflite/sqflite.dart' as sql;

class SQlHelper{

    static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('contact', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE mycontacts(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       phone TEXT
      )""");
  }
  static Future<int> adddata(String text, String text2) async {
     final db = await SQlHelper.OpenDb(); // to open database
    final data = {"name": text, "phone": text2};
    final id = db.insert('mycontacts', data);
    return id;
  }

  static Future <List<Map<String,dynamic>>> readData() async {
    final db = await SQlHelper.OpenDb();
    return db.query("mycontacts",orderBy: 'id');// read all the datas by id


  }

  static Future<int> updatedata(int id, String text, String text2) async {
    final db = await SQlHelper.OpenDb();
    final udata = {'name':text,'phone':text2};
    final result = await db.update("mycontacts", udata, where: "id=?",whereArgs: [id]);
    return result;

  }

  static Future<void> deletedata(int id) async {
    final db = await SQlHelper.OpenDb();
    try{
    db.delete("mycontacts",where: "id=?",whereArgs: [id]);

    }
    catch (e){
      print(e);
    }
    
  }

}