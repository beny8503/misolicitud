// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permisos.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPermisosCollection on Isar {
  IsarCollection<Permisos> get permisos => this.collection();
}

const PermisosSchema = CollectionSchema(
  name: r'Permisos',
  id: -381421581386427386,
  properties: {
    r'add': PropertySchema(
      id: 0,
      name: r'add',
      type: IsarType.bool,
    ),
    r'code': PropertySchema(
      id: 1,
      name: r'code',
      type: IsarType.string,
    ),
    r'delete': PropertySchema(
      id: 2,
      name: r'delete',
      type: IsarType.bool,
    ),
    r'deny': PropertySchema(
      id: 3,
      name: r'deny',
      type: IsarType.bool,
    ),
    r'descripcion': PropertySchema(
      id: 4,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'exec': PropertySchema(
      id: 5,
      name: r'exec',
      type: IsarType.bool,
    ),
    r'imp': PropertySchema(
      id: 6,
      name: r'imp',
      type: IsarType.bool,
    ),
    r'read': PropertySchema(
      id: 7,
      name: r'read',
      type: IsarType.bool,
    ),
    r'update': PropertySchema(
      id: 8,
      name: r'update',
      type: IsarType.bool,
    ),
    r'user': PropertySchema(
      id: 9,
      name: r'user',
      type: IsarType.string,
    )
  },
  estimateSize: _permisosEstimateSize,
  serialize: _permisosSerialize,
  deserialize: _permisosDeserialize,
  deserializeProp: _permisosDeserializeProp,
  idName: r'idPermisoBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _permisosGetId,
  getLinks: _permisosGetLinks,
  attach: _permisosAttach,
  version: '3.1.0+1',
);

int _permisosEstimateSize(
  Permisos object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.user;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _permisosSerialize(
  Permisos object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.add);
  writer.writeString(offsets[1], object.code);
  writer.writeBool(offsets[2], object.delete);
  writer.writeBool(offsets[3], object.deny);
  writer.writeString(offsets[4], object.descripcion);
  writer.writeBool(offsets[5], object.exec);
  writer.writeBool(offsets[6], object.imp);
  writer.writeBool(offsets[7], object.read);
  writer.writeBool(offsets[8], object.update);
  writer.writeString(offsets[9], object.user);
}

Permisos _permisosDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Permisos(
    add: reader.readBoolOrNull(offsets[0]),
    code: reader.readStringOrNull(offsets[1]),
    delete: reader.readBoolOrNull(offsets[2]),
    deny: reader.readBoolOrNull(offsets[3]),
    descripcion: reader.readStringOrNull(offsets[4]),
    exec: reader.readBoolOrNull(offsets[5]),
    imp: reader.readBoolOrNull(offsets[6]),
    read: reader.readBoolOrNull(offsets[7]),
    update: reader.readBoolOrNull(offsets[8]),
    user: reader.readStringOrNull(offsets[9]),
  );
  object.idPermisoBD = id;
  return object;
}

P _permisosDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _permisosGetId(Permisos object) {
  return object.idPermisoBD;
}

List<IsarLinkBase<dynamic>> _permisosGetLinks(Permisos object) {
  return [];
}

void _permisosAttach(IsarCollection<dynamic> col, Id id, Permisos object) {
  object.idPermisoBD = id;
}

extension PermisosQueryWhereSort on QueryBuilder<Permisos, Permisos, QWhere> {
  QueryBuilder<Permisos, Permisos, QAfterWhere> anyIdPermisoBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PermisosQueryWhere on QueryBuilder<Permisos, Permisos, QWhereClause> {
  QueryBuilder<Permisos, Permisos, QAfterWhereClause> idPermisoBDEqualTo(
      Id idPermisoBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idPermisoBD,
        upper: idPermisoBD,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterWhereClause> idPermisoBDNotEqualTo(
      Id idPermisoBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idPermisoBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idPermisoBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idPermisoBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idPermisoBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterWhereClause> idPermisoBDGreaterThan(
      Id idPermisoBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idPermisoBD, includeLower: include),
      );
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterWhereClause> idPermisoBDLessThan(
      Id idPermisoBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idPermisoBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterWhereClause> idPermisoBDBetween(
    Id lowerIdPermisoBD,
    Id upperIdPermisoBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdPermisoBD,
        includeLower: includeLower,
        upper: upperIdPermisoBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PermisosQueryFilter
    on QueryBuilder<Permisos, Permisos, QFilterCondition> {
  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> addIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'add',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> addIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'add',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> addEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'add',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> deleteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'delete',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> deleteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'delete',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> deleteEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delete',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> denyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deny',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> denyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deny',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> denyEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deny',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition>
      descripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> execIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exec',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> execIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exec',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> execEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exec',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> idPermisoBDEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idPermisoBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition>
      idPermisoBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idPermisoBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> idPermisoBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idPermisoBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> idPermisoBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idPermisoBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> impIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imp',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> impIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imp',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> impEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imp',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> readIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'read',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> readIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'read',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> readEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'read',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> updateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'update',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> updateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'update',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> updateEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'update',
        value: value,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'user',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'user',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user',
        value: '',
      ));
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterFilterCondition> userIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'user',
        value: '',
      ));
    });
  }
}

extension PermisosQueryObject
    on QueryBuilder<Permisos, Permisos, QFilterCondition> {}

extension PermisosQueryLinks
    on QueryBuilder<Permisos, Permisos, QFilterCondition> {}

extension PermisosQuerySortBy on QueryBuilder<Permisos, Permisos, QSortBy> {
  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByAdd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'add', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByAddDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'add', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delete', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDeleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delete', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDeny() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deny', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDenyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deny', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByExec() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exec', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByExecDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exec', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByImp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imp', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByImpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imp', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> sortByUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.desc);
    });
  }
}

extension PermisosQuerySortThenBy
    on QueryBuilder<Permisos, Permisos, QSortThenBy> {
  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByAdd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'add', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByAddDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'add', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delete', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDeleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delete', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDeny() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deny', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDenyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deny', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByExec() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exec', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByExecDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exec', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByIdPermisoBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPermisoBD', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByIdPermisoBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idPermisoBD', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByImp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imp', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByImpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imp', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.desc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.asc);
    });
  }

  QueryBuilder<Permisos, Permisos, QAfterSortBy> thenByUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.desc);
    });
  }
}

extension PermisosQueryWhereDistinct
    on QueryBuilder<Permisos, Permisos, QDistinct> {
  QueryBuilder<Permisos, Permisos, QDistinct> distinctByAdd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'add');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByDelete() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delete');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByDeny() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deny');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByExec() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exec');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByImp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imp');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'read');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'update');
    });
  }

  QueryBuilder<Permisos, Permisos, QDistinct> distinctByUser(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user', caseSensitive: caseSensitive);
    });
  }
}

extension PermisosQueryProperty
    on QueryBuilder<Permisos, Permisos, QQueryProperty> {
  QueryBuilder<Permisos, int, QQueryOperations> idPermisoBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idPermisoBD');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> addProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'add');
    });
  }

  QueryBuilder<Permisos, String?, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> deleteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delete');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> denyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deny');
    });
  }

  QueryBuilder<Permisos, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> execProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exec');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> impProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imp');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> readProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'read');
    });
  }

  QueryBuilder<Permisos, bool?, QQueryOperations> updateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'update');
    });
  }

  QueryBuilder<Permisos, String?, QQueryOperations> userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user');
    });
  }
}
