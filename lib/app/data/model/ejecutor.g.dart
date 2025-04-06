// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ejecutor.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEjecutorCollection on Isar {
  IsarCollection<Ejecutor> get ejecutors => this.collection();
}

const EjecutorSchema = CollectionSchema(
  name: r'Ejecutor',
  id: -9207451408799684867,
  properties: {
    r'clase': PropertySchema(
      id: 0,
      name: r'clase',
      type: IsarType.string,
    ),
    r'clientID': PropertySchema(
      id: 1,
      name: r'clientID',
      type: IsarType.string,
    ),
    r'codigo': PropertySchema(
      id: 2,
      name: r'codigo',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 3,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'ejecId': PropertySchema(
      id: 4,
      name: r'ejecId',
      type: IsarType.string,
    ),
    r'solGestID': PropertySchema(
      id: 5,
      name: r'solGestID',
      type: IsarType.long,
    ),
    r'tipo': PropertySchema(
      id: 6,
      name: r'tipo',
      type: IsarType.string,
    )
  },
  estimateSize: _ejecutorEstimateSize,
  serialize: _ejecutorSerialize,
  deserialize: _ejecutorDeserialize,
  deserializeProp: _ejecutorDeserializeProp,
  idName: r'idEjecutorBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _ejecutorGetId,
  getLinks: _ejecutorGetLinks,
  attach: _ejecutorAttach,
  version: '3.1.0+1',
);

int _ejecutorEstimateSize(
  Ejecutor object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.clase;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.clientID;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.codigo;
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
    final value = object.ejecId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _ejecutorSerialize(
  Ejecutor object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clase);
  writer.writeString(offsets[1], object.clientID);
  writer.writeString(offsets[2], object.codigo);
  writer.writeString(offsets[3], object.descripcion);
  writer.writeString(offsets[4], object.ejecId);
  writer.writeLong(offsets[5], object.solGestID);
  writer.writeString(offsets[6], object.tipo);
}

Ejecutor _ejecutorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Ejecutor(
    clase: reader.readStringOrNull(offsets[0]),
    clientID: reader.readStringOrNull(offsets[1]),
    codigo: reader.readStringOrNull(offsets[2]),
    descripcion: reader.readStringOrNull(offsets[3]),
    ejecId: reader.readStringOrNull(offsets[4]),
    solGestID: reader.readLongOrNull(offsets[5]),
    tipo: reader.readStringOrNull(offsets[6]),
  );
  object.idEjecutorBD = id;
  return object;
}

P _ejecutorDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ejecutorGetId(Ejecutor object) {
  return object.idEjecutorBD;
}

List<IsarLinkBase<dynamic>> _ejecutorGetLinks(Ejecutor object) {
  return [];
}

void _ejecutorAttach(IsarCollection<dynamic> col, Id id, Ejecutor object) {
  object.idEjecutorBD = id;
}

extension EjecutorQueryWhereSort on QueryBuilder<Ejecutor, Ejecutor, QWhere> {
  QueryBuilder<Ejecutor, Ejecutor, QAfterWhere> anyIdEjecutorBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EjecutorQueryWhere on QueryBuilder<Ejecutor, Ejecutor, QWhereClause> {
  QueryBuilder<Ejecutor, Ejecutor, QAfterWhereClause> idEjecutorBDEqualTo(
      Id idEjecutorBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idEjecutorBD,
        upper: idEjecutorBD,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterWhereClause> idEjecutorBDNotEqualTo(
      Id idEjecutorBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEjecutorBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEjecutorBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idEjecutorBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idEjecutorBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterWhereClause> idEjecutorBDGreaterThan(
      Id idEjecutorBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idEjecutorBD, includeLower: include),
      );
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterWhereClause> idEjecutorBDLessThan(
      Id idEjecutorBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idEjecutorBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterWhereClause> idEjecutorBDBetween(
    Id lowerIdEjecutorBD,
    Id upperIdEjecutorBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdEjecutorBD,
        includeLower: includeLower,
        upper: upperIdEjecutorBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EjecutorQueryFilter
    on QueryBuilder<Ejecutor, Ejecutor, QFilterCondition> {
  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clase',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clase',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clase',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clase',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clase',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> claseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clase',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientID',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientID',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clientID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clientID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientID',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> clientIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientID',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'codigo',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'codigo',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'codigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'codigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> codigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionEqualTo(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition>
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionLessThan(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionBetween(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionStartsWith(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionEndsWith(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionContains(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionMatches(
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

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ejecId',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ejecId',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ejecId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ejecId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ejecId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecId',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> ejecIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ejecId',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> idEjecutorBDEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idEjecutorBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition>
      idEjecutorBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idEjecutorBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> idEjecutorBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idEjecutorBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> idEjecutorBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idEjecutorBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solGestID',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solGestID',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solGestID',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solGestID',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solGestID',
        value: value,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> solGestIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solGestID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterFilterCondition> tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }
}

extension EjecutorQueryObject
    on QueryBuilder<Ejecutor, Ejecutor, QFilterCondition> {}

extension EjecutorQueryLinks
    on QueryBuilder<Ejecutor, Ejecutor, QFilterCondition> {}

extension EjecutorQuerySortBy on QueryBuilder<Ejecutor, Ejecutor, QSortBy> {
  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByClase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clase', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByClaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clase', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByEjecId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecId', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByEjecIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecId', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortBySolGestID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortBySolGestIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }
}

extension EjecutorQuerySortThenBy
    on QueryBuilder<Ejecutor, Ejecutor, QSortThenBy> {
  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByClase() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clase', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByClaseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clase', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByEjecId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecId', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByEjecIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecId', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByIdEjecutorBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEjecutorBD', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByIdEjecutorBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idEjecutorBD', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenBySolGestID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenBySolGestIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.desc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }
}

extension EjecutorQueryWhereDistinct
    on QueryBuilder<Ejecutor, Ejecutor, QDistinct> {
  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByClase(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clase', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByClientID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByCodigo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByEjecId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ejecId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctBySolGestID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solGestID');
    });
  }

  QueryBuilder<Ejecutor, Ejecutor, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }
}

extension EjecutorQueryProperty
    on QueryBuilder<Ejecutor, Ejecutor, QQueryProperty> {
  QueryBuilder<Ejecutor, int, QQueryOperations> idEjecutorBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idEjecutorBD');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> claseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clase');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> clientIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientID');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> codigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codigo');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> ejecIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ejecId');
    });
  }

  QueryBuilder<Ejecutor, int?, QQueryOperations> solGestIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solGestID');
    });
  }

  QueryBuilder<Ejecutor, String?, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }
}
