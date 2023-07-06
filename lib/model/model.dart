import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

// Crear los modelos de las tablas
const miembroTable = SqfEntityTable(
  tableName: 'miembro',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: true,
  fields: [
    SqfEntityField('nombre', DbType.text),
    SqfEntityField('apellido', DbType.text),
    SqfEntityField('telefono', DbType.text),
    SqfEntityField('email', DbType.text),
    SqfEntityField('direccion', DbType.text),
  ],
);

const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
);

// Crear la base de datos en SQLite
@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
  databaseName: 'MiembrosDB.db',
  databaseTables: [miembroTable],
  bundledDatabasePath: null,
  password: null,
  sequences: [seqIdentity],
);