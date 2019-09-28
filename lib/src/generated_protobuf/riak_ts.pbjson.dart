///
//  Generated code. Do not modify.
//  source: riak_ts.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const TsColumnType$json = const {
  '1': 'TsColumnType',
  '2': const [
    const {'1': 'VARCHAR', '2': 0},
    const {'1': 'SINT64', '2': 1},
    const {'1': 'DOUBLE', '2': 2},
    const {'1': 'TIMESTAMP', '2': 3},
    const {'1': 'BOOLEAN', '2': 4},
    const {'1': 'BLOB', '2': 5},
  ],
};

const TsQueryReq$json = const {
  '1': 'TsQueryReq',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.TsInterpolation', '10': 'query'},
    const {'1': 'stream', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'stream'},
    const {'1': 'cover_context', '3': 3, '4': 1, '5': 12, '10': 'coverContext'},
  ],
};

const TsQueryResp$json = const {
  '1': 'TsQueryResp',
  '2': const [
    const {'1': 'columns', '3': 1, '4': 3, '5': 11, '6': '.TsColumnDescription', '10': 'columns'},
    const {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.TsRow', '10': 'rows'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '7': 'true', '10': 'done'},
  ],
};

const TsGetReq$json = const {
  '1': 'TsGetReq',
  '2': const [
    const {'1': 'table', '3': 1, '4': 2, '5': 12, '10': 'table'},
    const {'1': 'key', '3': 2, '4': 3, '5': 11, '6': '.TsCell', '10': 'key'},
    const {'1': 'timeout', '3': 3, '4': 1, '5': 13, '10': 'timeout'},
  ],
};

const TsGetResp$json = const {
  '1': 'TsGetResp',
  '2': const [
    const {'1': 'columns', '3': 1, '4': 3, '5': 11, '6': '.TsColumnDescription', '10': 'columns'},
    const {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.TsRow', '10': 'rows'},
  ],
};

const TsPutReq$json = const {
  '1': 'TsPutReq',
  '2': const [
    const {'1': 'table', '3': 1, '4': 2, '5': 12, '10': 'table'},
    const {'1': 'columns', '3': 2, '4': 3, '5': 11, '6': '.TsColumnDescription', '10': 'columns'},
    const {'1': 'rows', '3': 3, '4': 3, '5': 11, '6': '.TsRow', '10': 'rows'},
  ],
};

const TsPutResp$json = const {
  '1': 'TsPutResp',
};

const TsDelReq$json = const {
  '1': 'TsDelReq',
  '2': const [
    const {'1': 'table', '3': 1, '4': 2, '5': 12, '10': 'table'},
    const {'1': 'key', '3': 2, '4': 3, '5': 11, '6': '.TsCell', '10': 'key'},
    const {'1': 'vclock', '3': 3, '4': 1, '5': 12, '10': 'vclock'},
    const {'1': 'timeout', '3': 4, '4': 1, '5': 13, '10': 'timeout'},
  ],
};

const TsDelResp$json = const {
  '1': 'TsDelResp',
};

const TsInterpolation$json = const {
  '1': 'TsInterpolation',
  '2': const [
    const {'1': 'base', '3': 1, '4': 2, '5': 12, '10': 'base'},
    const {'1': 'interpolations', '3': 2, '4': 3, '5': 11, '6': '.RpbPair', '10': 'interpolations'},
  ],
};

const TsColumnDescription$json = const {
  '1': 'TsColumnDescription',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 12, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 2, '5': 14, '6': '.TsColumnType', '10': 'type'},
  ],
};

const TsRow$json = const {
  '1': 'TsRow',
  '2': const [
    const {'1': 'cells', '3': 1, '4': 3, '5': 11, '6': '.TsCell', '10': 'cells'},
  ],
};

const TsCell$json = const {
  '1': 'TsCell',
  '2': const [
    const {'1': 'varchar_value', '3': 1, '4': 1, '5': 12, '10': 'varcharValue'},
    const {'1': 'sint64_value', '3': 2, '4': 1, '5': 18, '10': 'sint64Value'},
    const {'1': 'timestamp_value', '3': 3, '4': 1, '5': 18, '10': 'timestampValue'},
    const {'1': 'boolean_value', '3': 4, '4': 1, '5': 8, '10': 'booleanValue'},
    const {'1': 'double_value', '3': 5, '4': 1, '5': 1, '10': 'doubleValue'},
  ],
};

const TsListKeysReq$json = const {
  '1': 'TsListKeysReq',
  '2': const [
    const {'1': 'table', '3': 1, '4': 2, '5': 12, '10': 'table'},
    const {'1': 'timeout', '3': 2, '4': 1, '5': 13, '10': 'timeout'},
  ],
};

const TsListKeysResp$json = const {
  '1': 'TsListKeysResp',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 11, '6': '.TsRow', '10': 'keys'},
    const {'1': 'done', '3': 2, '4': 1, '5': 8, '10': 'done'},
  ],
};

const TsCoverageReq$json = const {
  '1': 'TsCoverageReq',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.TsInterpolation', '10': 'query'},
    const {'1': 'table', '3': 2, '4': 2, '5': 12, '10': 'table'},
    const {'1': 'replace_cover', '3': 3, '4': 1, '5': 12, '10': 'replaceCover'},
    const {'1': 'unavailable_cover', '3': 4, '4': 3, '5': 12, '10': 'unavailableCover'},
  ],
};

const TsCoverageResp$json = const {
  '1': 'TsCoverageResp',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.TsCoverageEntry', '10': 'entries'},
  ],
};

const TsCoverageEntry$json = const {
  '1': 'TsCoverageEntry',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 2, '5': 12, '10': 'ip'},
    const {'1': 'port', '3': 2, '4': 2, '5': 13, '10': 'port'},
    const {'1': 'cover_context', '3': 3, '4': 2, '5': 12, '10': 'coverContext'},
    const {'1': 'range', '3': 4, '4': 1, '5': 11, '6': '.TsRange', '10': 'range'},
  ],
};

const TsRange$json = const {
  '1': 'TsRange',
  '2': const [
    const {'1': 'field_name', '3': 1, '4': 2, '5': 12, '10': 'fieldName'},
    const {'1': 'lower_bound', '3': 2, '4': 2, '5': 18, '10': 'lowerBound'},
    const {'1': 'lower_bound_inclusive', '3': 3, '4': 2, '5': 8, '10': 'lowerBoundInclusive'},
    const {'1': 'upper_bound', '3': 4, '4': 2, '5': 18, '10': 'upperBound'},
    const {'1': 'upper_bound_inclusive', '3': 5, '4': 2, '5': 8, '10': 'upperBoundInclusive'},
    const {'1': 'desc', '3': 6, '4': 2, '5': 12, '10': 'desc'},
  ],
};

