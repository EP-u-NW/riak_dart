///
//  Generated code. Do not modify.
//  source: riak_search.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const RpbSearchDoc$json = const {
  '1': 'RpbSearchDoc',
  '2': const [
    const {'1': 'fields', '3': 1, '4': 3, '5': 11, '6': '.RpbPair', '10': 'fields'},
  ],
};

const RpbSearchQueryReq$json = const {
  '1': 'RpbSearchQueryReq',
  '2': const [
    const {'1': 'q', '3': 1, '4': 2, '5': 12, '10': 'q'},
    const {'1': 'index', '3': 2, '4': 2, '5': 12, '10': 'index'},
    const {'1': 'rows', '3': 3, '4': 1, '5': 13, '10': 'rows'},
    const {'1': 'start', '3': 4, '4': 1, '5': 13, '10': 'start'},
    const {'1': 'sort', '3': 5, '4': 1, '5': 12, '10': 'sort'},
    const {'1': 'filter', '3': 6, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'df', '3': 7, '4': 1, '5': 12, '10': 'df'},
    const {'1': 'op', '3': 8, '4': 1, '5': 12, '10': 'op'},
    const {'1': 'fl', '3': 9, '4': 3, '5': 12, '10': 'fl'},
    const {'1': 'presort', '3': 10, '4': 1, '5': 12, '10': 'presort'},
  ],
};

const RpbSearchQueryResp$json = const {
  '1': 'RpbSearchQueryResp',
  '2': const [
    const {'1': 'docs', '3': 1, '4': 3, '5': 11, '6': '.RpbSearchDoc', '10': 'docs'},
    const {'1': 'max_score', '3': 2, '4': 1, '5': 2, '10': 'maxScore'},
    const {'1': 'num_found', '3': 3, '4': 1, '5': 13, '10': 'numFound'},
  ],
};

