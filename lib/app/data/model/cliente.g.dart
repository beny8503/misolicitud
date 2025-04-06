// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClienteCollection on Isar {
  IsarCollection<Cliente> get clientes => this.collection();
}

const ClienteSchema = CollectionSchema(
  name: r'Cliente',
  id: 8668185751114761648,
  properties: {
    r'clientId': PropertySchema(
      id: 0,
      name: r'clientId',
      type: IsarType.string,
    ),
    r'codigo': PropertySchema(
      id: 1,
      name: r'codigo',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 2,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'empCod': PropertySchema(
      id: 3,
      name: r'empCod',
      type: IsarType.string,
    ),
    r'empNombre': PropertySchema(
      id: 4,
      name: r'empNombre',
      type: IsarType.string,
    )
  },
  estimateSize: _clienteEstimateSize,
  serialize: _clienteSerialize,
  deserialize: _clienteDeserialize,
  deserializeProp: _clienteDeserializeProp,
  idName: r'idClienteDB',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _clienteGetId,
  getLinks: _clienteGetLinks,
  attach: _clienteAttach,
  version: '3.1.0+1',
);

int _clienteEstimateSize(
  Cliente object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.clientId;
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
    final value = object.empCod;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.empNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _clienteSerialize(
  Cliente object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clientId);
  writer.writeString(offsets[1], object.codigo);
  writer.writeString(offsets[2], object.descripcion);
  writer.writeString(offsets[3], object.empCod);
  writer.writeString(offsets[4], object.empNombre);
}

Cliente _clienteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cliente();
  object.clientId = reader.readStringOrNull(offsets[0]);
  object.codigo = reader.readStringOrNull(offsets[1]);
  object.descripcion = reader.readStringOrNull(offsets[2]);
  object.empCod = reader.readStringOrNull(offsets[3]);
  object.empNombre = reader.readStringOrNull(offsets[4]);
  object.idClienteDB = id;
  return object;
}

P _clienteDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clienteGetId(Cliente object) {
  return object.idClienteDB;
}

List<IsarLinkBase<dynamic>> _clienteGetLinks(Cliente object) {
  return [];
}

void _clienteAttach(IsarCollection<dynamic> col, Id id, Cliente object) {
  object.idClienteDB = id;
}

extension ClienteQueryWhereSort on QueryBuilder<Cliente, Cliente, QWhere> {
  QueryBuilder<Cliente, Cliente, QAfterWhere> anyIdClienteDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClienteQueryWhere on QueryBuilder<Cliente, Cliente, QWhereClause> {
  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idClienteDBEqualTo(
      Id idClienteDB) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idClienteDB,
        upper: idClienteDB,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idClienteDBNotEqualTo(
      Id idClienteDB) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idClienteDB, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idClienteDB, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idClienteDB, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idClienteDB, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idClienteDBGreaterThan(
      Id idClienteDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idClienteDB, includeLower: include),
      );
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idClienteDBLessThan(
      Id idClienteDB,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idClienteDB, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterWhereClause> idClienteDBBetween(
    Id lowerIdClienteDB,
    Id upperIdClienteDB, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdClienteDB,
        includeLower: includeLower,
        upper: upperIdClienteDB,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ClienteQueryFilter
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {
  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientId',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clientId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clientId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> clientIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'codigo',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'codigo',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoEqualTo(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoGreaterThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoLessThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoBetween(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoStartsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoEndsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoContains(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoMatches(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> codigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'codigo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionEqualTo(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionGreaterThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionLessThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionBetween(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionStartsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionEndsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionContains(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionMatches(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empCod',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empCod',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodEqualTo(
    String? value, {
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodGreaterThan(
    String? value, {
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodLessThan(
    String? value, {
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodStartsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodEndsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodContains(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodMatches(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCod',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empCodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empCod',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreEqualTo(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreGreaterThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreLessThan(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreBetween(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreStartsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreEndsWith(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreContains(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreMatches(
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

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> empNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idClienteDBEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idClienteDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idClienteDBGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idClienteDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idClienteDBLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idClienteDB',
        value: value,
      ));
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterFilterCondition> idClienteDBBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idClienteDB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ClienteQueryObject
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {}

extension ClienteQueryLinks
    on QueryBuilder<Cliente, Cliente, QFilterCondition> {}

extension ClienteQuerySortBy on QueryBuilder<Cliente, Cliente, QSortBy> {
  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByEmpCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByEmpCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> sortByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }
}

extension ClienteQuerySortThenBy
    on QueryBuilder<Cliente, Cliente, QSortThenBy> {
  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByClientId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByClientIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientId', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codigo', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByEmpCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByEmpCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCod', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByIdClienteDB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClienteDB', Sort.asc);
    });
  }

  QueryBuilder<Cliente, Cliente, QAfterSortBy> thenByIdClienteDBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClienteDB', Sort.desc);
    });
  }
}

extension ClienteQueryWhereDistinct
    on QueryBuilder<Cliente, Cliente, QDistinct> {
  QueryBuilder<Cliente, Cliente, QDistinct> distinctByClientId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByCodigo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByEmpCod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCod', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cliente, Cliente, QDistinct> distinctByEmpNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empNombre', caseSensitive: caseSensitive);
    });
  }
}

extension ClienteQueryProperty
    on QueryBuilder<Cliente, Cliente, QQueryProperty> {
  QueryBuilder<Cliente, int, QQueryOperations> idClienteDBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idClienteDB');
    });
  }

  QueryBuilder<Cliente, String?, QQueryOperations> clientIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientId');
    });
  }

  QueryBuilder<Cliente, String?, QQueryOperations> codigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codigo');
    });
  }

  QueryBuilder<Cliente, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<Cliente, String?, QQueryOperations> empCodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCod');
    });
  }

  QueryBuilder<Cliente, String?, QQueryOperations> empNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empNombre');
    });
  }
}
