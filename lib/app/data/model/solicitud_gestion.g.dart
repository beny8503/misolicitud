// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_gestion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSolicitudGestionCollection on Isar {
  IsarCollection<SolicitudGestion> get solicitudGestions => this.collection();
}

const SolicitudGestionSchema = CollectionSchema(
  name: r'SolicitudGestion',
  id: -3790320516187994596,
  properties: {
    r'clasificacionDenom': PropertySchema(
      id: 0,
      name: r'clasificacionDenom',
      type: IsarType.string,
    ),
    r'clienteCodigo': PropertySchema(
      id: 1,
      name: r'clienteCodigo',
      type: IsarType.string,
    ),
    r'clienteDenom': PropertySchema(
      id: 2,
      name: r'clienteDenom',
      type: IsarType.string,
    ),
    r'ejecutorCodigo': PropertySchema(
      id: 3,
      name: r'ejecutorCodigo',
      type: IsarType.string,
    ),
    r'ejecutorDenom': PropertySchema(
      id: 4,
      name: r'ejecutorDenom',
      type: IsarType.string,
    ),
    r'empCodigo': PropertySchema(
      id: 5,
      name: r'empCodigo',
      type: IsarType.string,
    ),
    r'empNombre': PropertySchema(
      id: 6,
      name: r'empNombre',
      type: IsarType.string,
    ),
    r'fotourl': PropertySchema(
      id: 7,
      name: r'fotourl',
      type: IsarType.string,
    ),
    r'objetos': PropertySchema(
      id: 8,
      name: r'objetos',
      type: IsarType.string,
    ),
    r'solCodigo': PropertySchema(
      id: 9,
      name: r'solCodigo',
      type: IsarType.string,
    ),
    r'solDescripcion': PropertySchema(
      id: 10,
      name: r'solDescripcion',
      type: IsarType.string,
    ),
    r'solEstado': PropertySchema(
      id: 11,
      name: r'solEstado',
      type: IsarType.string,
    ),
    r'solFecha': PropertySchema(
      id: 12,
      name: r'solFecha',
      type: IsarType.string,
    ),
    r'solID': PropertySchema(
      id: 13,
      name: r'solID',
      type: IsarType.string,
    ),
    r'solicitado': PropertySchema(
      id: 14,
      name: r'solicitado',
      type: IsarType.string,
    )
  },
  estimateSize: _solicitudGestionEstimateSize,
  serialize: _solicitudGestionSerialize,
  deserialize: _solicitudGestionDeserialize,
  deserializeProp: _solicitudGestionDeserializeProp,
  idName: r'idSolicitudGestionBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _solicitudGestionGetId,
  getLinks: _solicitudGestionGetLinks,
  attach: _solicitudGestionAttach,
  version: '3.1.0+1',
);

int _solicitudGestionEstimateSize(
  SolicitudGestion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.clasificacionDenom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.clienteCodigo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.clienteDenom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ejecutorCodigo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ejecutorDenom;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.empCodigo;
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
  {
    final value = object.fotourl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objetos;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solCodigo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solDescripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solEstado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solFecha;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.solID.length * 3;
  {
    final value = object.solicitado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _solicitudGestionSerialize(
  SolicitudGestion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clasificacionDenom);
  writer.writeString(offsets[1], object.clienteCodigo);
  writer.writeString(offsets[2], object.clienteDenom);
  writer.writeString(offsets[3], object.ejecutorCodigo);
  writer.writeString(offsets[4], object.ejecutorDenom);
  writer.writeString(offsets[5], object.empCodigo);
  writer.writeString(offsets[6], object.empNombre);
  writer.writeString(offsets[7], object.fotourl);
  writer.writeString(offsets[8], object.objetos);
  writer.writeString(offsets[9], object.solCodigo);
  writer.writeString(offsets[10], object.solDescripcion);
  writer.writeString(offsets[11], object.solEstado);
  writer.writeString(offsets[12], object.solFecha);
  writer.writeString(offsets[13], object.solID);
  writer.writeString(offsets[14], object.solicitado);
}

SolicitudGestion _solicitudGestionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SolicitudGestion();
  object.clasificacionDenom = reader.readStringOrNull(offsets[0]);
  object.clienteCodigo = reader.readStringOrNull(offsets[1]);
  object.clienteDenom = reader.readStringOrNull(offsets[2]);
  object.ejecutorCodigo = reader.readStringOrNull(offsets[3]);
  object.ejecutorDenom = reader.readStringOrNull(offsets[4]);
  object.empCodigo = reader.readStringOrNull(offsets[5]);
  object.empNombre = reader.readStringOrNull(offsets[6]);
  object.fotourl = reader.readStringOrNull(offsets[7]);
  object.idSolicitudGestionBD = id;
  object.objetos = reader.readStringOrNull(offsets[8]);
  object.solCodigo = reader.readStringOrNull(offsets[9]);
  object.solDescripcion = reader.readStringOrNull(offsets[10]);
  object.solEstado = reader.readStringOrNull(offsets[11]);
  object.solFecha = reader.readStringOrNull(offsets[12]);
  object.solID = reader.readString(offsets[13]);
  object.solicitado = reader.readStringOrNull(offsets[14]);
  return object;
}

P _solicitudGestionDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _solicitudGestionGetId(SolicitudGestion object) {
  return object.idSolicitudGestionBD;
}

List<IsarLinkBase<dynamic>> _solicitudGestionGetLinks(SolicitudGestion object) {
  return [];
}

void _solicitudGestionAttach(
    IsarCollection<dynamic> col, Id id, SolicitudGestion object) {
  object.idSolicitudGestionBD = id;
}

extension SolicitudGestionQueryWhereSort
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QWhere> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhere>
      anyIdSolicitudGestionBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SolicitudGestionQueryWhere
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QWhereClause> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhereClause>
      idSolicitudGestionBDEqualTo(Id idSolicitudGestionBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idSolicitudGestionBD,
        upper: idSolicitudGestionBD,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhereClause>
      idSolicitudGestionBDNotEqualTo(Id idSolicitudGestionBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idSolicitudGestionBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idSolicitudGestionBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idSolicitudGestionBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: idSolicitudGestionBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhereClause>
      idSolicitudGestionBDGreaterThan(Id idSolicitudGestionBD,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(
            lower: idSolicitudGestionBD, includeLower: include),
      );
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhereClause>
      idSolicitudGestionBDLessThan(Id idSolicitudGestionBD,
          {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(
            upper: idSolicitudGestionBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterWhereClause>
      idSolicitudGestionBDBetween(
    Id lowerIdSolicitudGestionBD,
    Id upperIdSolicitudGestionBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdSolicitudGestionBD,
        includeLower: includeLower,
        upper: upperIdSolicitudGestionBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SolicitudGestionQueryFilter
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QFilterCondition> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clasificacionDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clasificacionDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clasificacionDenom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clasificacionDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clasificacionDenom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasificacionDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clasificacionDenomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clasificacionDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clienteCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clienteCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clienteCodigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clienteCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clienteCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clienteCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clienteDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clienteDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clienteDenom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clienteDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clienteDenom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      clienteDenomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clienteDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ejecutorCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ejecutorCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ejecutorCodigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ejecutorCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ejecutorCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ejecutorCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ejecutorDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ejecutorDenom',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ejecutorDenom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ejecutorDenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ejecutorDenom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      ejecutorDenomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ejecutorDenom',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoEqualTo(
    String? value, {
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoGreaterThan(
    String? value, {
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoLessThan(
    String? value, {
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoStartsWith(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoEndsWith(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empNombre',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreEqualTo(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreGreaterThan(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreLessThan(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreBetween(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreStartsWith(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreEndsWith(
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

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      empNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fotourl',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fotourl',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fotourl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotourl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fotourl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotourl',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      fotourlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotourl',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      idSolicitudGestionBDEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idSolicitudGestionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      idSolicitudGestionBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idSolicitudGestionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      idSolicitudGestionBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idSolicitudGestionBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      idSolicitudGestionBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idSolicitudGestionBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objetos',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objetos',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objetos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objetos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objetos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetos',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      objetosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objetos',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solCodigo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solEstado',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solEstado',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solEstado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solEstado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solEstadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solFecha',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solFecha',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solFecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solFecha',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solFecha',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solFechaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solFecha',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solID',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solID',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solicitado',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solicitado',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solicitado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solicitado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solicitado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solicitado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterFilterCondition>
      solicitadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solicitado',
        value: '',
      ));
    });
  }
}

extension SolicitudGestionQueryObject
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QFilterCondition> {}

extension SolicitudGestionQueryLinks
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QFilterCondition> {}

extension SolicitudGestionQuerySortBy
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QSortBy> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClasificacionDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClasificacionDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClienteCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClienteCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClienteDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByClienteDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEjecutorCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEjecutorCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEjecutorDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEjecutorDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByFotourl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotourl', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByFotourlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotourl', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByObjetos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetos', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortByObjetosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetos', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy> sortBySolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolicitado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      sortBySolicitadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitado', Sort.desc);
    });
  }
}

extension SolicitudGestionQuerySortThenBy
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QSortThenBy> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClasificacionDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClasificacionDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClienteCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClienteCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClienteDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByClienteDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEjecutorCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEjecutorCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEjecutorDenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDenom', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEjecutorDenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDenom', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEmpNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByEmpNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empNombre', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByFotourl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotourl', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByFotourlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotourl', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByIdSolicitudGestionBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSolicitudGestionBD', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByIdSolicitudGestionBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSolicitudGestionBD', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByObjetos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetos', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenByObjetosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetos', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy> thenBySolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolicitado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QAfterSortBy>
      thenBySolicitadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitado', Sort.desc);
    });
  }
}

extension SolicitudGestionQueryWhereDistinct
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct> {
  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByClasificacionDenom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clasificacionDenom',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByClienteCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clienteCodigo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByClienteDenom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clienteDenom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByEjecutorCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ejecutorCodigo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByEjecutorDenom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ejecutorDenom',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByEmpCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCodigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctByEmpNombre({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct> distinctByFotourl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotourl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct> distinctByObjetos(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objetos', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctBySolCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solCodigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctBySolDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctBySolEstado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solEstado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctBySolFecha({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solFecha', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct> distinctBySolID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudGestion, SolicitudGestion, QDistinct>
      distinctBySolicitado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solicitado', caseSensitive: caseSensitive);
    });
  }
}

extension SolicitudGestionQueryProperty
    on QueryBuilder<SolicitudGestion, SolicitudGestion, QQueryProperty> {
  QueryBuilder<SolicitudGestion, int, QQueryOperations>
      idSolicitudGestionBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idSolicitudGestionBD');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      clasificacionDenomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clasificacionDenom');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      clienteCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clienteCodigo');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      clienteDenomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clienteDenom');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      ejecutorCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ejecutorCodigo');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      ejecutorDenomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ejecutorDenom');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      empCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCodigo');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      empNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empNombre');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations> fotourlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotourl');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations> objetosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objetos');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      solCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solCodigo');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      solDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solDescripcion');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      solEstadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solEstado');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations> solFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solFecha');
    });
  }

  QueryBuilder<SolicitudGestion, String, QQueryOperations> solIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solID');
    });
  }

  QueryBuilder<SolicitudGestion, String?, QQueryOperations>
      solicitadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solicitado');
    });
  }
}
