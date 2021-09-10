define(['dart_sdk', 'packages/string_scanner/src/eager_span_scanner', 'packages/source_span/source_span', 'packages/collection/src/canonicalized_map', 'packages/typed_data/src/typed_buffer'], (function load__packages__http_parser__http_parser(dart_sdk, packages__string_scanner__src__eager_span_scanner, packages__source_span__source_span, packages__collection__src__canonicalized_map, packages__typed_data__src__typed_buffer) {
  'use strict';
  const core = dart_sdk.core;
  const _interceptors = dart_sdk._interceptors;
  const collection = dart_sdk.collection;
  const _js_helper = dart_sdk._js_helper;
  const convert = dart_sdk.convert;
  const _native_typed_data = dart_sdk._native_typed_data;
  const async = dart_sdk.async;
  const _internal = dart_sdk._internal;
  const math = dart_sdk.math;
  const typed_data = dart_sdk.typed_data;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const string_scanner = packages__string_scanner__src__eager_span_scanner.src__string_scanner;
  const span_exception = packages__source_span__source_span.src__span_exception;
  const canonicalized_map = packages__collection__src__canonicalized_map.src__canonicalized_map;
  const typed_buffer = packages__typed_data__src__typed_buffer.src__typed_buffer;
  var scan = Object.create(dart.library);
  var authentication_challenge = Object.create(dart.library);
  var utils = Object.create(dart.library);
  var case_insensitive_map = Object.create(dart.library);
  var media_type = Object.create(dart.library);
  var http_date = Object.create(dart.library);
  var chunked_coding = Object.create(dart.library);
  var encoder = Object.create(dart.library);
  var decoder = Object.create(dart.library);
  var http_parser = Object.create(dart.library);
  var $add = dartx.add;
  var $substring = dartx.substring;
  var $replaceAllMapped = dartx.replaceAllMapped;
  var $_set = dartx._set;
  var $toLowerCase = dartx.toLowerCase;
  var $contains = dartx.contains;
  var $split = dartx.split;
  var $length = dartx.length;
  var $_get = dartx._get;
  var $addAll = dartx.addAll;
  var $forEach = dartx.forEach;
  var $toString = dartx.toString;
  var $indexOf = dartx.indexOf;
  var $toRadixString = dartx.toRadixString;
  var $codeUnits = dartx.codeUnits;
  var $setRange = dartx.setRange;
  var $_equals = dartx._equals;
  var $isNotEmpty = dartx.isNotEmpty;
  var $asUint8List = dartx.asUint8List;
  var $toUpperCase = dartx.toUpperCase;
  dart._checkModuleNullSafetyMode(true);
  var T = {
    MatchToString: () => (T.MatchToString = dart.constFn(dart.fnType(core.String, [core.Match])))(),
    UnmodifiableMapViewOfString$String: () => (T.UnmodifiableMapViewOfString$String = dart.constFn(collection.UnmodifiableMapView$(core.String, core.String)))(),
    CaseInsensitiveMapOfString: () => (T.CaseInsensitiveMapOfString = dart.constFn(case_insensitive_map.CaseInsensitiveMap$(core.String)))(),
    ListOfAuthenticationChallenge: () => (T.ListOfAuthenticationChallenge = dart.constFn(core.List$(authentication_challenge.AuthenticationChallenge)))(),
    IdentityMapOfString$String: () => (T.IdentityMapOfString$String = dart.constFn(_js_helper.IdentityMap$(core.String, core.String)))(),
    VoidToAuthenticationChallenge: () => (T.VoidToAuthenticationChallenge = dart.constFn(dart.fnType(authentication_challenge.AuthenticationChallenge, [])))(),
    VoidToListOfAuthenticationChallenge: () => (T.VoidToListOfAuthenticationChallenge = dart.constFn(dart.fnType(T.ListOfAuthenticationChallenge(), [])))(),
    VoidTovoid: () => (T.VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))(),
    StringToString: () => (T.StringToString = dart.constFn(dart.fnType(core.String, [core.String])))(),
    VoidToMediaType: () => (T.VoidToMediaType = dart.constFn(dart.fnType(media_type.MediaType, [])))(),
    LinkedHashMapOfString$String: () => (T.LinkedHashMapOfString$String = dart.constFn(collection.LinkedHashMap$(core.String, core.String)))(),
    StringAndStringTovoid: () => (T.StringAndStringTovoid = dart.constFn(dart.fnType(dart.void, [core.String, core.String])))(),
    VoidToDateTime: () => (T.VoidToDateTime = dart.constFn(dart.fnType(core.DateTime, [])))(),
    ListOfint: () => (T.ListOfint = dart.constFn(core.List$(core.int)))(),
    SinkOfListOfint: () => (T.SinkOfListOfint = dart.constFn(core.Sink$(T.ListOfint())))(),
    JSArrayOfint: () => (T.JSArrayOfint = dart.constFn(_interceptors.JSArray$(core.int)))(),
    StreamControllerOfListOfint: () => (T.StreamControllerOfListOfint = dart.constFn(async.StreamController$(T.ListOfint())))(),
    intAndStringTovoid: () => (T.intAndStringTovoid = dart.constFn(dart.fnType(dart.void, [core.int, core.String])))()
  };
  const CT = Object.create({
    _: () => (C, CT)
  });
  dart.defineLazy(CT, {
    get C0() {
      return C[0] = dart.constList(["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"], core.String);
    },
    get C1() {
      return C[1] = dart.constList(["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], core.String);
    },
    get C2() {
      return C[2] = dart.const({
        __proto__: chunked_coding.ChunkedCodingCodec.prototype
      });
    },
    get C3() {
      return C[3] = dart.constList([], core.int);
    },
    get C4() {
      return C[4] = dart.const({
        __proto__: encoder.ChunkedCodingEncoder.prototype
      });
    },
    get C5() {
      return C[5] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "boundary"
      });
    },
    get C6() {
      return C[6] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "size"
      });
    },
    get C7() {
      return C[7] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "size before LF"
      });
    },
    get C8() {
      return C[8] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "body"
      });
    },
    get C9() {
      return C[9] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "body before CR"
      });
    },
    get C10() {
      return C[10] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "body before LF"
      });
    },
    get C11() {
      return C[11] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "end before CR"
      });
    },
    get C12() {
      return C[12] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "end before LF"
      });
    },
    get C13() {
      return C[13] = dart.const({
        __proto__: decoder._State.prototype,
        [_State__name]: "end"
      });
    },
    get C14() {
      return C[14] = dart.const({
        __proto__: decoder.ChunkedCodingDecoder.prototype
      });
    }
  }, false);
  var C = Array(15).fill(void 0);
  var I = [
    "package:http_parser/src/authentication_challenge.dart",
    "package:http_parser/src/case_insensitive_map.dart",
    "package:http_parser/src/media_type.dart",
    "package:http_parser/src/chunked_coding.dart",
    "package:http_parser/src/chunked_coding/encoder.dart",
    "package:http_parser/src/chunked_coding/decoder.dart"
  ];
  scan.parseList = function parseList(T, scanner, parseElement) {
    let result = _interceptors.JSArray$(T).of([]);
    while (scanner.scan(",")) {
      scanner.scan(scan.whitespace);
    }
    result[$add](parseElement());
    scanner.scan(scan.whitespace);
    while (scanner.scan(",")) {
      scanner.scan(scan.whitespace);
      if (scanner.matches(",") || scanner.isDone) continue;
      result[$add](parseElement());
      scanner.scan(scan.whitespace);
    }
    return result;
  };
  scan.expectQuotedString = function expectQuotedString(scanner, opts) {
    let name = opts && 'name' in opts ? opts.name : "quoted string";
    scanner.expect(scan._quotedString, {name: name});
    let string = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
    return string[$substring](1, string.length - 1)[$replaceAllMapped](scan._quotedPair, dart.fn(match => dart.nullCheck(match._get(1)), T.MatchToString()));
  };
  dart.defineLazy(scan, {
    /*scan.token*/get token() {
      return core.RegExp.new("[^()<>@,;:\"\\\\/[\\]?={} \\t\\x00-\\x1F\\x7F]+");
    },
    /*scan._lws*/get _lws() {
      return core.RegExp.new("(?:\\r\\n)?[ \\t]+");
    },
    /*scan._quotedString*/get _quotedString() {
      return core.RegExp.new("\"(?:[^\"\\x00-\\x1F\\x7F]|\\\\.)*\"");
    },
    /*scan._quotedPair*/get _quotedPair() {
      return core.RegExp.new("\\\\(.)");
    },
    /*scan.nonToken*/get nonToken() {
      return core.RegExp.new("[()<>@,;:\"\\\\/\\[\\]?={} \\t\\x00-\\x1F\\x7F]");
    },
    /*scan.whitespace*/get whitespace() {
      return core.RegExp.new("(?:" + scan._lws.pattern + ")*");
    }
  }, false);
  var scheme$ = dart.privateName(authentication_challenge, "AuthenticationChallenge.scheme");
  var parameters$ = dart.privateName(authentication_challenge, "AuthenticationChallenge.parameters");
  authentication_challenge.AuthenticationChallenge = class AuthenticationChallenge extends core.Object {
    get scheme() {
      return this[scheme$];
    }
    set scheme(value) {
      super.scheme = value;
    }
    get parameters() {
      return this[parameters$];
    }
    set parameters(value) {
      super.parameters = value;
    }
    static parseHeader(header) {
      return utils.wrapFormatException(T.ListOfAuthenticationChallenge(), "authentication header", header, dart.fn(() => {
        let scanner = new string_scanner.StringScanner.new(header);
        scanner.scan(scan.whitespace);
        let challenges = scan.parseList(authentication_challenge.AuthenticationChallenge, scanner, dart.fn(() => {
          let scheme = authentication_challenge.AuthenticationChallenge._scanScheme(scanner, {whitespaceName: "\" \" or \"=\""});
          let params = new (T.IdentityMapOfString$String()).new();
          while (scanner.scan(",")) {
            scanner.scan(scan.whitespace);
          }
          authentication_challenge.AuthenticationChallenge._scanAuthParam(scanner, params);
          let beforeComma = scanner.position;
          while (scanner.scan(",")) {
            scanner.scan(scan.whitespace);
            if (scanner.matches(",") || scanner.isDone) continue;
            scanner.expect(scan.token, {name: "a token"});
            let name = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
            scanner.scan(scan.whitespace);
            if (!scanner.scan("=")) {
              scanner.position = beforeComma;
              break;
            }
            scanner.scan(scan.whitespace);
            if (scanner.scan(scan.token)) {
              params[$_set](name, dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0)));
            } else {
              params[$_set](name, scan.expectQuotedString(scanner, {name: "a token or a quoted string"}));
            }
            scanner.scan(scan.whitespace);
            beforeComma = scanner.position;
          }
          return new authentication_challenge.AuthenticationChallenge.new(scheme, params);
        }, T.VoidToAuthenticationChallenge()));
        scanner.expectDone();
        return challenges;
      }, T.VoidToListOfAuthenticationChallenge()));
    }
    static parse(challenge) {
      return utils.wrapFormatException(authentication_challenge.AuthenticationChallenge, "authentication challenge", challenge, dart.fn(() => {
        let scanner = new string_scanner.StringScanner.new(challenge);
        scanner.scan(scan.whitespace);
        let scheme = authentication_challenge.AuthenticationChallenge._scanScheme(scanner);
        let params = new (T.IdentityMapOfString$String()).new();
        scan.parseList(dart.void, scanner, dart.fn(() => authentication_challenge.AuthenticationChallenge._scanAuthParam(scanner, params), T.VoidTovoid()));
        scanner.expectDone();
        return new authentication_challenge.AuthenticationChallenge.new(scheme, params);
      }, T.VoidToAuthenticationChallenge()));
    }
    static _scanScheme(scanner, opts) {
      let whitespaceName = opts && 'whitespaceName' in opts ? opts.whitespaceName : null;
      scanner.expect(scan.token, {name: "a token"});
      let scheme = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0))[$toLowerCase]();
      scanner.scan(scan.whitespace);
      if (scanner.lastMatch == null || !dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0))[$contains](" ")) {
        scanner.expect(" ", {name: whitespaceName});
      }
      return scheme;
    }
    static _scanAuthParam(scanner, params) {
      scanner.expect(scan.token, {name: "a token"});
      let name = dart.nullCheck(scanner.lastMatch)._get(0);
      scanner.scan(scan.whitespace);
      scanner.expect("=");
      scanner.scan(scan.whitespace);
      if (scanner.scan(scan.token)) {
        params[$_set](name, dart.nullCheck(scanner.lastMatch)._get(0));
      } else {
        params[$_set](name, scan.expectQuotedString(scanner, {name: "a token or a quoted string"}));
      }
      scanner.scan(scan.whitespace);
    }
  };
  (authentication_challenge.AuthenticationChallenge.new = function(scheme, parameters) {
    this[scheme$] = scheme;
    this[parameters$] = new (T.UnmodifiableMapViewOfString$String()).new(new (T.CaseInsensitiveMapOfString()).from(parameters));
    ;
  }).prototype = authentication_challenge.AuthenticationChallenge.prototype;
  dart.addTypeTests(authentication_challenge.AuthenticationChallenge);
  dart.addTypeCaches(authentication_challenge.AuthenticationChallenge);
  dart.setLibraryUri(authentication_challenge.AuthenticationChallenge, I[0]);
  dart.setFieldSignature(authentication_challenge.AuthenticationChallenge, () => ({
    __proto__: dart.getFields(authentication_challenge.AuthenticationChallenge.__proto__),
    scheme: dart.finalFieldType(core.String),
    parameters: dart.finalFieldType(core.Map$(core.String, core.String))
  }));
  utils.wrapFormatException = function wrapFormatException(T, name, value, body) {
    try {
      return body();
    } catch (e) {
      let ex = dart.getThrown(e);
      if (span_exception.SourceSpanFormatException.is(ex)) {
        let error = ex;
        dart.throw(new span_exception.SourceSpanFormatException.new("Invalid " + name + ": " + error.message, error.span, error.source));
      } else if (core.FormatException.is(ex)) {
        let error = ex;
        dart.throw(new core.FormatException.new("Invalid " + name + " \"" + value + "\": " + error.message, error.source, error.offset));
      } else
        throw e;
    }
  };
  const _is_CaseInsensitiveMap_default = Symbol('_is_CaseInsensitiveMap_default');
  case_insensitive_map.CaseInsensitiveMap$ = dart.generic(V => {
    class CaseInsensitiveMap extends canonicalized_map.CanonicalizedMap$(core.String, core.String, V) {}
    (CaseInsensitiveMap.new = function() {
      CaseInsensitiveMap.__proto__.new.call(this, dart.fn(key => key[$toLowerCase](), T.StringToString()));
      ;
    }).prototype = CaseInsensitiveMap.prototype;
    (CaseInsensitiveMap.from = function(other) {
      CaseInsensitiveMap.__proto__.from.call(this, other, dart.fn(key => key[$toLowerCase](), T.StringToString()));
      ;
    }).prototype = CaseInsensitiveMap.prototype;
    dart.addTypeTests(CaseInsensitiveMap);
    CaseInsensitiveMap.prototype[_is_CaseInsensitiveMap_default] = true;
    dart.addTypeCaches(CaseInsensitiveMap);
    dart.setLibraryUri(CaseInsensitiveMap, I[1]);
    return CaseInsensitiveMap;
  });
  case_insensitive_map.CaseInsensitiveMap = case_insensitive_map.CaseInsensitiveMap$();
  dart.addTypeTests(case_insensitive_map.CaseInsensitiveMap, _is_CaseInsensitiveMap_default);
  var type$ = dart.privateName(media_type, "MediaType.type");
  var subtype$ = dart.privateName(media_type, "MediaType.subtype");
  var parameters$0 = dart.privateName(media_type, "MediaType.parameters");
  media_type.MediaType = class MediaType extends core.Object {
    get type() {
      return this[type$];
    }
    set type(value) {
      super.type = value;
    }
    get subtype() {
      return this[subtype$];
    }
    set subtype(value) {
      super.subtype = value;
    }
    get parameters() {
      return this[parameters$0];
    }
    set parameters(value) {
      super.parameters = value;
    }
    get mimeType() {
      return this.type + "/" + this.subtype;
    }
    static parse(mediaType) {
      return utils.wrapFormatException(media_type.MediaType, "media type", mediaType, dart.fn(() => {
        let scanner = new string_scanner.StringScanner.new(mediaType);
        scanner.scan(scan.whitespace);
        scanner.expect(scan.token);
        let type = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
        scanner.expect("/");
        scanner.expect(scan.token);
        let subtype = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
        scanner.scan(scan.whitespace);
        let parameters = new (T.IdentityMapOfString$String()).new();
        while (scanner.scan(";")) {
          scanner.scan(scan.whitespace);
          scanner.expect(scan.token);
          let attribute = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
          scanner.expect("=");
          let value = null;
          if (scanner.scan(scan.token)) {
            value = dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0));
          } else {
            value = scan.expectQuotedString(scanner);
          }
          scanner.scan(scan.whitespace);
          parameters[$_set](attribute, value);
        }
        scanner.expectDone();
        return new media_type.MediaType.new(type, subtype, parameters);
      }, T.VoidToMediaType()));
    }
    change(opts) {
      let type = opts && 'type' in opts ? opts.type : null;
      let subtype = opts && 'subtype' in opts ? opts.subtype : null;
      let mimeType = opts && 'mimeType' in opts ? opts.mimeType : null;
      let parameters = opts && 'parameters' in opts ? opts.parameters : null;
      let clearParameters = opts && 'clearParameters' in opts ? opts.clearParameters : false;
      if (mimeType != null) {
        if (type != null) {
          dart.throw(new core.ArgumentError.new("You may not pass both [type] and [mimeType]."));
        } else if (subtype != null) {
          dart.throw(new core.ArgumentError.new("You may not pass both [subtype] and " + "[mimeType]."));
        }
        let segments = mimeType[$split]("/");
        if (segments[$length] !== 2) {
          dart.throw(new core.FormatException.new("Invalid mime type \"" + dart.str(mimeType) + "\"."));
        }
        type = segments[$_get](0);
        subtype = segments[$_get](1);
      }
      type == null ? type = this.type : null;
      subtype == null ? subtype = this.subtype : null;
      parameters == null ? parameters = new (T.IdentityMapOfString$String()).new() : null;
      if (!clearParameters) {
        let newParameters = parameters;
        parameters = T.LinkedHashMapOfString$String().from(this.parameters);
        parameters[$addAll](newParameters);
      }
      return new media_type.MediaType.new(type, subtype, parameters);
    }
    toString() {
      let t2;
      let buffer = (t2 = new core.StringBuffer.new(), (() => {
        t2.write(this.type);
        t2.write("/");
        t2.write(this.subtype);
        return t2;
      })());
      this.parameters[$forEach](dart.fn((attribute, value) => {
        let t2;
        buffer.write("; " + attribute + "=");
        if (scan.nonToken.hasMatch(value)) {
          t2 = buffer;
          (() => {
            t2.write("\"");
            t2.write(value[$replaceAllMapped](media_type._escapedChar, dart.fn(match => "\\" + dart.str(match._get(0)), T.MatchToString())));
            t2.write("\"");
            return t2;
          })();
        } else {
          buffer.write(value);
        }
      }, T.StringAndStringTovoid()));
      return buffer.toString();
    }
  };
  (media_type.MediaType.new = function(type, subtype, parameters = null) {
    this[type$] = type[$toLowerCase]();
    this[subtype$] = subtype[$toLowerCase]();
    this[parameters$0] = new (T.UnmodifiableMapViewOfString$String()).new(parameters == null ? new (T.IdentityMapOfString$String()).new() : new (T.CaseInsensitiveMapOfString()).from(parameters));
    ;
  }).prototype = media_type.MediaType.prototype;
  dart.addTypeTests(media_type.MediaType);
  dart.addTypeCaches(media_type.MediaType);
  dart.setMethodSignature(media_type.MediaType, () => ({
    __proto__: dart.getMethods(media_type.MediaType.__proto__),
    change: dart.fnType(media_type.MediaType, [], {clearParameters: core.bool, mimeType: dart.nullable(core.String), parameters: dart.nullable(core.Map$(core.String, core.String)), subtype: dart.nullable(core.String), type: dart.nullable(core.String)}, {})
  }));
  dart.setGetterSignature(media_type.MediaType, () => ({
    __proto__: dart.getGetters(media_type.MediaType.__proto__),
    mimeType: core.String
  }));
  dart.setLibraryUri(media_type.MediaType, I[2]);
  dart.setFieldSignature(media_type.MediaType, () => ({
    __proto__: dart.getFields(media_type.MediaType.__proto__),
    type: dart.finalFieldType(core.String),
    subtype: dart.finalFieldType(core.String),
    parameters: dart.finalFieldType(core.Map$(core.String, core.String))
  }));
  dart.defineExtensionMethods(media_type.MediaType, ['toString']);
  dart.defineLazy(media_type, {
    /*media_type._escapedChar*/get _escapedChar() {
      return core.RegExp.new("[\"\\x00-\\x1F\\x7F]");
    }
  }, false);
  http_date.formatHttpDate = function formatHttpDate(date) {
    let t2;
    date = date.toUtc();
    let buffer = (t2 = new core.StringBuffer.new(), (() => {
      t2.write(http_date._weekdays[$_get](date.weekday - 1));
      t2.write(", ");
      t2.write(date.day <= 9 ? "0" : "");
      t2.write(date.day[$toString]());
      t2.write(" ");
      t2.write(http_date._months[$_get](date.month - 1));
      t2.write(" ");
      t2.write(date.year[$toString]());
      t2.write(date.hour <= 9 ? " 0" : " ");
      t2.write(date.hour[$toString]());
      t2.write(date.minute <= 9 ? ":0" : ":");
      t2.write(date.minute[$toString]());
      t2.write(date.second <= 9 ? ":0" : ":");
      t2.write(date.second[$toString]());
      t2.write(" GMT");
      return t2;
    })());
    return buffer.toString();
  };
  http_date.parseHttpDate = function parseHttpDate(date) {
    return utils.wrapFormatException(core.DateTime, "HTTP date", date, dart.fn(() => {
      let scanner = new string_scanner.StringScanner.new(date);
      if (scanner.scan(http_date._longWeekdayRegExp)) {
        scanner.expect(", ");
        let day = http_date._parseInt(scanner, 2);
        scanner.expect("-");
        let month = http_date._parseMonth(scanner);
        scanner.expect("-");
        let year = 1900 + http_date._parseInt(scanner, 2);
        scanner.expect(" ");
        let time = http_date._parseTime(scanner);
        scanner.expect(" GMT");
        scanner.expectDone();
        return http_date._makeDateTime(year, month, day, time);
      }
      scanner.expect(http_date._shortWeekdayRegExp);
      if (scanner.scan(", ")) {
        let day = http_date._parseInt(scanner, 2);
        scanner.expect(" ");
        let month = http_date._parseMonth(scanner);
        scanner.expect(" ");
        let year = http_date._parseInt(scanner, 4);
        scanner.expect(" ");
        let time = http_date._parseTime(scanner);
        scanner.expect(" GMT");
        scanner.expectDone();
        return http_date._makeDateTime(year, month, day, time);
      }
      scanner.expect(" ");
      let month = http_date._parseMonth(scanner);
      scanner.expect(" ");
      let day = scanner.scan(" ") ? http_date._parseInt(scanner, 1) : http_date._parseInt(scanner, 2);
      scanner.expect(" ");
      let time = http_date._parseTime(scanner);
      scanner.expect(" ");
      let year = http_date._parseInt(scanner, 4);
      scanner.expectDone();
      return http_date._makeDateTime(year, month, day, time);
    }, T.VoidToDateTime()));
  };
  http_date._parseMonth = function _parseMonth(scanner) {
    scanner.expect(http_date._monthRegExp);
    return http_date._months[$indexOf](dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0))) + 1;
  };
  http_date._parseInt = function _parseInt(scanner, digits) {
    scanner.expect(http_date._digitRegExp);
    if (dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0)).length !== digits) {
      scanner.error("expected a " + dart.str(digits) + "-digit number.");
    }
    return core.int.parse(dart.nullCheck(dart.nullCheck(scanner.lastMatch)._get(0)));
  };
  http_date._parseTime = function _parseTime(scanner) {
    let hours = http_date._parseInt(scanner, 2);
    if (hours >= 24) scanner.error("hours may not be greater than 24.");
    scanner.expect(":");
    let minutes = http_date._parseInt(scanner, 2);
    if (minutes >= 60) scanner.error("minutes may not be greater than 60.");
    scanner.expect(":");
    let seconds = http_date._parseInt(scanner, 2);
    if (seconds >= 60) scanner.error("seconds may not be greater than 60.");
    return new core.DateTime.new(1, 1, 1, hours, minutes, seconds);
  };
  http_date._makeDateTime = function _makeDateTime(year, month, day, time) {
    let dateTime = new core.DateTime.utc(year, month, day, time.hour, time.minute, time.second);
    if (dateTime.month !== month) {
      dart.throw(new core.FormatException.new("invalid day '" + dart.str(day) + "' for month '" + dart.str(month) + "'."));
    }
    return dateTime;
  };
  dart.defineLazy(http_date, {
    /*http_date._weekdays*/get _weekdays() {
      return C[0] || CT.C0;
    },
    /*http_date._months*/get _months() {
      return C[1] || CT.C1;
    },
    /*http_date._shortWeekdayRegExp*/get _shortWeekdayRegExp() {
      return core.RegExp.new("Mon|Tue|Wed|Thu|Fri|Sat|Sun");
    },
    /*http_date._longWeekdayRegExp*/get _longWeekdayRegExp() {
      return core.RegExp.new("Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday");
    },
    /*http_date._monthRegExp*/get _monthRegExp() {
      return core.RegExp.new("Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec");
    },
    /*http_date._digitRegExp*/get _digitRegExp() {
      return core.RegExp.new("\\d+");
    }
  }, false);
  chunked_coding.ChunkedCodingCodec = class ChunkedCodingCodec extends convert.Codec$(core.List$(core.int), core.List$(core.int)) {
    get encoder() {
      return encoder.chunkedCodingEncoder;
    }
    get decoder() {
      return decoder.chunkedCodingDecoder;
    }
  };
  (chunked_coding.ChunkedCodingCodec.__ = function() {
    chunked_coding.ChunkedCodingCodec.__proto__.new.call(this);
    ;
  }).prototype = chunked_coding.ChunkedCodingCodec.prototype;
  dart.addTypeTests(chunked_coding.ChunkedCodingCodec);
  dart.addTypeCaches(chunked_coding.ChunkedCodingCodec);
  dart.setGetterSignature(chunked_coding.ChunkedCodingCodec, () => ({
    __proto__: dart.getGetters(chunked_coding.ChunkedCodingCodec.__proto__),
    encoder: encoder.ChunkedCodingEncoder,
    decoder: decoder.ChunkedCodingDecoder
  }));
  dart.setLibraryUri(chunked_coding.ChunkedCodingCodec, I[3]);
  dart.defineLazy(chunked_coding, {
    /*chunked_coding.chunkedCoding*/get chunkedCoding() {
      return C[2] || CT.C2;
    }
  }, false);
  encoder.ChunkedCodingEncoder = class ChunkedCodingEncoder extends convert.Converter$(core.List$(core.int), core.List$(core.int)) {
    convert(input) {
      T.ListOfint().as(input);
      return encoder._convert(input, 0, input[$length], {isLast: true});
    }
    startChunkedConversion(sink) {
      T.SinkOfListOfint().as(sink);
      return new encoder._Sink.new(sink);
    }
  };
  (encoder.ChunkedCodingEncoder.__ = function() {
    encoder.ChunkedCodingEncoder.__proto__.new.call(this);
    ;
  }).prototype = encoder.ChunkedCodingEncoder.prototype;
  dart.addTypeTests(encoder.ChunkedCodingEncoder);
  dart.addTypeCaches(encoder.ChunkedCodingEncoder);
  dart.setMethodSignature(encoder.ChunkedCodingEncoder, () => ({
    __proto__: dart.getMethods(encoder.ChunkedCodingEncoder.__proto__),
    convert: dart.fnType(core.List$(core.int), [dart.nullable(core.Object)]),
    startChunkedConversion: dart.fnType(convert.ByteConversionSink, [dart.nullable(core.Object)])
  }));
  dart.setLibraryUri(encoder.ChunkedCodingEncoder, I[4]);
  var _sink$ = dart.privateName(encoder, "_sink");
  encoder._Sink = class _Sink extends convert.ByteConversionSinkBase {
    add(chunk) {
      T.ListOfint().as(chunk);
      this[_sink$].add(encoder._convert(chunk, 0, chunk[$length]));
    }
    addSlice(chunk, start, end, isLast) {
      core.RangeError.checkValidRange(start, end, chunk[$length]);
      this[_sink$].add(encoder._convert(chunk, start, end, {isLast: isLast}));
      if (isLast) this[_sink$].close();
    }
    close() {
      this[_sink$].add(encoder._doneChunk);
      this[_sink$].close();
    }
  };
  (encoder._Sink.new = function(_sink) {
    this[_sink$] = _sink;
    encoder._Sink.__proto__.new.call(this);
    ;
  }).prototype = encoder._Sink.prototype;
  dart.addTypeTests(encoder._Sink);
  dart.addTypeCaches(encoder._Sink);
  dart.setMethodSignature(encoder._Sink, () => ({
    __proto__: dart.getMethods(encoder._Sink.__proto__),
    add: dart.fnType(dart.void, [dart.nullable(core.Object)]),
    close: dart.fnType(dart.void, [])
  }));
  dart.setLibraryUri(encoder._Sink, I[4]);
  dart.setFieldSignature(encoder._Sink, () => ({
    __proto__: dart.getFields(encoder._Sink.__proto__),
    [_sink$]: dart.finalFieldType(core.Sink$(core.List$(core.int)))
  }));
  encoder._convert = function _convert(bytes, start, end, opts) {
    let t2, t2$, t2$0, t2$1;
    let isLast = opts && 'isLast' in opts ? opts.isLast : false;
    if (end === start) return isLast ? encoder._doneChunk : C[3] || CT.C3;
    let size = end - start;
    let sizeInHex = size[$toRadixString](16);
    let footerSize = isLast ? encoder._doneChunk[$length] : 0;
    let list = _native_typed_data.NativeUint8List.new(sizeInHex.length + 4 + size + footerSize);
    list[$setRange](0, sizeInHex.length, sizeInHex[$codeUnits]);
    let cursor = sizeInHex.length;
    list[$_set]((t2 = cursor, cursor = t2 + 1, t2), 13);
    list[$_set]((t2$ = cursor, cursor = t2$ + 1, t2$), 10);
    list[$setRange](cursor, cursor + end - start, bytes, start);
    cursor = cursor + (end - start);
    list[$_set]((t2$0 = cursor, cursor = t2$0 + 1, t2$0), 13);
    list[$_set]((t2$1 = cursor, cursor = t2$1 + 1, t2$1), 10);
    if (isLast) {
      list[$setRange](list[$length] - footerSize, list[$length], encoder._doneChunk);
    }
    return list;
  };
  dart.defineLazy(encoder, {
    /*encoder.chunkedCodingEncoder*/get chunkedCodingEncoder() {
      return C[4] || CT.C4;
    },
    /*encoder._doneChunk*/get _doneChunk() {
      return _native_typed_data.NativeUint8List.fromList(T.JSArrayOfint().of([48, 13, 10, 13, 10]));
    }
  }, false);
  var _decode = dart.privateName(decoder, "_decode");
  var _state = dart.privateName(decoder, "_state");
  decoder.ChunkedCodingDecoder = class ChunkedCodingDecoder extends convert.Converter$(core.List$(core.int), core.List$(core.int)) {
    convert(input) {
      T.ListOfint().as(input);
      let sink = new decoder._Sink.new(T.StreamControllerOfListOfint().new());
      let output = sink[_decode](input, 0, input[$length]);
      if (sink[_state][$_equals](decoder._State.end)) return output;
      dart.throw(new core.FormatException.new("Input ended unexpectedly.", input, input[$length]));
    }
    startChunkedConversion(sink) {
      T.SinkOfListOfint().as(sink);
      return new decoder._Sink.new(sink);
    }
  };
  (decoder.ChunkedCodingDecoder.__ = function() {
    decoder.ChunkedCodingDecoder.__proto__.new.call(this);
    ;
  }).prototype = decoder.ChunkedCodingDecoder.prototype;
  dart.addTypeTests(decoder.ChunkedCodingDecoder);
  dart.addTypeCaches(decoder.ChunkedCodingDecoder);
  dart.setMethodSignature(decoder.ChunkedCodingDecoder, () => ({
    __proto__: dart.getMethods(decoder.ChunkedCodingDecoder.__proto__),
    convert: dart.fnType(core.List$(core.int), [dart.nullable(core.Object)]),
    startChunkedConversion: dart.fnType(convert.ByteConversionSink, [dart.nullable(core.Object)])
  }));
  dart.setLibraryUri(decoder.ChunkedCodingDecoder, I[5]);
  var ___Sink__size = dart.privateName(decoder, "_#_Sink#_size");
  var _sink$0 = dart.privateName(decoder, "_sink");
  var _size = dart.privateName(decoder, "_size");
  var _close = dart.privateName(decoder, "_close");
  var _digitForByte = dart.privateName(decoder, "_digitForByte");
  var _State__name = dart.privateName(decoder, "_State._name");
  decoder._Sink = class _Sink extends convert.ByteConversionSinkBase {
    get [_size]() {
      let t2;
      t2 = this[___Sink__size];
      return t2 == null ? dart.throw(new _internal.LateError.fieldNI("_size")) : t2;
    }
    set [_size](t2) {
      this[___Sink__size] = t2;
    }
    add(chunk) {
      T.ListOfint().as(chunk);
      return this.addSlice(chunk, 0, chunk[$length], false);
    }
    addSlice(chunk, start, end, isLast) {
      core.RangeError.checkValidRange(start, end, chunk[$length]);
      let output = this[_decode](chunk, start, end);
      if (output[$isNotEmpty]) this[_sink$0].add(output);
      if (isLast) this[_close](chunk, end);
    }
    close() {
      return this[_close]();
    }
    [_close](chunk = null, index = null) {
      if (!this[_state][$_equals](decoder._State.end)) {
        dart.throw(new core.FormatException.new("Input ended unexpectedly.", chunk, index));
      }
      this[_sink$0].close();
    }
    [_decode](bytes, start, end) {
      function assertCurrentChar(char, name) {
        if (bytes[$_get](start) !== char) {
          dart.throw(new core.FormatException.new("Expected " + name + ".", bytes, start));
        }
      }
      dart.fn(assertCurrentChar, T.intAndStringTovoid());
      let buffer = new typed_buffer.Uint8Buffer.new();
      while (start !== end) {
        switch (this[_state]) {
          case C[5] || CT.C5:
          {
            this[_size] = this[_digitForByte](bytes, start);
            this[_state] = decoder._State.size;
            start = start + 1;
            break;
          }
          case C[6] || CT.C6:
          {
            if (bytes[$_get](start) === 13) {
              this[_state] = decoder._State.sizeBeforeLF;
            } else {
              this[_size] = (this[_size] << 4 >>> 0) + this[_digitForByte](bytes, start);
            }
            start = start + 1;
            break;
          }
          case C[7] || CT.C7:
          {
            assertCurrentChar(10, "LF");
            this[_state] = this[_size] === 0 ? decoder._State.endBeforeCR : decoder._State.body;
            start = start + 1;
            break;
          }
          case C[8] || CT.C8:
          {
            let chunkEnd = math.min(core.int, end, start + this[_size]);
            buffer.addAll(bytes, start, chunkEnd);
            this[_size] = this[_size] - (chunkEnd - start);
            start = chunkEnd;
            if (this[_size] === 0) this[_state] = decoder._State.bodyBeforeCR;
            break;
          }
          case C[9] || CT.C9:
          {
            assertCurrentChar(13, "CR");
            this[_state] = decoder._State.bodyBeforeLF;
            start = start + 1;
            break;
          }
          case C[10] || CT.C10:
          {
            assertCurrentChar(10, "LF");
            this[_state] = decoder._State.boundary;
            start = start + 1;
            break;
          }
          case C[11] || CT.C11:
          {
            assertCurrentChar(13, "CR");
            this[_state] = decoder._State.endBeforeLF;
            start = start + 1;
            break;
          }
          case C[12] || CT.C12:
          {
            assertCurrentChar(10, "LF");
            this[_state] = decoder._State.end;
            start = start + 1;
            break;
          }
          case C[13] || CT.C13:
          {
            dart.throw(new core.FormatException.new("Expected no more data.", bytes, start));
          }
        }
      }
      return buffer.buffer[$asUint8List](0, buffer.length);
    }
    [_digitForByte](bytes, index) {
      let byte = bytes[$_get](index);
      let digit = (48 ^ byte) >>> 0;
      if (digit <= 9) {
        if (digit >= 0) return digit;
      } else {
        let letter = (32 | byte) >>> 0;
        if (97 <= letter && letter <= 102) return letter - 97 + 10;
      }
      dart.throw(new core.FormatException.new("Invalid hexadecimal byte 0x" + byte[$toRadixString](16)[$toUpperCase]() + ".", bytes, index));
    }
  };
  (decoder._Sink.new = function(_sink) {
    this[_state] = decoder._State.boundary;
    this[___Sink__size] = null;
    this[_sink$0] = _sink;
    decoder._Sink.__proto__.new.call(this);
    ;
  }).prototype = decoder._Sink.prototype;
  dart.addTypeTests(decoder._Sink);
  dart.addTypeCaches(decoder._Sink);
  dart.setMethodSignature(decoder._Sink, () => ({
    __proto__: dart.getMethods(decoder._Sink.__proto__),
    add: dart.fnType(dart.void, [dart.nullable(core.Object)]),
    close: dart.fnType(dart.void, []),
    [_close]: dart.fnType(dart.void, [], [dart.nullable(core.List$(core.int)), dart.nullable(core.int)]),
    [_decode]: dart.fnType(typed_data.Uint8List, [core.List$(core.int), core.int, core.int]),
    [_digitForByte]: dart.fnType(core.int, [core.List$(core.int), core.int])
  }));
  dart.setGetterSignature(decoder._Sink, () => ({
    __proto__: dart.getGetters(decoder._Sink.__proto__),
    [_size]: core.int
  }));
  dart.setSetterSignature(decoder._Sink, () => ({
    __proto__: dart.getSetters(decoder._Sink.__proto__),
    [_size]: core.int
  }));
  dart.setLibraryUri(decoder._Sink, I[5]);
  dart.setFieldSignature(decoder._Sink, () => ({
    __proto__: dart.getFields(decoder._Sink.__proto__),
    [_sink$0]: dart.finalFieldType(core.Sink$(core.List$(core.int))),
    [_state]: dart.fieldType(decoder._State),
    [___Sink__size]: dart.fieldType(dart.nullable(core.int))
  }));
  var _name = dart.privateName(decoder, "_name");
  const _name$ = _State__name;
  decoder._State = class _State extends core.Object {
    get [_name]() {
      return this[_name$];
    }
    set [_name](value) {
      super[_name] = value;
    }
    toString() {
      return this[_name];
    }
  };
  (decoder._State.__ = function(_name) {
    this[_name$] = _name;
    ;
  }).prototype = decoder._State.prototype;
  dart.addTypeTests(decoder._State);
  dart.addTypeCaches(decoder._State);
  dart.setLibraryUri(decoder._State, I[5]);
  dart.setFieldSignature(decoder._State, () => ({
    __proto__: dart.getFields(decoder._State.__proto__),
    [_name]: dart.finalFieldType(core.String)
  }));
  dart.defineExtensionMethods(decoder._State, ['toString']);
  dart.defineLazy(decoder._State, {
    /*decoder._State.boundary*/get boundary() {
      return C[5] || CT.C5;
    },
    /*decoder._State.size*/get size() {
      return C[6] || CT.C6;
    },
    /*decoder._State.sizeBeforeLF*/get sizeBeforeLF() {
      return C[7] || CT.C7;
    },
    /*decoder._State.body*/get body() {
      return C[8] || CT.C8;
    },
    /*decoder._State.bodyBeforeCR*/get bodyBeforeCR() {
      return C[9] || CT.C9;
    },
    /*decoder._State.bodyBeforeLF*/get bodyBeforeLF() {
      return C[10] || CT.C10;
    },
    /*decoder._State.endBeforeCR*/get endBeforeCR() {
      return C[11] || CT.C11;
    },
    /*decoder._State.endBeforeLF*/get endBeforeLF() {
      return C[12] || CT.C12;
    },
    /*decoder._State.end*/get end() {
      return C[13] || CT.C13;
    }
  }, false);
  dart.defineLazy(decoder, {
    /*decoder.chunkedCodingDecoder*/get chunkedCodingDecoder() {
      return C[14] || CT.C14;
    }
  }, false);
  dart.trackLibraries("packages/http_parser/http_parser", {
    "package:http_parser/src/scan.dart": scan,
    "package:http_parser/src/authentication_challenge.dart": authentication_challenge,
    "package:http_parser/src/utils.dart": utils,
    "package:http_parser/src/case_insensitive_map.dart": case_insensitive_map,
    "package:http_parser/src/media_type.dart": media_type,
    "package:http_parser/src/http_date.dart": http_date,
    "package:http_parser/src/chunked_coding.dart": chunked_coding,
    "package:http_parser/src/chunked_coding/encoder.dart": encoder,
    "package:http_parser/src/chunked_coding/decoder.dart": decoder,
    "package:http_parser/http_parser.dart": http_parser
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["src/scan.dart","src/authentication_challenge.dart","src/utils.dart","src/case_insensitive_map.dart","src/media_type.dart","src/http_date.dart","src/chunked_coding.dart","src/chunked_coding/encoder.dart","src/chunked_coding/decoder.dart"],"names":[],"mappings":"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","file":"http_parser.sound.ddc.js"}');
  // Exports:
  return {
    src__scan: scan,
    src__authentication_challenge: authentication_challenge,
    src__utils: utils,
    src__case_insensitive_map: case_insensitive_map,
    src__media_type: media_type,
    src__http_date: http_date,
    src__chunked_coding: chunked_coding,
    src__chunked_coding__encoder: encoder,
    src__chunked_coding__decoder: decoder,
    http_parser: http_parser
  };
}));

//# sourceMappingURL=http_parser.sound.ddc.js.map
