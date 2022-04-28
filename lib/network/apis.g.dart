// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiBanner implements ApiBanner {
  _ApiBanner(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.client.macbro.uz/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseBanner> getBanners() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseBanner>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/banner',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseBanner.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseCategory> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseCategory>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/category',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseCategory.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseProductSection> getProductSections() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseProductSection>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/featured-list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseProductSection.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}