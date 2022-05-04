import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {

  // Instancia do SQFLiteDatabase
  static Database _database;

  // Instancia da classe Helper “Singleton”
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  // Fábrica da classe Helper “construtor”
  factory DatabaseHelper() {
    return _instance;
  }

  // Construtor nomeado
  DatabaseHelper._internal();

  void _createTables(Database database, int version) async {
    // Criando a tabela de Cursos
    await database.execute(
      '''      
      CREATE TABLE ChatMessage 
      (        
        name TEXT,
        text TEXT,
        type TEXT,    
      )      
      ''',
    );
  }
  Future<Database> _createDatabase() async {
    String databasesPath = await getDatabasesPath();

    String dbPath = join(databasesPath, 'ChatMessage.db');

    var database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: _createTables,
    );
    return database;
  }

  Future<Database> get connection async {
    if (_database == null) {
    _database = await _createDatabase();
    }
    return _database;
    }

}