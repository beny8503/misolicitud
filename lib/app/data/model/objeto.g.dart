// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objeto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetObjetoCollection on Isar {
  IsarCollection<Objeto> get objetos => this.collection();
}

const ObjetoSchema = CollectionSchema(
  name: r'Objeto',
  id: 3813606977973384518,
  properties: {
    r'clientID': PropertySchema(
      id: 0,
      name: r'clientID',
      type: IsarType.string,
    ),
    r'codigo': PropertySchema(
      id: 1,
      name: r'codigo',
      type: IsarType.string,
    ),
    r'denom': PropertySchema(
      id: 2,
      name: r'denom',
      type: IsarType.string,
    ),
    r'empCodigo': PropertySchema(
      id: 3,
      name: r'empCodigo',
      type: IsarType.string,
    ),
    r'objID': PropertySchema(
      id: 4,
      name: r'objID',
      type: IsarType.string,
    ),
    r'solGestID': PropertySchema(
      id: 5,
      name: r'solGestID',
      type: IsarType.string,
    )
  },
  estimateSize: _objetoEstimateSize,
  serialize: _objetoSerialize,
  deserialize: _objetoDeserialize,
  deserializeProp: _objetoDeserializeProp,
  idName: r'idObjetoDB',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _objetoGetId,
  getLinks: _objetoGetLinks,
  attach: _objetoAttach,
  version: '3.1.0+1',
);

int _objetoEstimateSize(
  Objeto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.clientID.length * 3;
  bytesCount += 3 + object.codigo.length * 3;
  bytesCount += 3 + object.denom.length * 3;
  bytesCount += 3 + object.empCodigo.length * 3;
  bytesCount += 3 + object.objID.length * 3;
  bytesCount += 3 + object.solGestID.length * 3;
  return bytesCount;
}

void _objetoSerialize(
  Objeto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clientID);
  writer.writeString(offsets[1], object.codigo);
  writer.writeString(offsets[2], object.denom);
  writer.writeString(offsets[3], object.empCodigo);
  writer.writeString(offsets[4], object.objID);
  writer.writeString(offsets[5], object.solGestID);
}

Objeto _objetoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Objeto();
  object.clientID = reader.readString(offsets[0]);
  object.codigo = reader.readString(offsets[1]);
  object.denom = reader.readString(offsets[2]);
  object.empCodigo = reader.readString(offsets[3]);
  object.idObjetoDB = id;
  object.objID = reader.readString(offsets[4]);
  object.solGestID = reader.readString(offsets[5]);
  return object;
}

P _objetoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _objetoGetId(Objeto object) {
  return object.idObjetoDB;
}

List<IsarLinkBase<dynamic>> _objetoGetLinks(Objeto object) {
  return [];
}

void _objetoAttach(IsarCollection<dynamic> col, Id id, Objeto object) {
  object.idObjetoDB = id;
}

extension ObjetoQueryWhereSort on QueryBuilder<Objeto, Objeto, QWhere> {
  QueryBuilder<Objeto, Objeto, QAfterWhere> anyIdObjetoDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ObjetoQueryWhere on QueryBuilder<Objeto, Objeto, QWhereClause> {
  QueryBuilder<Objeto, Objeto, QAfterWhereClause> idObjetoDBEqualTo(
      Id idObjetoDB) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idObjetoDB,
        upper: idObjetoDB,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterWhereClause> idObjetoDBNotEqualTo(
      Id idObjetoDB) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idObjetoDB, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idObjetoDB, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idObjetoDB, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idObjetoDB, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterWhereClause> idObjetoDBGreaterThan(
      Id idObjetoDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idObjetoDB, includeLower: include),
      );
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterWhereClause> idObjetoDBLessThan(
      Id idObjetoDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idObjetoDB, includeUpper: include),
      );
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterWhereClause> idObjetoDBBetween(
    Id lowerIdObjetoDB,
    Id upperIdObjetoDB, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdObjetoDB,
        includeLower: includeLower,
        upper: upperIdObjetoDB,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ObjetoQueryFilter on QueryBuilder<Objeto, Objeto, QFilterCondition> {
  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDEqualTo(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDGreaterThan(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDLessThan(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDStartsWith(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDEndsWith(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDContains(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDMatches(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientID',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> clientIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientID',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoEqualTo(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoGreaterThan(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoLessThan(
    String value, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoStartsWith(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoEndsWith(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoContains(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoMatches(
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

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> codigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'denom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'denom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'denom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'denom',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> denomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'denom',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empCodigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> empCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> idObjetoDBEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idObjetoDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> idObjetoDBGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idObjetoDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> idObjetoDBLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idObjetoDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> idObjetoDBBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idObjetoDB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objID',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> objIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objID',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solGestID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solGestID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solGestID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solGestID',
        value: '',
      ));
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterFilterCondition> solGestIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solGestID',
        value: '',
      ));
    });
  }
}

extension ObjetoQueryObject on QueryBuilder<Objeto, Objeto, QFilterCondition> {}

extension ObjetoQueryLinks on QueryBuilder<Objeto, Objeto, QFilterCondition> {}

extension ObjetoQuerySortBy on QueryBuilder<Objeto, Objeto, QSortBy> {
  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'denom', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'denom', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByObjID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortByObjIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objID', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortBySolGestID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> sortBySolGestIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.desc);
    });
  }
}

extension ObjetoQuerySortThenBy on QueryBuilder<Objeto, Objeto, QSortThenBy> {
  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'denom', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'denom', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByIdObjetoDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idObjetoDB', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByIdObjetoDBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idObjetoDB', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByObjID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenByObjIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objID', Sort.desc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenBySolGestID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.asc);
    });
  }

  QueryBuilder<Objeto, Objeto, QAfterSortBy> thenBySolGestIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solGestID', Sort.desc);
    });
  }
}

extension ObjetoQueryWhereDistinct on QueryBuilder<Objeto, Objeto, QDistinct> {
  QueryBuilder<Objeto, Objeto, QDistinct> distinctByClientID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Objeto, Objeto, QDistinct> distinctByCodigo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Objeto, Objeto, QDistinct> distinctByDenom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'denom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Objeto, Objeto, QDistinct> distinctByEmpCodigo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCodigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Objeto, Objeto, QDistinct> distinctByObjID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Objeto, Objeto, QDistinct> distinctBySolGestID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solGestID', caseSensitive: caseSensitive);
    });
  }
}

extension ObjetoQueryProperty on QueryBuilder<Objeto, Objeto, QQueryProperty> {
  QueryBuilder<Objeto, int, QQueryOperations> idObjetoDBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idObjetoDB');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> clientIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientID');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> codigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codigo');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> denomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'denom');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> empCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCodigo');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> objIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objID');
    });
  }

  QueryBuilder<Objeto, String, QQueryOperations> solGestIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solGestID');
    });
  }
}
