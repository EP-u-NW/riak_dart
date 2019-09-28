///
//  Generated code. Do not modify.
//  source: riak.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const RpbErrorResp$json = const {
  '1': 'RpbErrorResp',
  '2': const [
    const {'1': 'errmsg', '3': 1, '4': 2, '5': 12, '10': 'errmsg'},
    const {'1': 'errcode', '3': 2, '4': 2, '5': 13, '10': 'errcode'},
  ],
};

const RpbGetServerInfoResp$json = const {
  '1': 'RpbGetServerInfoResp',
  '2': const [
    const {'1': 'node', '3': 1, '4': 1, '5': 12, '10': 'node'},
    const {'1': 'server_version', '3': 2, '4': 1, '5': 12, '10': 'serverVersion'},
  ],
};

const RpbPair$json = const {
  '1': 'RpbPair',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

const RpbGetBucketReq$json = const {
  '1': 'RpbGetBucketReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'type', '3': 2, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbGetBucketResp$json = const {
  '1': 'RpbGetBucketResp',
  '2': const [
    const {'1': 'props', '3': 1, '4': 2, '5': 11, '6': '.RpbBucketProps', '10': 'props'},
  ],
};

const RpbSetBucketReq$json = const {
  '1': 'RpbSetBucketReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'props', '3': 2, '4': 2, '5': 11, '6': '.RpbBucketProps', '10': 'props'},
    const {'1': 'type', '3': 3, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbResetBucketReq$json = const {
  '1': 'RpbResetBucketReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'type', '3': 2, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbGetBucketTypeReq$json = const {
  '1': 'RpbGetBucketTypeReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 12, '10': 'type'},
  ],
};

const RpbSetBucketTypeReq$json = const {
  '1': 'RpbSetBucketTypeReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 12, '10': 'type'},
    const {'1': 'props', '3': 2, '4': 2, '5': 11, '6': '.RpbBucketProps', '10': 'props'},
  ],
};

const RpbModFun$json = const {
  '1': 'RpbModFun',
  '2': const [
    const {'1': 'module', '3': 1, '4': 2, '5': 12, '10': 'module'},
    const {'1': 'function', '3': 2, '4': 2, '5': 12, '10': 'function'},
  ],
};

const RpbCommitHook$json = const {
  '1': 'RpbCommitHook',
  '2': const [
    const {'1': 'modfun', '3': 1, '4': 1, '5': 11, '6': '.RpbModFun', '10': 'modfun'},
    const {'1': 'name', '3': 2, '4': 1, '5': 12, '10': 'name'},
  ],
};

const RpbBucketProps$json = const {
  '1': 'RpbBucketProps',
  '2': const [
    const {'1': 'n_val', '3': 1, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'allow_mult', '3': 2, '4': 1, '5': 8, '10': 'allowMult'},
    const {'1': 'last_write_wins', '3': 3, '4': 1, '5': 8, '10': 'lastWriteWins'},
    const {'1': 'precommit', '3': 4, '4': 3, '5': 11, '6': '.RpbCommitHook', '10': 'precommit'},
    const {'1': 'has_precommit', '3': 5, '4': 1, '5': 8, '7': 'false', '10': 'hasPrecommit'},
    const {'1': 'postcommit', '3': 6, '4': 3, '5': 11, '6': '.RpbCommitHook', '10': 'postcommit'},
    const {'1': 'has_postcommit', '3': 7, '4': 1, '5': 8, '7': 'false', '10': 'hasPostcommit'},
    const {'1': 'chash_keyfun', '3': 8, '4': 1, '5': 11, '6': '.RpbModFun', '10': 'chashKeyfun'},
    const {'1': 'linkfun', '3': 9, '4': 1, '5': 11, '6': '.RpbModFun', '10': 'linkfun'},
    const {'1': 'old_vclock', '3': 10, '4': 1, '5': 13, '10': 'oldVclock'},
    const {'1': 'young_vclock', '3': 11, '4': 1, '5': 13, '10': 'youngVclock'},
    const {'1': 'big_vclock', '3': 12, '4': 1, '5': 13, '10': 'bigVclock'},
    const {'1': 'small_vclock', '3': 13, '4': 1, '5': 13, '10': 'smallVclock'},
    const {'1': 'pr', '3': 14, '4': 1, '5': 13, '10': 'pr'},
    const {'1': 'r', '3': 15, '4': 1, '5': 13, '10': 'r'},
    const {'1': 'w', '3': 16, '4': 1, '5': 13, '10': 'w'},
    const {'1': 'pw', '3': 17, '4': 1, '5': 13, '10': 'pw'},
    const {'1': 'dw', '3': 18, '4': 1, '5': 13, '10': 'dw'},
    const {'1': 'rw', '3': 19, '4': 1, '5': 13, '10': 'rw'},
    const {'1': 'basic_quorum', '3': 20, '4': 1, '5': 8, '10': 'basicQuorum'},
    const {'1': 'notfound_ok', '3': 21, '4': 1, '5': 8, '10': 'notfoundOk'},
    const {'1': 'backend', '3': 22, '4': 1, '5': 12, '10': 'backend'},
    const {'1': 'search', '3': 23, '4': 1, '5': 8, '10': 'search'},
    const {'1': 'repl', '3': 24, '4': 1, '5': 14, '6': '.RpbBucketProps.RpbReplMode', '10': 'repl'},
    const {'1': 'search_index', '3': 25, '4': 1, '5': 12, '10': 'searchIndex'},
    const {'1': 'datatype', '3': 26, '4': 1, '5': 12, '10': 'datatype'},
    const {'1': 'consistent', '3': 27, '4': 1, '5': 8, '10': 'consistent'},
    const {'1': 'write_once', '3': 28, '4': 1, '5': 8, '10': 'writeOnce'},
    const {'1': 'hll_precision', '3': 29, '4': 1, '5': 13, '10': 'hllPrecision'},
    const {'1': 'ttl', '3': 30, '4': 1, '5': 13, '10': 'ttl'},
  ],
  '4': const [RpbBucketProps_RpbReplMode$json],
};

const RpbBucketProps_RpbReplMode$json = const {
  '1': 'RpbReplMode',
  '2': const [
    const {'1': 'FALSE', '2': 0},
    const {'1': 'REALTIME', '2': 1},
    const {'1': 'FULLSYNC', '2': 2},
    const {'1': 'TRUE', '2': 3},
  ],
};

const RpbAuthReq$json = const {
  '1': 'RpbAuthReq',
  '2': const [
    const {'1': 'user', '3': 1, '4': 2, '5': 12, '10': 'user'},
    const {'1': 'password', '3': 2, '4': 2, '5': 12, '10': 'password'},
  ],
};

