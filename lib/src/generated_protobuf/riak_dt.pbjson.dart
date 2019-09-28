///
//  Generated code. Do not modify.
//  source: riak_dt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MapField$json = const {
  '1': 'MapField',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 12, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 2, '5': 14, '6': '.MapField.MapFieldType', '10': 'type'},
  ],
  '4': const [MapField_MapFieldType$json],
};

const MapField_MapFieldType$json = const {
  '1': 'MapFieldType',
  '2': const [
    const {'1': 'COUNTER', '2': 1},
    const {'1': 'SET', '2': 2},
    const {'1': 'REGISTER', '2': 3},
    const {'1': 'FLAG', '2': 4},
    const {'1': 'MAP', '2': 5},
  ],
};

const MapEntry$json = const {
  '1': 'MapEntry',
  '2': const [
    const {'1': 'field', '3': 1, '4': 2, '5': 11, '6': '.MapField', '10': 'field'},
    const {'1': 'counter_value', '3': 2, '4': 1, '5': 18, '10': 'counterValue'},
    const {'1': 'set_value', '3': 3, '4': 3, '5': 12, '10': 'setValue'},
    const {'1': 'register_value', '3': 4, '4': 1, '5': 12, '10': 'registerValue'},
    const {'1': 'flag_value', '3': 5, '4': 1, '5': 8, '10': 'flagValue'},
    const {'1': 'map_value', '3': 6, '4': 3, '5': 11, '6': '.MapEntry', '10': 'mapValue'},
  ],
};

const DtFetchReq$json = const {
  '1': 'DtFetchReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'type', '3': 3, '4': 2, '5': 12, '10': 'type'},
    const {'1': 'r', '3': 4, '4': 1, '5': 13, '10': 'r'},
    const {'1': 'pr', '3': 5, '4': 1, '5': 13, '10': 'pr'},
    const {'1': 'basic_quorum', '3': 6, '4': 1, '5': 8, '10': 'basicQuorum'},
    const {'1': 'notfound_ok', '3': 7, '4': 1, '5': 8, '10': 'notfoundOk'},
    const {'1': 'timeout', '3': 8, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'sloppy_quorum', '3': 9, '4': 1, '5': 8, '10': 'sloppyQuorum'},
    const {'1': 'n_val', '3': 10, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'include_context', '3': 11, '4': 1, '5': 8, '7': 'true', '10': 'includeContext'},
  ],
};

const DtValue$json = const {
  '1': 'DtValue',
  '2': const [
    const {'1': 'counter_value', '3': 1, '4': 1, '5': 18, '10': 'counterValue'},
    const {'1': 'set_value', '3': 2, '4': 3, '5': 12, '10': 'setValue'},
    const {'1': 'map_value', '3': 3, '4': 3, '5': 11, '6': '.MapEntry', '10': 'mapValue'},
    const {'1': 'hll_value', '3': 4, '4': 1, '5': 4, '10': 'hllValue'},
    const {'1': 'gset_value', '3': 5, '4': 3, '5': 12, '10': 'gsetValue'},
  ],
};

const DtFetchResp$json = const {
  '1': 'DtFetchResp',
  '2': const [
    const {'1': 'context', '3': 1, '4': 1, '5': 12, '10': 'context'},
    const {'1': 'type', '3': 2, '4': 2, '5': 14, '6': '.DtFetchResp.DataType', '10': 'type'},
    const {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.DtValue', '10': 'value'},
  ],
  '4': const [DtFetchResp_DataType$json],
};

const DtFetchResp_DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'COUNTER', '2': 1},
    const {'1': 'SET', '2': 2},
    const {'1': 'MAP', '2': 3},
    const {'1': 'HLL', '2': 4},
    const {'1': 'GSET', '2': 5},
  ],
};

const CounterOp$json = const {
  '1': 'CounterOp',
  '2': const [
    const {'1': 'increment', '3': 1, '4': 1, '5': 18, '10': 'increment'},
  ],
};

const SetOp$json = const {
  '1': 'SetOp',
  '2': const [
    const {'1': 'adds', '3': 1, '4': 3, '5': 12, '10': 'adds'},
    const {'1': 'removes', '3': 2, '4': 3, '5': 12, '10': 'removes'},
  ],
};

const GSetOp$json = const {
  '1': 'GSetOp',
  '2': const [
    const {'1': 'adds', '3': 1, '4': 3, '5': 12, '10': 'adds'},
  ],
};

const HllOp$json = const {
  '1': 'HllOp',
  '2': const [
    const {'1': 'adds', '3': 1, '4': 3, '5': 12, '10': 'adds'},
  ],
};

const MapUpdate$json = const {
  '1': 'MapUpdate',
  '2': const [
    const {'1': 'field', '3': 1, '4': 2, '5': 11, '6': '.MapField', '10': 'field'},
    const {'1': 'counter_op', '3': 2, '4': 1, '5': 11, '6': '.CounterOp', '10': 'counterOp'},
    const {'1': 'set_op', '3': 3, '4': 1, '5': 11, '6': '.SetOp', '10': 'setOp'},
    const {'1': 'register_op', '3': 4, '4': 1, '5': 12, '10': 'registerOp'},
    const {'1': 'flag_op', '3': 5, '4': 1, '5': 14, '6': '.MapUpdate.FlagOp', '10': 'flagOp'},
    const {'1': 'map_op', '3': 6, '4': 1, '5': 11, '6': '.MapOp', '10': 'mapOp'},
  ],
  '4': const [MapUpdate_FlagOp$json],
};

const MapUpdate_FlagOp$json = const {
  '1': 'FlagOp',
  '2': const [
    const {'1': 'ENABLE', '2': 1},
    const {'1': 'DISABLE', '2': 2},
  ],
};

const MapOp$json = const {
  '1': 'MapOp',
  '2': const [
    const {'1': 'removes', '3': 1, '4': 3, '5': 11, '6': '.MapField', '10': 'removes'},
    const {'1': 'updates', '3': 2, '4': 3, '5': 11, '6': '.MapUpdate', '10': 'updates'},
  ],
};

const DtOp$json = const {
  '1': 'DtOp',
  '2': const [
    const {'1': 'counter_op', '3': 1, '4': 1, '5': 11, '6': '.CounterOp', '10': 'counterOp'},
    const {'1': 'set_op', '3': 2, '4': 1, '5': 11, '6': '.SetOp', '10': 'setOp'},
    const {'1': 'map_op', '3': 3, '4': 1, '5': 11, '6': '.MapOp', '10': 'mapOp'},
    const {'1': 'hll_op', '3': 4, '4': 1, '5': 11, '6': '.HllOp', '10': 'hllOp'},
    const {'1': 'gset_op', '3': 5, '4': 1, '5': 11, '6': '.GSetOp', '10': 'gsetOp'},
  ],
};

const DtUpdateReq$json = const {
  '1': 'DtUpdateReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'type', '3': 3, '4': 2, '5': 12, '10': 'type'},
    const {'1': 'context', '3': 4, '4': 1, '5': 12, '10': 'context'},
    const {'1': 'op', '3': 5, '4': 2, '5': 11, '6': '.DtOp', '10': 'op'},
    const {'1': 'w', '3': 6, '4': 1, '5': 13, '10': 'w'},
    const {'1': 'dw', '3': 7, '4': 1, '5': 13, '10': 'dw'},
    const {'1': 'pw', '3': 8, '4': 1, '5': 13, '10': 'pw'},
    const {'1': 'return_body', '3': 9, '4': 1, '5': 8, '7': 'false', '10': 'returnBody'},
    const {'1': 'timeout', '3': 10, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'sloppy_quorum', '3': 11, '4': 1, '5': 8, '10': 'sloppyQuorum'},
    const {'1': 'n_val', '3': 12, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'include_context', '3': 13, '4': 1, '5': 8, '7': 'true', '10': 'includeContext'},
  ],
};

const DtUpdateResp$json = const {
  '1': 'DtUpdateResp',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'context', '3': 2, '4': 1, '5': 12, '10': 'context'},
    const {'1': 'counter_value', '3': 3, '4': 1, '5': 18, '10': 'counterValue'},
    const {'1': 'set_value', '3': 4, '4': 3, '5': 12, '10': 'setValue'},
    const {'1': 'map_value', '3': 5, '4': 3, '5': 11, '6': '.MapEntry', '10': 'mapValue'},
    const {'1': 'hll_value', '3': 6, '4': 1, '5': 4, '10': 'hllValue'},
    const {'1': 'gset_value', '3': 7, '4': 3, '5': 12, '10': 'gsetValue'},
  ],
};

