// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clasificacion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClasificacionCollection on Isar {
  IsarCollection<Clasificacion> get clasificacions => this.collection();
}

const ClasificacionSchema = CollectionSchema(
  name: r'Clasificacion',
  id: 6701363022919377660,
  properties: {
    r'clasifId': PropertySchema(
      id: 0,
      name: r'clasifId',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 1,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'prioridad': PropertySchema(
      id: 2,
      name: r'prioridad',
      type: IsarType.long,
    ),
    r'tipo': PropertySchema(
      id: 3,
      name: r'tipo',
      type: IsarType.string,
    )
  },
  estimateSize: _clasificacionEstimateSize,
  serialize: _clasificacionSerialize,
  deserialize: _clasificacionDeserialize,
  deserializeProp: _clasificacionDeserializeProp,
  idName: r'idClasificacionBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _clasificacionGetId,
  getLinks: _clasificacionGetLinks,
  attach: _clasificacionAttach,
  version: '3.1.0+1',
);

int _clasificacionEstimateSize(
  Clasificacion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.clasifId;
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
    final value = object.tipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _clasificacionSerialize(
  Clasificacion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clasifId);
  writer.writeString(offsets[1], object.descripcion);
  writer.writeLong(offsets[2], object.prioridad);
  writer.writeString(offsets[3], object.tipo);
}

Clasificacion _clasificacionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Clasificacion();
  object.clasifId = reader.readStringOrNull(offsets[0]);
  object.descripcion = reader.readStringOrNull(offsets[1]);
  object.idClasificacionBD = id;
  object.prioridad = reader.readLongOrNull(offsets[2]);
  object.tipo = reader.readStringOrNull(offsets[3]);
  return object;
}

P _clasificacionDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clasificacionGetId(Clasificacion object) {
  return object.idClasificacionBD;
}

List<IsarLinkBase<dynamic>> _clasificacionGetLinks(Clasificacion object) {
  return [];
}

void _clasificacionAttach(
    IsarCollection<dynamic> col, Id id, Clasificacion object) {
  object.idClasificacionBD = id;
}

extension ClasificacionQueryWhereSort
    on QueryBuilder<Clasificacion, Clasificacion, QWhere> {
  QueryBuilder<Clasificacion, Clasificacion, QAfterWhere>
      anyIdClasificacionBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClasificacionQueryWhere
    on QueryBuilder<Clasificacion, Clasificacion, QWhereClause> {
  QueryBuilder<Clasificacion, Clasificacion, QAfterWhereClause>
      idClasificacionBDEqualTo(Id idClasificacionBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idClasificacionBD,
        upper: idClasificacionBD,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterWhereClause>
      idClasificacionBDNotEqualTo(Id idClasificacionBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idClasificacionBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idClasificacionBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idClasificacionBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idClasificacionBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterWhereClause>
      idClasificacionBDGreaterThan(Id idClasificacionBD,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: idClasificacionBD, includeLower: include),
      );
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterWhereClause>
      idClasificacionBDLessThan(Id idClasificacionBD, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idClasificacionBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterWhereClause>
      idClasificacionBDBetween(
    Id lowerIdClasificacionBD,
    Id upperIdClasificacionBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdClasificacionBD,
        includeLower: includeLower,
        upper: upperIdClasificacionBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ClasificacionQueryFilter
    on QueryBuilder<Clasificacion, Clasificacion, QFilterCondition> {
  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clasifId',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clasifId',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clasifId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clasifId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clasifId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasifId',
        value: '',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      clasifIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clasifId',
        value: '',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionEqualTo(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionLessThan(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionBetween(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionStartsWith(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionEndsWith(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      idClasificacionBDEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idClasificacionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      idClasificacionBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idClasificacionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      idClasificacionBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idClasificacionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      idClasificacionBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idClasificacionBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prioridad',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prioridad',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prioridad',
        value: value,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      prioridadBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prioridad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tipo',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition> tipoEqualTo(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoGreaterThan(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoLessThan(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition> tipoBetween(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoStartsWith(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoEndsWith(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition> tipoMatches(
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

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterFilterCondition>
      tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }
}

extension ClasificacionQueryObject
    on QueryBuilder<Clasificacion, Clasificacion, QFilterCondition> {}

extension ClasificacionQueryLinks
    on QueryBuilder<Clasificacion, Clasificacion, QFilterCondition> {}

extension ClasificacionQuerySortBy
    on QueryBuilder<Clasificacion, Clasificacion, QSortBy> {
  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> sortByClasifId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasifId', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      sortByClasifIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasifId', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> sortByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      sortByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }
}

extension ClasificacionQuerySortThenBy
    on QueryBuilder<Clasificacion, Clasificacion, QSortThenBy> {
  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> thenByClasifId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasifId', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      thenByClasifIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasifId', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      thenByIdClasificacionBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClasificacionBD', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      thenByIdClasificacionBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClasificacionBD', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> thenByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy>
      thenByPrioridadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioridad', Sort.desc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }
}

extension ClasificacionQueryWhereDistinct
    on QueryBuilder<Clasificacion, Clasificacion, QDistinct> {
  QueryBuilder<Clasificacion, Clasificacion, QDistinct> distinctByClasifId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clasifId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QDistinct> distinctByPrioridad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prioridad');
    });
  }

  QueryBuilder<Clasificacion, Clasificacion, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }
}

extension ClasificacionQueryProperty
    on QueryBuilder<Clasificacion, Clasificacion, QQueryProperty> {
  QueryBuilder<Clasificacion, int, QQueryOperations>
      idClasificacionBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idClasificacionBD');
    });
  }

  QueryBuilder<Clasificacion, String?, QQueryOperations> clasifIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clasifId');
    });
  }

  QueryBuilder<Clasificacion, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<Clasificacion, int?, QQueryOperations> prioridadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prioridad');
    });
  }

  QueryBuilder<Clasificacion, String?, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }
}
