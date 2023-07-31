//Generated code

part of 'full_documentation.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FullDocumentation extends FullDocumentation {
  _$FullDocumentation([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FullDocumentation;

  @override
  Future<Response<ExampleResponse>> _exampleGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/example');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<ExampleResponse, ExampleResponse>($request);
  }

  @override
  Future<Response<int>> _exampleDelete({String? cacheControl}) {
    final Uri $url = Uri.parse('/example');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<ExampleResponse>> _examplePost({
    String? cacheControl,
    required ExampleRequest? body,
  }) {
    final Uri $url = Uri.parse('/example');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<ExampleResponse, ExampleResponse>($request);
  }

  @override
  Future<Response<OrderListResponse>> _ordersGet({
    String? sort,
    bool? paginationWithCount,
    int? paginationPage,
    int? paginationPageSize,
    int? paginationStart,
    int? paginationLimit,
    String? fields,
    String? populate,
    Object? filters,
    String? locale,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/orders');
    final Map<String, dynamic> $params = <String, dynamic>{
      'sort': sort,
      'pagination[withCount]': paginationWithCount,
      'pagination[page]': paginationPage,
      'pagination[pageSize]': paginationPageSize,
      'pagination[start]': paginationStart,
      'pagination[limit]': paginationLimit,
      'fields': fields,
      'populate': populate,
      'filters': filters,
      'locale': locale,
    };
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<OrderListResponse, OrderListResponse>($request);
  }

  @override
  Future<Response<OrderResponse>> _ordersPost({
    String? cacheControl,
    required OrderRequest? body,
  }) {
    final Uri $url = Uri.parse('/orders');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderResponse, OrderResponse>($request);
  }

  @override
  Future<Response<OrderResponse>> _ordersIdGet({
    required num? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/orders/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<OrderResponse, OrderResponse>($request);
  }

  @override
  Future<Response<OrderResponse>> _ordersIdPut({
    required num? id,
    String? cacheControl,
    required OrderRequest? body,
  }) {
    final Uri $url = Uri.parse('/orders/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OrderResponse, OrderResponse>($request);
  }

  @override
  Future<Response<int>> _ordersIdDelete({
    required num? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/orders/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<TestListResponse>> _testsGet({
    String? sort,
    bool? paginationWithCount,
    int? paginationPage,
    int? paginationPageSize,
    int? paginationStart,
    int? paginationLimit,
    String? fields,
    String? populate,
    Object? filters,
    String? locale,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/tests');
    final Map<String, dynamic> $params = <String, dynamic>{
      'sort': sort,
      'pagination[withCount]': paginationWithCount,
      'pagination[page]': paginationPage,
      'pagination[pageSize]': paginationPageSize,
      'pagination[start]': paginationStart,
      'pagination[limit]': paginationLimit,
      'fields': fields,
      'populate': populate,
      'filters': filters,
      'locale': locale,
    };
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<TestListResponse, TestListResponse>($request);
  }

  @override
  Future<Response<TestResponse>> _testsPost({
    String? cacheControl,
    required TestRequest? body,
  }) {
    final Uri $url = Uri.parse('/tests');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TestResponse, TestResponse>($request);
  }

  @override
  Future<Response<TestResponse>> _testsIdGet({
    required num? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/tests/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<TestResponse, TestResponse>($request);
  }

  @override
  Future<Response<TestResponse>> _testsIdPut({
    required num? id,
    String? cacheControl,
    required TestRequest? body,
  }) {
    final Uri $url = Uri.parse('/tests/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<TestResponse, TestResponse>($request);
  }

  @override
  Future<Response<int>> _testsIdDelete({
    required num? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/tests/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<UploadFile>>> _uploadPost({
    String? cacheControl,
    String? path,
    String? refId,
    String? ref,
    String? field,
    required List<dynamic>? files,
  }) {
    final Uri $url = Uri.parse('/upload');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValue<String?>(
        'path',
        path,
      ),
      PartValue<String?>(
        'refId',
        refId,
      ),
      PartValue<String?>(
        'ref',
        ref,
      ),
      PartValue<String?>(
        'field',
        field,
      ),
      PartValue<List<dynamic>?>(
        'files',
        files,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      headers: $headers,
    );
    return client.send<List<UploadFile>, UploadFile>($request);
  }

  @override
  Future<Response<List<UploadFile>>> _uploadIdIdPost({
    required String? id,
    String? cacheControl,
    Object? fileInfo,
    String? files,
  }) {
    final Uri $url = Uri.parse('/upload?id={id}');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValue<Object?>(
        'fileInfo',
        fileInfo,
      ),
      PartValueFile<String?>(
        'files',
        files,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<UploadFile>, UploadFile>($request);
  }

  @override
  Future<Response<List<UploadFile>>> _uploadFilesGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/upload/files');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<UploadFile>, UploadFile>($request);
  }

  @override
  Future<Response<UploadFile>> _uploadFilesIdGet({
    required String? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/upload/files/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UploadFile, UploadFile>($request);
  }

  @override
  Future<Response<UploadFile>> _uploadFilesIdDelete({
    required String? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/upload/files/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UploadFile, UploadFile>($request);
  }

  @override
  Future<Response<dynamic>> _connectProviderGet({
    required String? provider,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/connect/${provider}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UsersPermissionsUserRegistration>> _authLocalPost({
    String? cacheControl,
    required AuthLocalPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/local');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UsersPermissionsUserRegistration,
        UsersPermissionsUserRegistration>($request);
  }

  @override
  Future<Response<UsersPermissionsUserRegistration>> _authLocalRegisterPost({
    String? cacheControl,
    required AuthLocalRegisterPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/local/register');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UsersPermissionsUserRegistration,
        UsersPermissionsUserRegistration>($request);
  }

  @override
  Future<Response<UsersPermissionsUserRegistration>> _authProviderCallbackGet({
    required String? provider,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/auth/${provider}/callback');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UsersPermissionsUserRegistration,
        UsersPermissionsUserRegistration>($request);
  }

  @override
  Future<Response<Object>> _authForgotPasswordPost({
    String? cacheControl,
    required AuthForgotPasswordPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/forgot-password');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<UsersPermissionsUserRegistration>> _authResetPasswordPost({
    String? cacheControl,
    required AuthResetPasswordPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/reset-password');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UsersPermissionsUserRegistration,
        UsersPermissionsUserRegistration>($request);
  }

  @override
  Future<Response<UsersPermissionsUserRegistration>> _authChangePasswordPost({
    String? cacheControl,
    required AuthChangePasswordPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/change-password');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UsersPermissionsUserRegistration,
        UsersPermissionsUserRegistration>($request);
  }

  @override
  Future<Response<dynamic>> _authEmailConfirmationGet({
    String? confirmation,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/auth/email-confirmation');
    final Map<String, dynamic> $params = <String, dynamic>{
      'confirmation': confirmation
    };
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _authSendEmailConfirmationPost({
    String? cacheControl,
    required AuthSendEmailConfirmationPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/auth/send-email-confirmation');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsPermissionsGet(
      {String? cacheControl}) {
    final Uri $url = Uri.parse('/users-permissions/permissions');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsRolesGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/users-permissions/roles');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsRolesPost({
    String? cacheControl,
    required UsersPermissionsRoleRequest$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/users-permissions/roles');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsRolesIdGet({
    required String? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/users-permissions/roles/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsRolesRolePut({
    required String? role,
    String? cacheControl,
    required UsersPermissionsRoleRequest$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/users-permissions/roles/${role}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _usersPermissionsRolesRoleDelete({
    required String? role,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/users-permissions/roles/${role}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<UsersPermissionsUser>>> _usersGet(
      {String? cacheControl}) {
    final Uri $url = Uri.parse('/users');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<List<UsersPermissionsUser>, UsersPermissionsUser>($request);
  }

  @override
  Future<Response<dynamic>> _usersPost({
    String? cacheControl,
    required UsersPost$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/users');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UsersPermissionsUser>> _usersIdGet({
    required String? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/users/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UsersPermissionsUser, UsersPermissionsUser>($request);
  }

  @override
  Future<Response<dynamic>> _usersIdPut({
    required String? id,
    String? cacheControl,
    required UsersIdPut$RequestBody? body,
  }) {
    final Uri $url = Uri.parse('/users/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _usersIdDelete({
    required String? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/users/${id}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UsersPermissionsUser>> _usersMeGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/users/me');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UsersPermissionsUser, UsersPermissionsUser>($request);
  }

  @override
  Future<Response<num>> _usersCountGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/users/count');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<num, num>($request);
  }
}
