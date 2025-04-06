// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtros.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFiltrosCollection on Isar {
  IsarCollection<Filtros> get filtros => this.collection();
}

const FiltrosSchema = CollectionSchema(
  name: r'Filtros',
  id: 3093727432132285348,
  properties: {
    r'fecha': PropertySchema(
      id: 0,
      name: r'fecha',
      type: IsarType.string,
    ),
    r'filtro': PropertySchema(
      id: 1,
      name: r'filtro',
      type: IsarType.string,
    )
  },
  estimateSize: _filtrosEstimateSize,
  serialize: _filtrosSerialize,
  deserialize: _filtrosDeserialize,
  deserializeProp: _filtrosDeserializeProp,
  idName: r'idFiltroBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _filtrosGetId,
  getLinks: _filtrosGetLinks,
  attach: _filtrosAttach,
  version: '3.1.0+1',
);

int _filtrosEstimateSize(
  Filtros object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.fecha;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.filtro;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _filtrosSerialize(
  Filtros object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fecha);
  writer.writeString(offsets[1], object.filtro);
}

Filtros _filtrosDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Filtros(
    fecha: reader.readStringOrNull(offsets[0]),
    filtro: reader.readStringOrNull(offsets[1]),
  );
  object.idFiltroBD = id;
  return object;
}

P _filtrosDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _filtrosGetId(Filtros object) {
  return object.idFiltroBD;
}

List<IsarLinkBase<dynamic>> _filtrosGetLinks(Filtros object) {
  return [];
}

void _filtrosAttach(IsarCollection<dynamic> col, Id id, Filtros object) {
  object.idFiltroBD = id;
}

extension FiltrosQueryWhereSort on QueryBuilder<Filtros, Filtros, QWhere> {
  QueryBuilder<Filtros, Filtros, QAfterWhere> anyIdFiltroBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FiltrosQueryWhere on QueryBuilder<Filtros, Filtros, QWhereClause> {
  QueryBuilder<Filtros, Filtros, QAfterWhereClause> idFiltroBDEqualTo(
      Id idFiltroBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idFiltroBD,
        upper: idFiltroBD,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterWhereClause> idFiltroBDNotEqualTo(
      Id idFiltroBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idFiltroBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idFiltroBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idFiltroBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idFiltroBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterWhereClause> idFiltroBDGreaterThan(
      Id idFiltroBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idFiltroBD, includeLower: include),
      );
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterWhereClause> idFiltroBDLessThan(
      Id idFiltroBD,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idFiltroBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterWhereClause> idFiltroBDBetween(
    Id lowerIdFiltroBD,
    Id upperIdFiltroBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdFiltroBD,
        includeLower: includeLower,
        upper: upperIdFiltroBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FiltrosQueryFilter
    on QueryBuilder<Filtros, Filtros, QFilterCondition> {
  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fecha',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fecha',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: '',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> fechaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fecha',
        value: '',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'filtro',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'filtro',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filtro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filtro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filtro',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filtro',
        value: '',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> filtroIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filtro',
        value: '',
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> idFiltroBDEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idFiltroBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> idFiltroBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idFiltroBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> idFiltroBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idFiltroBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterFilterCondition> idFiltroBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idFiltroBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FiltrosQueryObject
    on QueryBuilder<Filtros, Filtros, QFilterCondition> {}

extension FiltrosQueryLinks
    on QueryBuilder<Filtros, Filtros, QFilterCondition> {}

extension FiltrosQuerySortBy on QueryBuilder<Filtros, Filtros, QSortBy> {
  QueryBuilder<Filtros, Filtros, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> sortByFiltro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filtro', Sort.asc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> sortByFiltroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filtro', Sort.desc);
    });
  }
}

extension FiltrosQuerySortThenBy
    on QueryBuilder<Filtros, Filtros, QSortThenBy> {
  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByFiltro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filtro', Sort.asc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByFiltroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filtro', Sort.desc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByIdFiltroBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFiltroBD', Sort.asc);
    });
  }

  QueryBuilder<Filtros, Filtros, QAfterSortBy> thenByIdFiltroBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idFiltroBD', Sort.desc);
    });
  }
}

extension FiltrosQueryWhereDistinct
    on QueryBuilder<Filtros, Filtros, QDistinct> {
  QueryBuilder<Filtros, Filtros, QDistinct> distinctByFecha(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Filtros, Filtros, QDistinct> distinctByFiltro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filtro', caseSensitive: caseSensitive);
    });
  }
}

extension FiltrosQueryProperty
    on QueryBuilder<Filtros, Filtros, QQueryProperty> {
  QueryBuilder<Filtros, int, QQueryOperations> idFiltroBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idFiltroBD');
    });
  }

  QueryBuilder<Filtros, String?, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<Filtros, String?, QQueryOperations> filtroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filtro');
    });
  }
}
