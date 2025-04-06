// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_api.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUrlApiCollection on Isar {
  IsarCollection<UrlApi> get urlApis => this.collection();
}

const UrlApiSchema = CollectionSchema(
  name: r'UrlApi',
  id: 4640980742792040971,
  properties: {
    r'urlApi': PropertySchema(
      id: 0,
      name: r'urlApi',
      type: IsarType.string,
    )
  },
  estimateSize: _urlApiEstimateSize,
  serialize: _urlApiSerialize,
  deserialize: _urlApiDeserialize,
  deserializeProp: _urlApiDeserializeProp,
  idName: r'idUrl',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _urlApiGetId,
  getLinks: _urlApiGetLinks,
  attach: _urlApiAttach,
  version: '3.1.0+1',
);

int _urlApiEstimateSize(
  UrlApi object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.urlApi.length * 3;
  return bytesCount;
}

void _urlApiSerialize(
  UrlApi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.urlApi);
}

UrlApi _urlApiDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UrlApi(
    urlApi: reader.readString(offsets[0]),
  );
  object.idUrl = id;
  return object;
}

P _urlApiDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _urlApiGetId(UrlApi object) {
  return object.idUrl;
}

List<IsarLinkBase<dynamic>> _urlApiGetLinks(UrlApi object) {
  return [];
}

void _urlApiAttach(IsarCollection<dynamic> col, Id id, UrlApi object) {
  object.idUrl = id;
}

extension UrlApiQueryWhereSort on QueryBuilder<UrlApi, UrlApi, QWhere> {
  QueryBuilder<UrlApi, UrlApi, QAfterWhere> anyIdUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UrlApiQueryWhere on QueryBuilder<UrlApi, UrlApi, QWhereClause> {
  QueryBuilder<UrlApi, UrlApi, QAfterWhereClause> idUrlEqualTo(Id idUrl) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idUrl,
        upper: idUrl,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterWhereClause> idUrlNotEqualTo(Id idUrl) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idUrl, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idUrl, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idUrl, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idUrl, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterWhereClause> idUrlGreaterThan(Id idUrl,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idUrl, includeLower: include),
      );
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterWhereClause> idUrlLessThan(Id idUrl,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idUrl, includeUpper: include),
      );
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterWhereClause> idUrlBetween(
    Id lowerIdUrl,
    Id upperIdUrl, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdUrl,
        includeLower: includeLower,
        upper: upperIdUrl,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UrlApiQueryFilter on QueryBuilder<UrlApi, UrlApi, QFilterCondition> {
  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> idUrlEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idUrl',
        value: value,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> idUrlGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idUrl',
        value: value,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> idUrlLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idUrl',
        value: value,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> idUrlBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urlApi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urlApi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urlApi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urlApi',
        value: '',
      ));
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterFilterCondition> urlApiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urlApi',
        value: '',
      ));
    });
  }
}

extension UrlApiQueryObject on QueryBuilder<UrlApi, UrlApi, QFilterCondition> {}

extension UrlApiQueryLinks on QueryBuilder<UrlApi, UrlApi, QFilterCondition> {}

extension UrlApiQuerySortBy on QueryBuilder<UrlApi, UrlApi, QSortBy> {
  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> sortByUrlApi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlApi', Sort.asc);
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> sortByUrlApiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlApi', Sort.desc);
    });
  }
}

extension UrlApiQuerySortThenBy on QueryBuilder<UrlApi, UrlApi, QSortThenBy> {
  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> thenByIdUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idUrl', Sort.asc);
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> thenByIdUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idUrl', Sort.desc);
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> thenByUrlApi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlApi', Sort.asc);
    });
  }

  QueryBuilder<UrlApi, UrlApi, QAfterSortBy> thenByUrlApiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urlApi', Sort.desc);
    });
  }
}

extension UrlApiQueryWhereDistinct on QueryBuilder<UrlApi, UrlApi, QDistinct> {
  QueryBuilder<UrlApi, UrlApi, QDistinct> distinctByUrlApi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urlApi', caseSensitive: caseSensitive);
    });
  }
}

extension UrlApiQueryProperty on QueryBuilder<UrlApi, UrlApi, QQueryProperty> {
  QueryBuilder<UrlApi, int, QQueryOperations> idUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idUrl');
    });
  }

  QueryBuilder<UrlApi, String, QQueryOperations> urlApiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urlApi');
    });
  }
}
