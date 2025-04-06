// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud_bandeja_salida.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSolicitudBandejaSalidaCollection on Isar {
  IsarCollection<SolicitudBandejaSalida> get solicitudBandejaSalidas =>
      this.collection();
}

const SolicitudBandejaSalidaSchema = CollectionSchema(
  name: r'SolicitudBandejaSalida',
  id: 7812260969224313345,
  properties: {
    r'clasificacionDescripcion': PropertySchema(
      id: 0,
      name: r'clasificacionDescripcion',
      type: IsarType.string,
    ),
    r'clasosID': PropertySchema(
      id: 1,
      name: r'clasosID',
      type: IsarType.long,
    ),
    r'clientID': PropertySchema(
      id: 2,
      name: r'clientID',
      type: IsarType.long,
    ),
    r'clienteDescripcion': PropertySchema(
      id: 3,
      name: r'clienteDescripcion',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 4,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'ejecutorDescripcion': PropertySchema(
      id: 5,
      name: r'ejecutorDescripcion',
      type: IsarType.string,
    ),
    r'ejecutorID': PropertySchema(
      id: 6,
      name: r'ejecutorID',
      type: IsarType.long,
    ),
    r'empCodigo': PropertySchema(
      id: 7,
      name: r'empCodigo',
      type: IsarType.string,
    ),
    r'objetoDescripcion': PropertySchema(
      id: 8,
      name: r'objetoDescripcion',
      type: IsarType.string,
    ),
    r'observacionEstado': PropertySchema(
      id: 9,
      name: r'observacionEstado',
      type: IsarType.string,
    ),
    r'pendiente': PropertySchema(
      id: 10,
      name: r'pendiente',
      type: IsarType.string,
    ),
    r'solClasifica': PropertySchema(
      id: 11,
      name: r'solClasifica',
      type: IsarType.string,
    ),
    r'solClienteCod': PropertySchema(
      id: 12,
      name: r'solClienteCod',
      type: IsarType.string,
    ),
    r'solCodigo': PropertySchema(
      id: 13,
      name: r'solCodigo',
      type: IsarType.string,
    ),
    r'solEjecutorCod': PropertySchema(
      id: 14,
      name: r'solEjecutorCod',
      type: IsarType.string,
    ),
    r'solEstado': PropertySchema(
      id: 15,
      name: r'solEstado',
      type: IsarType.string,
    ),
    r'solFecha': PropertySchema(
      id: 16,
      name: r'solFecha',
      type: IsarType.string,
    ),
    r'solFoto': PropertySchema(
      id: 17,
      name: r'solFoto',
      type: IsarType.string,
    ),
    r'solID': PropertySchema(
      id: 18,
      name: r'solID',
      type: IsarType.string,
    )
  },
  estimateSize: _solicitudBandejaSalidaEstimateSize,
  serialize: _solicitudBandejaSalidaSerialize,
  deserialize: _solicitudBandejaSalidaDeserialize,
  deserializeProp: _solicitudBandejaSalidaDeserializeProp,
  idName: r'idSolicitudBD',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _solicitudBandejaSalidaGetId,
  getLinks: _solicitudBandejaSalidaGetLinks,
  attach: _solicitudBandejaSalidaAttach,
  version: '3.1.0+1',
);

int _solicitudBandejaSalidaEstimateSize(
  SolicitudBandejaSalida object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.clasificacionDescripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.clienteDescripcion;
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
    final value = object.ejecutorDescripcion;
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
    final value = object.objetoDescripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observacionEstado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pendiente;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solClasifica;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solClienteCod;
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
    final value = object.solEjecutorCod;
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
  {
    final value = object.solFoto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solID;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _solicitudBandejaSalidaSerialize(
  SolicitudBandejaSalida object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.clasificacionDescripcion);
  writer.writeLong(offsets[1], object.clasosID);
  writer.writeLong(offsets[2], object.clientID);
  writer.writeString(offsets[3], object.clienteDescripcion);
  writer.writeString(offsets[4], object.descripcion);
  writer.writeString(offsets[5], object.ejecutorDescripcion);
  writer.writeLong(offsets[6], object.ejecutorID);
  writer.writeString(offsets[7], object.empCodigo);
  writer.writeString(offsets[8], object.objetoDescripcion);
  writer.writeString(offsets[9], object.observacionEstado);
  writer.writeString(offsets[10], object.pendiente);
  writer.writeString(offsets[11], object.solClasifica);
  writer.writeString(offsets[12], object.solClienteCod);
  writer.writeString(offsets[13], object.solCodigo);
  writer.writeString(offsets[14], object.solEjecutorCod);
  writer.writeString(offsets[15], object.solEstado);
  writer.writeString(offsets[16], object.solFecha);
  writer.writeString(offsets[17], object.solFoto);
  writer.writeString(offsets[18], object.solID);
}

SolicitudBandejaSalida _solicitudBandejaSalidaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SolicitudBandejaSalida();
  object.clasificacionDescripcion = reader.readStringOrNull(offsets[0]);
  object.clasosID = reader.readLongOrNull(offsets[1]);
  object.clientID = reader.readLongOrNull(offsets[2]);
  object.clienteDescripcion = reader.readStringOrNull(offsets[3]);
  object.descripcion = reader.readStringOrNull(offsets[4]);
  object.ejecutorDescripcion = reader.readStringOrNull(offsets[5]);
  object.ejecutorID = reader.readLongOrNull(offsets[6]);
  object.empCodigo = reader.readStringOrNull(offsets[7]);
  object.idSolicitudBD = id;
  object.objetoDescripcion = reader.readStringOrNull(offsets[8]);
  object.observacionEstado = reader.readStringOrNull(offsets[9]);
  object.pendiente = reader.readStringOrNull(offsets[10]);
  object.solClasifica = reader.readStringOrNull(offsets[11]);
  object.solClienteCod = reader.readStringOrNull(offsets[12]);
  object.solCodigo = reader.readStringOrNull(offsets[13]);
  object.solEjecutorCod = reader.readStringOrNull(offsets[14]);
  object.solEstado = reader.readStringOrNull(offsets[15]);
  object.solFecha = reader.readStringOrNull(offsets[16]);
  object.solFoto = reader.readStringOrNull(offsets[17]);
  object.solID = reader.readStringOrNull(offsets[18]);
  return object;
}

P _solicitudBandejaSalidaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _solicitudBandejaSalidaGetId(SolicitudBandejaSalida object) {
  return object.idSolicitudBD;
}

List<IsarLinkBase<dynamic>> _solicitudBandejaSalidaGetLinks(
    SolicitudBandejaSalida object) {
  return [];
}

void _solicitudBandejaSalidaAttach(
    IsarCollection<dynamic> col, Id id, SolicitudBandejaSalida object) {
  object.idSolicitudBD = id;
}

extension SolicitudBandejaSalidaQueryWhereSort
    on QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QWhere> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterWhere>
      anyIdSolicitudBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SolicitudBandejaSalidaQueryWhere on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QWhereClause> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterWhereClause> idSolicitudBDEqualTo(Id idSolicitudBD) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idSolicitudBD,
        upper: idSolicitudBD,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterWhereClause> idSolicitudBDNotEqualTo(Id idSolicitudBD) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idSolicitudBD, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idSolicitudBD, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: idSolicitudBD, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idSolicitudBD, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterWhereClause>
      idSolicitudBDGreaterThan(Id idSolicitudBD, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idSolicitudBD, includeLower: include),
      );
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterWhereClause>
      idSolicitudBDLessThan(Id idSolicitudBD, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idSolicitudBD, includeUpper: include),
      );
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterWhereClause> idSolicitudBDBetween(
    Id lowerIdSolicitudBD,
    Id upperIdSolicitudBD, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdSolicitudBD,
        includeLower: includeLower,
        upper: upperIdSolicitudBD,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SolicitudBandejaSalidaQueryFilter on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QFilterCondition> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clasificacionDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clasificacionDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clasificacionDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      clasificacionDescripcionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clasificacionDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      clasificacionDescripcionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clasificacionDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasificacionDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasificacionDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clasificacionDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clasosID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clasosID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clasosID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clasosID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clasosID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clasosIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clasosID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clientID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clientID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clientIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clienteDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clienteDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clienteDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      clienteDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clienteDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      clienteDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clienteDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clienteDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> clienteDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clienteDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionEqualTo(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionGreaterThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionLessThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionBetween(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      descripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      descripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ejecutorDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ejecutorDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ejecutorDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      ejecutorDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ejecutorDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      ejecutorDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ejecutorDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ejecutorDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ejecutorID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ejecutorID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ejecutorID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ejecutorID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ejecutorID',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> ejecutorIDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ejecutorID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoEqualTo(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoGreaterThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoLessThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoBetween(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      empCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'empCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      empCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'empCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> empCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'empCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> idSolicitudBDEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idSolicitudBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> idSolicitudBDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idSolicitudBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> idSolicitudBDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idSolicitudBD',
        value: value,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> idSolicitudBDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idSolicitudBD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objetoDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objetoDescripcion',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objetoDescripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      objetoDescripcionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objetoDescripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      objetoDescripcionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objetoDescripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objetoDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> objetoDescripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objetoDescripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observacionEstado',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observacionEstado',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observacionEstado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      observacionEstadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observacionEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      observacionEstadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observacionEstado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacionEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> observacionEstadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observacionEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pendiente',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pendiente',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pendiente',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      pendienteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pendiente',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      pendienteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pendiente',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pendiente',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> pendienteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pendiente',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solClasifica',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solClasifica',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solClasifica',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solClasificaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solClasifica',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solClasificaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solClasifica',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solClasifica',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClasificaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solClasifica',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solClienteCod',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solClienteCod',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solClienteCod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solClienteCodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solClienteCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solClienteCodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solClienteCod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solClienteCod',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solClienteCodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solClienteCod',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solCodigo',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoEqualTo(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoGreaterThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoLessThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoBetween(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solCodigoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solCodigo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solCodigoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solCodigo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solCodigoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solCodigo',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solEjecutorCod',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solEjecutorCod',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solEjecutorCod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solEjecutorCodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solEjecutorCod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solEjecutorCodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solEjecutorCod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solEjecutorCod',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEjecutorCodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solEjecutorCod',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solEstado',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solEstado',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoEqualTo(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoGreaterThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoLessThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoBetween(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solEstadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solEstadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solEstado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solEstadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solFecha',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solFecha',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaEqualTo(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaGreaterThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaLessThan(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaBetween(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solFechaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solFecha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solFechaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solFecha',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solFecha',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFechaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solFecha',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solFoto',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solFoto',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solFoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solFotoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solFotoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solFoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solFoto',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solFotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solFoto',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solID',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDEqualTo(
    String? value, {
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDGreaterThan(
    String? value, {
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDLessThan(
    String? value, {
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDStartsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDEndsWith(
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

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
          QAfterFilterCondition>
      solIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solID',
        value: '',
      ));
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida,
      QAfterFilterCondition> solIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solID',
        value: '',
      ));
    });
  }
}

extension SolicitudBandejaSalidaQueryObject on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QFilterCondition> {}

extension SolicitudBandejaSalidaQueryLinks on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QFilterCondition> {}

extension SolicitudBandejaSalidaQuerySortBy
    on QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QSortBy> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClasificacionDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClasificacionDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClasosID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasosID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClasosIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasosID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClienteDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByClienteDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEjecutorDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEjecutorDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEjecutorID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEjecutorIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByObjetoDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetoDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByObjetoDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetoDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByObservacionEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByObservacionEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByPendiente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendiente', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortByPendienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendiente', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolClasifica() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClasifica', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolClasificaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClasifica', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolClienteCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClienteCod', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolClienteCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClienteCod', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolEjecutorCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEjecutorCod', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolEjecutorCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEjecutorCod', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolFoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFoto', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolFotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFoto', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      sortBySolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.desc);
    });
  }
}

extension SolicitudBandejaSalidaQuerySortThenBy on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QSortThenBy> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClasificacionDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClasificacionDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasificacionDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClasosID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasosID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClasosIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clasosID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClientIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClienteDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByClienteDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clienteDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEjecutorDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEjecutorDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEjecutorID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEjecutorIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ejecutorID', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEmpCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByEmpCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByIdSolicitudBD() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSolicitudBD', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByIdSolicitudBDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSolicitudBD', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByObjetoDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetoDescripcion', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByObjetoDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objetoDescripcion', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByObservacionEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByObservacionEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacionEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByPendiente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendiente', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenByPendienteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendiente', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolClasifica() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClasifica', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolClasificaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClasifica', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolClienteCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClienteCod', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolClienteCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solClienteCod', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolCodigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolCodigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solCodigo', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolEjecutorCod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEjecutorCod', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolEjecutorCodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEjecutorCod', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solEstado', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFecha', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolFoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFoto', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolFotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solFoto', Sort.desc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.asc);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QAfterSortBy>
      thenBySolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solID', Sort.desc);
    });
  }
}

extension SolicitudBandejaSalidaQueryWhereDistinct
    on QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct> {
  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByClasificacionDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clasificacionDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByClasosID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clasosID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByClientID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByClienteDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clienteDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByEjecutorDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ejecutorDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByEjecutorID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ejecutorID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByEmpCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCodigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByObjetoDescripcion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objetoDescripcion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByObservacionEstado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observacionEstado',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctByPendiente({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pendiente', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolClasifica({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solClasifica', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolClienteCod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solClienteCod',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolCodigo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solCodigo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolEjecutorCod({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solEjecutorCod',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolEstado({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solEstado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolFecha({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solFecha', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolFoto({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solFoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SolicitudBandejaSalida, SolicitudBandejaSalida, QDistinct>
      distinctBySolID({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solID', caseSensitive: caseSensitive);
    });
  }
}

extension SolicitudBandejaSalidaQueryProperty on QueryBuilder<
    SolicitudBandejaSalida, SolicitudBandejaSalida, QQueryProperty> {
  QueryBuilder<SolicitudBandejaSalida, int, QQueryOperations>
      idSolicitudBDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idSolicitudBD');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      clasificacionDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clasificacionDescripcion');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, int?, QQueryOperations>
      clasosIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clasosID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, int?, QQueryOperations>
      clientIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      clienteDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clienteDescripcion');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      ejecutorDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ejecutorDescripcion');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, int?, QQueryOperations>
      ejecutorIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ejecutorID');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      empCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCodigo');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      objetoDescripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objetoDescripcion');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      observacionEstadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observacionEstado');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      pendienteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pendiente');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solClasificaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solClasifica');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solClienteCodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solClienteCod');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solCodigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solCodigo');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solEjecutorCodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solEjecutorCod');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solEstadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solEstado');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solFecha');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solFotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solFoto');
    });
  }

  QueryBuilder<SolicitudBandejaSalida, String?, QQueryOperations>
      solIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solID');
    });
  }
}
