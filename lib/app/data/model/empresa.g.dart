// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEmpresaCollection on Isar {
  IsarCollection<Empresa> get empresas => this.collection();
}

const EmpresaSchema = CollectionSchema(
  name: r'Empresa',
  id: 6619396595510192979,
  properties: {
    r'empClasif': PropertySchema(
      id: 0,
      name: r'empClasif',
      type: IsarType.string,
    ),
    r'empCod': PropertySchema(
      id: 1,
      name: r'empCod',
      type: IsarType.string,
    ),
    r'empID': PropertySchema(
      id: 2,
      name: r'empID',
      type: IsarType.string,
    ),
    r'empNombre': PropertySchema(
      id: 3,
      name: r'empNombre',
      type: IsarType.string,
    ),
    r'empTipo': PropertySchema(
      id: 4,
      name: r'empTipo',
      type: IsarType.string,
    ),
    r'useClass': PropertySchema(
      id: 5,
      name: r'useClass',
      type: IsarType.bool,
    ),
    r'useEjecutor': PropertySchema(
      id: 6,
      name: r'useEjecutor',
      type: IsarType.bool,
    ),
    r'useObject': PropertySchema(
      id: 7,
      name: r'useObject',
      type: IsarType.bool,
    )
  },
  estimateSize: _empresaEstimateSize,
  serialize: _empresaSerialize,
  deserialize: _empresaDeserialize,
  deserializeProp: _empresaDeserializeProp,
  idName: r'idEmpresaDB',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _empresaGetId,
  getLinks: _empresaGetLinks,
  attach: _empresaAttach,
  version: '3.1.0+1',
);

int _empresaEstimateSize(
  Empresa object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.empClasif;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.empCod.length * 3;
  bytesCount += 3 + object.empID.length * 3;
  {
    final value = object.empNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.empTipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _empresaSerialize(
  Empresa object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.empClasif);
  writer.writeString(offsets[1], object.empCod);
  writer.writeString(offsets[2], object.empID);
  writer.writeString(offsets[3], object.empNombre);
  writer.writeString(offsets[4], object.empTipo);
  writer.writeBool(offsets[5], object.useClass);
  writer.writeBool(offsets[6], object.useEjecutor);
  writer.writeBool(offsets[7], object.useObject);
}

Empresa _empresaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Empresa();
  object.empClasif = reader.readStringOrNull(offsets[0]);
  object.empCod = reader.readString(offsets[1]);
  object.empID = reader.readString(offsets[2]);
  object.empNombre = reader.readStringOrNull(offsets[3]);
  object.empTipo = reader.readStringOrNull(offsets[4]);
  object.idEmpresaDB = id;
  object.useClass = reader.readBoolOrNull(offsets[5]);
  object.useEjecutor = reader.readBoolOrNull(offsets[6]);
  object.useObject = reader.readBoolOrNull(offsets[7]);
  return object;
}

P _empresaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _empresaGetId(Empresa object) {
  return object.idEmpresaDB;
}

List<IsarLinkBase<dynamic>> _empresaGetLinks(Empresa object) {
  return [];
}

void _empresaAttach(IsarCollection<dynamic> col, Id id, Empresa object) {
  object.idEmpresaDB = id;
}

extension EmpresaQueryWhereSort on QueryBuilder<Empresa, Empresa, QWhere> {
  QueryBuilder<Empresa, Empresa, QAfterWhere> anyIdEmpresaDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EmpresaQueryWhere on QueryBuilder<Empresa, Empresa, QWhereClause> {
  QueryBuilder<Empresa, Empresa, QAfterWhereClause> idEmpresaDBEqualTo(
      Id idEmpresaDB) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idEmpresaDB,
        upper: idEmpresaDB,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterWhereClause> idEmpresaDBNotEqualTo(
      Id idEmpresaDB) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEmpresaDB, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEmpresaDB, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEmpresaDB, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEmpresaDB, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterWhereClause> idEmpresaDBGreaterThan(
      Id idEmpresaDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idEmpresaDB, includeLower: include),
      );
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterWhereClause> idEmpresaDBLessThan(
      Id idEmpresaDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idEmpresaDB, includeUpper: include),
      );
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterWhereClause> idEmpresaDBBetween(
    Id lowerIdEmpresaDB,
    Id upperIdEmpresaDB, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdEmpresaDB,
        includeLower: includeLower,
        upper: upperIdEmpresaDB,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EmpresaQueryFilter
    on QueryBuilder<Empresa, Empresa, QFilterCondition> {
  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empClasif',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empClasif',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empClasif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empClasif',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empClasif',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empClasifIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empClasif',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empCod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empCod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCod',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empCodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empCod',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empID',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empID',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empTipo',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empTipo',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empTipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empTipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> empTipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> idEmpresaDBEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idEmpresaDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> idEmpresaDBGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idEmpresaDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> idEmpresaDBLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idEmpresaDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> idEmpresaDBBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idEmpresaDB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useClassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'useClass',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useClassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'useClass',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useClassEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'useClass',
        value: value,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useEjecutorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'useEjecutor',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useEjecutorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'useEjecutor',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useEjecutorEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'useEjecutor',
        value: value,
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useObjectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'useObject',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useObjectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'useObject',
      ));
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterFilterCondition> useObjectEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'useObject',
        value: value,
      ));
    });
  }
}

extension EmpresaQueryObject
    on QueryBuilder<Empresa, Empresa, QFilterCondition> {}

extension EmpresaQueryLinks
    on QueryBuilder<Empresa, Empresa, QFilterCondition> {}

extension EmpresaQuerySortBy on QueryBuilder<Empresa, Empresa, QSortBy> {
  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpClasif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empClasif', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpClasifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empClasif', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empID', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empID', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empTipo', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByEmpTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empTipo', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useClass', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useClass', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseEjecutor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useEjecutor', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseEjecutorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useEjecutor', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseObject() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useObject', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> sortByUseObjectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useObject', Sort.desc);
    });
  }
}

extension EmpresaQuerySortThenBy
    on QueryBuilder<Empresa, Empresa, QSortThenBy> {
  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpClasif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empClasif', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpClasifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empClasif', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empID', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empID', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empTipo', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByEmpTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empTipo', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByIdEmpresaDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEmpresaDB', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByIdEmpresaDBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEmpresaDB', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useClass', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useClass', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseEjecutor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useEjecutor', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseEjecutorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useEjecutor', Sort.desc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseObject() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useObject', Sort.asc);
    });
  }

  QueryBuilder<Empresa, Empresa, QAfterSortBy> thenByUseObjectDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'useObject', Sort.desc);
    });
  }
}

extension EmpresaQueryWhereDistinct
    on QueryBuilder<Empresa, Empresa, QDistinct> {
  QueryBuilder<Empresa, Empresa, QDistinct> distinctByEmpClasif(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empClasif', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByEmpCod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCod', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByEmpID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByEmpNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByEmpTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empTipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByUseClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'useClass');
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByUseEjecutor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'useEjecutor');
    });
  }

  QueryBuilder<Empresa, Empresa, QDistinct> distinctByUseObject() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'useObject');
    });
  }
}

extension EmpresaQueryProperty
    on QueryBuilder<Empresa, Empresa, QQueryProperty> {
  QueryBuilder<Empresa, int, QQueryOperations> idEmpresaDBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idEmpresaDB');
    });
  }

  QueryBuilder<Empresa, String?, QQueryOperations> empClasifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empClasif');
    });
  }

  QueryBuilder<Empresa, String, QQueryOperations> empCodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCod');
    });
  }

  QueryBuilder<Empresa, String, QQueryOperations> empIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empID');
    });
  }

  QueryBuilder<Empresa, String?, QQueryOperations> empNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empNombre');
    });
  }

  QueryBuilder<Empresa, String?, QQueryOperations> empTipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empTipo');
    });
  }

  QueryBuilder<Empresa, bool?, QQueryOperations> useClassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'useClass');
    });
  }

  QueryBuilder<Empresa, bool?, QQueryOperations> useEjecutorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'useEjecutor');
    });
  }

  QueryBuilder<Empresa, bool?, QQueryOperations> useObjectProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'useObject');
    });
  }
}
