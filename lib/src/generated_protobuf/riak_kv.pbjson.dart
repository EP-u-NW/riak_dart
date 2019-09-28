///
//  Generated code. Do not modify.
//  source: riak_kv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const RpbGetClientIdResp$json = const {
  '1': 'RpbGetClientIdResp',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 2, '5': 12, '10': 'clientId'},
  ],
};

const RpbSetClientIdReq$json = const {
  '1': 'RpbSetClientIdReq',
  '2': const [
    const {'1': 'client_id', '3': 1, '4': 2, '5': 12, '10': 'clientId'},
  ],
};

const RpbGetReq$json = const {
  '1': 'RpbGetReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'r', '3': 3, '4': 1, '5': 13, '10': 'r'},
    const {'1': 'pr', '3': 4, '4': 1, '5': 13, '10': 'pr'},
    const {'1': 'basic_quorum', '3': 5, '4': 1, '5': 8, '10': 'basicQuorum'},
    const {'1': 'notfound_ok', '3': 6, '4': 1, '5': 8, '10': 'notfoundOk'},
    const {'1': 'if_modified', '3': 7, '4': 1, '5': 12, '10': 'ifModified'},
    const {'1': 'head', '3': 8, '4': 1, '5': 8, '10': 'head'},
    const {'1': 'deletedvclock', '3': 9, '4': 1, '5': 8, '10': 'deletedvclock'},
    const {'1': 'timeout', '3': 10, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'sloppy_quorum', '3': 11, '4': 1, '5': 8, '10': 'sloppyQuorum'},
    const {'1': 'n_val', '3': 12, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'type', '3': 13, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbGetResp$json = const {
  '1': 'RpbGetResp',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 11, '6': '.RpbContent', '10': 'content'},
    const {'1': 'vclock', '3': 2, '4': 1, '5': 12, '10': 'vclock'},
    const {'1': 'unchanged', '3': 3, '4': 1, '5': 8, '10': 'unchanged'},
  ],
};

const RpbPutReq$json = const {
  '1': 'RpbPutReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'vclock', '3': 3, '4': 1, '5': 12, '10': 'vclock'},
    const {'1': 'content', '3': 4, '4': 2, '5': 11, '6': '.RpbContent', '10': 'content'},
    const {'1': 'w', '3': 5, '4': 1, '5': 13, '10': 'w'},
    const {'1': 'dw', '3': 6, '4': 1, '5': 13, '10': 'dw'},
    const {'1': 'return_body', '3': 7, '4': 1, '5': 8, '10': 'returnBody'},
    const {'1': 'pw', '3': 8, '4': 1, '5': 13, '10': 'pw'},
    const {'1': 'if_not_modified', '3': 9, '4': 1, '5': 8, '10': 'ifNotModified'},
    const {'1': 'if_none_match', '3': 10, '4': 1, '5': 8, '10': 'ifNoneMatch'},
    const {'1': 'return_head', '3': 11, '4': 1, '5': 8, '10': 'returnHead'},
    const {'1': 'timeout', '3': 12, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'asis', '3': 13, '4': 1, '5': 8, '10': 'asis'},
    const {'1': 'sloppy_quorum', '3': 14, '4': 1, '5': 8, '10': 'sloppyQuorum'},
    const {'1': 'n_val', '3': 15, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'type', '3': 16, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbPutResp$json = const {
  '1': 'RpbPutResp',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 11, '6': '.RpbContent', '10': 'content'},
    const {'1': 'vclock', '3': 2, '4': 1, '5': 12, '10': 'vclock'},
    const {'1': 'key', '3': 3, '4': 1, '5': 12, '10': 'key'},
  ],
};

const RpbDelReq$json = const {
  '1': 'RpbDelReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'rw', '3': 3, '4': 1, '5': 13, '10': 'rw'},
    const {'1': 'vclock', '3': 4, '4': 1, '5': 12, '10': 'vclock'},
    const {'1': 'r', '3': 5, '4': 1, '5': 13, '10': 'r'},
    const {'1': 'w', '3': 6, '4': 1, '5': 13, '10': 'w'},
    const {'1': 'pr', '3': 7, '4': 1, '5': 13, '10': 'pr'},
    const {'1': 'pw', '3': 8, '4': 1, '5': 13, '10': 'pw'},
    const {'1': 'dw', '3': 9, '4': 1, '5': 13, '10': 'dw'},
    const {'1': 'timeout', '3': 10, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'sloppy_quorum', '3': 11, '4': 1, '5': 8, '10': 'sloppyQuorum'},
    const {'1': 'n_val', '3': 12, '4': 1, '5': 13, '10': 'nVal'},
    const {'1': 'type', '3': 13, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbListBucketsReq$json = const {
  '1': 'RpbListBucketsReq',
  '2': const [
    const {'1': 'timeout', '3': 1, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'stream', '3': 2, '4': 1, '5': 8, '10': 'stream'},
    const {'1': 'type', '3': 3, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbListBucketsResp$json = const {
  '1': 'RpbListBucketsResp',
  '2': const [
    const {'1': 'buckets', '3': 1, '4': 3, '5': 12, '10': 'buckets'},
    const {'1': 'done', '3': 2, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbListKeysReq$json = const {
  '1': 'RpbListKeysReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'timeout', '3': 2, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'type', '3': 3, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbListKeysResp$json = const {
  '1': 'RpbListKeysResp',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 12, '10': 'keys'},
    const {'1': 'done', '3': 2, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbMapRedReq$json = const {
  '1': 'RpbMapRedReq',
  '2': const [
    const {'1': 'request', '3': 1, '4': 2, '5': 12, '10': 'request'},
    const {'1': 'content_type', '3': 2, '4': 2, '5': 12, '10': 'contentType'},
  ],
};

const RpbMapRedResp$json = const {
  '1': 'RpbMapRedResp',
  '2': const [
    const {'1': 'phase', '3': 1, '4': 1, '5': 13, '10': 'phase'},
    const {'1': 'response', '3': 2, '4': 1, '5': 12, '10': 'response'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbIndexReq$json = const {
  '1': 'RpbIndexReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'index', '3': 2, '4': 2, '5': 12, '10': 'index'},
    const {'1': 'qtype', '3': 3, '4': 2, '5': 14, '6': '.RpbIndexReq.IndexQueryType', '10': 'qtype'},
    const {'1': 'key', '3': 4, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'range_min', '3': 5, '4': 1, '5': 12, '10': 'rangeMin'},
    const {'1': 'range_max', '3': 6, '4': 1, '5': 12, '10': 'rangeMax'},
    const {'1': 'return_terms', '3': 7, '4': 1, '5': 8, '10': 'returnTerms'},
    const {'1': 'stream', '3': 8, '4': 1, '5': 8, '10': 'stream'},
    const {'1': 'max_results', '3': 9, '4': 1, '5': 13, '10': 'maxResults'},
    const {'1': 'continuation', '3': 10, '4': 1, '5': 12, '10': 'continuation'},
    const {'1': 'timeout', '3': 11, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'type', '3': 12, '4': 1, '5': 12, '10': 'type'},
    const {'1': 'term_regex', '3': 13, '4': 1, '5': 12, '10': 'termRegex'},
    const {'1': 'pagination_sort', '3': 14, '4': 1, '5': 8, '10': 'paginationSort'},
    const {'1': 'cover_context', '3': 15, '4': 1, '5': 12, '10': 'coverContext'},
    const {'1': 'return_body', '3': 16, '4': 1, '5': 8, '10': 'returnBody'},
  ],
  '4': const [RpbIndexReq_IndexQueryType$json],
};

const RpbIndexReq_IndexQueryType$json = const {
  '1': 'IndexQueryType',
  '2': const [
    const {'1': 'eq', '2': 0},
    const {'1': 'range', '2': 1},
  ],
};

const RpbIndexResp$json = const {
  '1': 'RpbIndexResp',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 3, '5': 12, '10': 'keys'},
    const {'1': 'results', '3': 2, '4': 3, '5': 11, '6': '.RpbPair', '10': 'results'},
    const {'1': 'continuation', '3': 3, '4': 1, '5': 12, '10': 'continuation'},
    const {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbIndexBodyResp$json = const {
  '1': 'RpbIndexBodyResp',
  '2': const [
    const {'1': 'objects', '3': 1, '4': 3, '5': 11, '6': '.RpbIndexObject', '10': 'objects'},
    const {'1': 'continuation', '3': 2, '4': 1, '5': 12, '10': 'continuation'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbCSBucketReq$json = const {
  '1': 'RpbCSBucketReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'start_key', '3': 2, '4': 2, '5': 12, '10': 'startKey'},
    const {'1': 'end_key', '3': 3, '4': 1, '5': 12, '10': 'endKey'},
    const {'1': 'start_incl', '3': 4, '4': 1, '5': 8, '7': 'true', '10': 'startIncl'},
    const {'1': 'end_incl', '3': 5, '4': 1, '5': 8, '7': 'false', '10': 'endIncl'},
    const {'1': 'continuation', '3': 6, '4': 1, '5': 12, '10': 'continuation'},
    const {'1': 'max_results', '3': 7, '4': 1, '5': 13, '10': 'maxResults'},
    const {'1': 'timeout', '3': 8, '4': 1, '5': 13, '10': 'timeout'},
    const {'1': 'type', '3': 9, '4': 1, '5': 12, '10': 'type'},
    const {'1': 'cover_context', '3': 10, '4': 1, '5': 12, '10': 'coverContext'},
  ],
};

const RpbCSBucketResp$json = const {
  '1': 'RpbCSBucketResp',
  '2': const [
    const {'1': 'objects', '3': 1, '4': 3, '5': 11, '6': '.RpbIndexObject', '10': 'objects'},
    const {'1': 'continuation', '3': 2, '4': 1, '5': 12, '10': 'continuation'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

const RpbIndexObject$json = const {
  '1': 'RpbIndexObject',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'object', '3': 2, '4': 2, '5': 11, '6': '.RpbGetResp', '10': 'object'},
  ],
};

const RpbContent$json = const {
  '1': 'RpbContent',
  '2': const [
    const {'1': 'value', '3': 1, '4': 2, '5': 12, '10': 'value'},
    const {'1': 'content_type', '3': 2, '4': 1, '5': 12, '10': 'contentType'},
    const {'1': 'charset', '3': 3, '4': 1, '5': 12, '10': 'charset'},
    const {'1': 'content_encoding', '3': 4, '4': 1, '5': 12, '10': 'contentEncoding'},
    const {'1': 'vtag', '3': 5, '4': 1, '5': 12, '10': 'vtag'},
    const {'1': 'links', '3': 6, '4': 3, '5': 11, '6': '.RpbLink', '10': 'links'},
    const {'1': 'last_mod', '3': 7, '4': 1, '5': 13, '10': 'lastMod'},
    const {'1': 'last_mod_usecs', '3': 8, '4': 1, '5': 13, '10': 'lastModUsecs'},
    const {'1': 'usermeta', '3': 9, '4': 3, '5': 11, '6': '.RpbPair', '10': 'usermeta'},
    const {'1': 'indexes', '3': 10, '4': 3, '5': 11, '6': '.RpbPair', '10': 'indexes'},
    const {'1': 'deleted', '3': 11, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'ttl', '3': 12, '4': 1, '5': 13, '10': 'ttl'},
  ],
};

const RpbLink$json = const {
  '1': 'RpbLink',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 1, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'tag', '3': 3, '4': 1, '5': 12, '10': 'tag'},
  ],
};

const RpbCounterUpdateReq$json = const {
  '1': 'RpbCounterUpdateReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'amount', '3': 3, '4': 2, '5': 18, '10': 'amount'},
    const {'1': 'w', '3': 4, '4': 1, '5': 13, '10': 'w'},
    const {'1': 'dw', '3': 5, '4': 1, '5': 13, '10': 'dw'},
    const {'1': 'pw', '3': 6, '4': 1, '5': 13, '10': 'pw'},
    const {'1': 'returnvalue', '3': 7, '4': 1, '5': 8, '10': 'returnvalue'},
  ],
};

const RpbCounterUpdateResp$json = const {
  '1': 'RpbCounterUpdateResp',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 18, '10': 'value'},
  ],
};

const RpbCounterGetReq$json = const {
  '1': 'RpbCounterGetReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'r', '3': 3, '4': 1, '5': 13, '10': 'r'},
    const {'1': 'pr', '3': 4, '4': 1, '5': 13, '10': 'pr'},
    const {'1': 'basic_quorum', '3': 5, '4': 1, '5': 8, '10': 'basicQuorum'},
    const {'1': 'notfound_ok', '3': 6, '4': 1, '5': 8, '10': 'notfoundOk'},
  ],
};

const RpbCounterGetResp$json = const {
  '1': 'RpbCounterGetResp',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 18, '10': 'value'},
  ],
};

const RpbGetBucketKeyPreflistReq$json = const {
  '1': 'RpbGetBucketKeyPreflistReq',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 2, '5': 12, '10': 'key'},
    const {'1': 'type', '3': 3, '4': 1, '5': 12, '10': 'type'},
  ],
};

const RpbGetBucketKeyPreflistResp$json = const {
  '1': 'RpbGetBucketKeyPreflistResp',
  '2': const [
    const {'1': 'preflist', '3': 1, '4': 3, '5': 11, '6': '.RpbBucketKeyPreflistItem', '10': 'preflist'},
  ],
};

const RpbBucketKeyPreflistItem$json = const {
  '1': 'RpbBucketKeyPreflistItem',
  '2': const [
    const {'1': 'partition', '3': 1, '4': 2, '5': 3, '10': 'partition'},
    const {'1': 'node', '3': 2, '4': 2, '5': 12, '10': 'node'},
    const {'1': 'primary', '3': 3, '4': 2, '5': 8, '10': 'primary'},
  ],
};

const RpbCoverageReq$json = const {
  '1': 'RpbCoverageReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 12, '10': 'type'},
    const {'1': 'bucket', '3': 2, '4': 2, '5': 12, '10': 'bucket'},
    const {'1': 'min_partitions', '3': 3, '4': 1, '5': 13, '10': 'minPartitions'},
    const {'1': 'replace_cover', '3': 4, '4': 1, '5': 12, '10': 'replaceCover'},
    const {'1': 'unavailable_cover', '3': 5, '4': 3, '5': 12, '10': 'unavailableCover'},
  ],
};

const RpbCoverageResp$json = const {
  '1': 'RpbCoverageResp',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.RpbCoverageEntry', '10': 'entries'},
  ],
};

const RpbCoverageEntry$json = const {
  '1': 'RpbCoverageEntry',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 2, '5': 12, '10': 'ip'},
    const {'1': 'port', '3': 2, '4': 2, '5': 13, '10': 'port'},
    const {'1': 'keyspace_desc', '3': 3, '4': 1, '5': 12, '10': 'keyspaceDesc'},
    const {'1': 'cover_context', '3': 4, '4': 2, '5': 12, '10': 'coverContext'},
  ],
};

