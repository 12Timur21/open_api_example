// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart' as chopper;
import 'full_documentation.enums.swagger.dart' as enums;
export 'full_documentation.enums.swagger.dart';

part 'full_documentation.swagger.chopper.dart';
part 'full_documentation.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class FullDocumentation extends ChopperService {
  static FullDocumentation create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$FullDocumentation(client);
    }

    final newClient = ChopperClient(
        services: [_$FullDocumentation()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$FullDocumentation(newClient);
  }

  ///
  Future<chopper.Response<ExampleResponse>> exampleGet({dynamic cacheControl}) {
    generatedMapping.putIfAbsent(
        ExampleResponse, () => ExampleResponse.fromJsonFactory);

    return _exampleGet(cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/example')
  Future<chopper.Response<ExampleResponse>> _exampleGet(
      {@Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<int>> exampleDelete({dynamic cacheControl}) {
    return _exampleDelete(cacheControl: cacheControl?.toString());
  }

  ///
  @Delete(path: '/example')
  Future<chopper.Response<int>> _exampleDelete(
      {@Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<ExampleResponse>> examplePost({
    dynamic cacheControl,
    required ExampleRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ExampleResponse, () => ExampleResponse.fromJsonFactory);

    return _examplePost(cacheControl: cacheControl?.toString(), body: body);
  }

  ///
  @Post(
    path: '/example',
    optionalBody: true,
  )
  Future<chopper.Response<ExampleResponse>> _examplePost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required ExampleRequest? body,
  });

  ///
  ///@param sort Sort by attributes ascending (asc) or descending (desc)
  ///@param pagination[withCount] Return page/pageSize (default: true)
  ///@param pagination[page] Page number (default: 0)
  ///@param pagination[pageSize] Page size (default: 25)
  ///@param pagination[start] Offset value (default: 0)
  ///@param pagination[limit] Number of entities to return (default: 25)
  ///@param fields Fields to return (ex: title,author)
  ///@param populate Relations to return
  ///@param filters Filters to apply
  ///@param locale Locale to apply
  Future<chopper.Response<OrderListResponse>> ordersGet({
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
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        OrderListResponse, () => OrderListResponse.fromJsonFactory);

    return _ordersGet(
        sort: sort,
        paginationWithCount: paginationWithCount,
        paginationPage: paginationPage,
        paginationPageSize: paginationPageSize,
        paginationStart: paginationStart,
        paginationLimit: paginationLimit,
        fields: fields,
        populate: populate,
        filters: filters,
        locale: locale,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param sort Sort by attributes ascending (asc) or descending (desc)
  ///@param pagination[withCount] Return page/pageSize (default: true)
  ///@param pagination[page] Page number (default: 0)
  ///@param pagination[pageSize] Page size (default: 25)
  ///@param pagination[start] Offset value (default: 0)
  ///@param pagination[limit] Number of entities to return (default: 25)
  ///@param fields Fields to return (ex: title,author)
  ///@param populate Relations to return
  ///@param filters Filters to apply
  ///@param locale Locale to apply
  @Get(path: '/orders')
  Future<chopper.Response<OrderListResponse>> _ordersGet({
    @Query('sort') String? sort,
    @Query('pagination[withCount]') bool? paginationWithCount,
    @Query('pagination[page]') int? paginationPage,
    @Query('pagination[pageSize]') int? paginationPageSize,
    @Query('pagination[start]') int? paginationStart,
    @Query('pagination[limit]') int? paginationLimit,
    @Query('fields') String? fields,
    @Query('populate') String? populate,
    @Query('filters') Object? filters,
    @Query('locale') String? locale,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<OrderResponse>> ordersPost({
    dynamic cacheControl,
    required OrderRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        OrderResponse, () => OrderResponse.fromJsonFactory);

    return _ordersPost(cacheControl: cacheControl?.toString(), body: body);
  }

  ///
  @Post(
    path: '/orders',
    optionalBody: true,
  )
  Future<chopper.Response<OrderResponse>> _ordersPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required OrderRequest? body,
  });

  ///
  ///@param id
  Future<chopper.Response<OrderResponse>> ordersIdGet({
    required num? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        OrderResponse, () => OrderResponse.fromJsonFactory);

    return _ordersIdGet(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Get(path: '/orders/{id}')
  Future<chopper.Response<OrderResponse>> _ordersIdGet({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param id
  Future<chopper.Response<OrderResponse>> ordersIdPut({
    required num? id,
    dynamic cacheControl,
    required OrderRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        OrderResponse, () => OrderResponse.fromJsonFactory);

    return _ordersIdPut(
        id: id, cacheControl: cacheControl?.toString(), body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/orders/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<OrderResponse>> _ordersIdPut({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required OrderRequest? body,
  });

  ///
  ///@param id
  Future<chopper.Response<int>> ordersIdDelete({
    required num? id,
    dynamic cacheControl,
  }) {
    return _ordersIdDelete(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Delete(path: '/orders/{id}')
  Future<chopper.Response<int>> _ordersIdDelete({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param sort Sort by attributes ascending (asc) or descending (desc)
  ///@param pagination[withCount] Return page/pageSize (default: true)
  ///@param pagination[page] Page number (default: 0)
  ///@param pagination[pageSize] Page size (default: 25)
  ///@param pagination[start] Offset value (default: 0)
  ///@param pagination[limit] Number of entities to return (default: 25)
  ///@param fields Fields to return (ex: title,author)
  ///@param populate Relations to return
  ///@param filters Filters to apply
  ///@param locale Locale to apply
  Future<chopper.Response<TestListResponse>> testsGet({
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
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        TestListResponse, () => TestListResponse.fromJsonFactory);

    return _testsGet(
        sort: sort,
        paginationWithCount: paginationWithCount,
        paginationPage: paginationPage,
        paginationPageSize: paginationPageSize,
        paginationStart: paginationStart,
        paginationLimit: paginationLimit,
        fields: fields,
        populate: populate,
        filters: filters,
        locale: locale,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param sort Sort by attributes ascending (asc) or descending (desc)
  ///@param pagination[withCount] Return page/pageSize (default: true)
  ///@param pagination[page] Page number (default: 0)
  ///@param pagination[pageSize] Page size (default: 25)
  ///@param pagination[start] Offset value (default: 0)
  ///@param pagination[limit] Number of entities to return (default: 25)
  ///@param fields Fields to return (ex: title,author)
  ///@param populate Relations to return
  ///@param filters Filters to apply
  ///@param locale Locale to apply
  @Get(path: '/tests')
  Future<chopper.Response<TestListResponse>> _testsGet({
    @Query('sort') String? sort,
    @Query('pagination[withCount]') bool? paginationWithCount,
    @Query('pagination[page]') int? paginationPage,
    @Query('pagination[pageSize]') int? paginationPageSize,
    @Query('pagination[start]') int? paginationStart,
    @Query('pagination[limit]') int? paginationLimit,
    @Query('fields') String? fields,
    @Query('populate') String? populate,
    @Query('filters') Object? filters,
    @Query('locale') String? locale,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<TestResponse>> testsPost({
    dynamic cacheControl,
    required TestRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        TestResponse, () => TestResponse.fromJsonFactory);

    return _testsPost(cacheControl: cacheControl?.toString(), body: body);
  }

  ///
  @Post(
    path: '/tests',
    optionalBody: true,
  )
  Future<chopper.Response<TestResponse>> _testsPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required TestRequest? body,
  });

  ///
  ///@param id
  Future<chopper.Response<TestResponse>> testsIdGet({
    required num? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        TestResponse, () => TestResponse.fromJsonFactory);

    return _testsIdGet(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Get(path: '/tests/{id}')
  Future<chopper.Response<TestResponse>> _testsIdGet({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param id
  Future<chopper.Response<TestResponse>> testsIdPut({
    required num? id,
    dynamic cacheControl,
    required TestRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        TestResponse, () => TestResponse.fromJsonFactory);

    return _testsIdPut(
        id: id, cacheControl: cacheControl?.toString(), body: body);
  }

  ///
  ///@param id
  @Put(
    path: '/tests/{id}',
    optionalBody: true,
  )
  Future<chopper.Response<TestResponse>> _testsIdPut({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required TestRequest? body,
  });

  ///
  ///@param id
  Future<chopper.Response<int>> testsIdDelete({
    required num? id,
    dynamic cacheControl,
  }) {
    return _testsIdDelete(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Delete(path: '/tests/{id}')
  Future<chopper.Response<int>> _testsIdDelete({
    @Path('id') required num? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  Future<chopper.Response<List<UploadFile>>> uploadPost({
    dynamic cacheControl,
    String? path,
    String? refId,
    String? ref,
    String? field,
    required List? files,
  }) {
    generatedMapping.putIfAbsent(UploadFile, () => UploadFile.fromJsonFactory);

    return _uploadPost(
        cacheControl: cacheControl?.toString(),
        path: path,
        refId: refId,
        ref: ref,
        field: field,
        files: files);
  }

  ///
  @Post(
    path: '/upload',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<List<UploadFile>>> _uploadPost({
    @Header('Cache-Control') String? cacheControl,
    @Part('path') String? path,
    @Part('refId') String? refId,
    @Part('ref') String? ref,
    @Part('field') String? field,
    @Part('files') required List? files,
  });

  ///
  ///@param id File id
  Future<chopper.Response<List<UploadFile>>> uploadIdIdPost({
    required String? id,
    dynamic cacheControl,
    Object? fileInfo,
    String? files,
  }) {
    generatedMapping.putIfAbsent(UploadFile, () => UploadFile.fromJsonFactory);

    return _uploadIdIdPost(
        id: id,
        cacheControl: cacheControl?.toString(),
        fileInfo: fileInfo,
        files: files);
  }

  ///
  ///@param id File id
  @Post(
    path: '/upload?id={id}',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<List<UploadFile>>> _uploadIdIdPost({
    @Query('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
    @Part('fileInfo') Object? fileInfo,
    @PartFile() String? files,
  });

  ///
  Future<chopper.Response<List<UploadFile>>> uploadFilesGet(
      {dynamic cacheControl}) {
    generatedMapping.putIfAbsent(UploadFile, () => UploadFile.fromJsonFactory);

    return _uploadFilesGet(cacheControl: cacheControl?.toString());
  }

  ///
  @Get(path: '/upload/files')
  Future<chopper.Response<List<UploadFile>>> _uploadFilesGet(
      {@Header('Cache-Control') String? cacheControl});

  ///
  ///@param id
  Future<chopper.Response<UploadFile>> uploadFilesIdGet({
    required String? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(UploadFile, () => UploadFile.fromJsonFactory);

    return _uploadFilesIdGet(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Get(path: '/upload/files/{id}')
  Future<chopper.Response<UploadFile>> _uploadFilesIdGet({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param id
  Future<chopper.Response<UploadFile>> uploadFilesIdDelete({
    required String? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(UploadFile, () => UploadFile.fromJsonFactory);

    return _uploadFilesIdDelete(id: id, cacheControl: cacheControl?.toString());
  }

  ///
  ///@param id
  @Delete(path: '/upload/files/{id}')
  Future<chopper.Response<UploadFile>> _uploadFilesIdDelete({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Login with a provider
  ///@param provider Provider name
  Future<chopper.Response> connectProviderGet({
    required String? provider,
    dynamic cacheControl,
  }) {
    return _connectProviderGet(
        provider: provider, cacheControl: cacheControl?.toString());
  }

  ///Login with a provider
  ///@param provider Provider name
  @Get(path: '/connect/{provider}')
  Future<chopper.Response> _connectProviderGet({
    @Path('provider') required String? provider,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Local login
  Future<chopper.Response<UsersPermissionsUserRegistration>> authLocalPost({
    dynamic cacheControl,
    required AuthLocalPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(UsersPermissionsUserRegistration,
        () => UsersPermissionsUserRegistration.fromJsonFactory);

    return _authLocalPost(cacheControl: cacheControl?.toString(), body: body);
  }

  ///Local login
  @Post(
    path: '/auth/local',
    optionalBody: true,
  )
  Future<chopper.Response<UsersPermissionsUserRegistration>> _authLocalPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthLocalPost$RequestBody? body,
  });

  ///Register a user
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      authLocalRegisterPost({
    dynamic cacheControl,
    required AuthLocalRegisterPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(UsersPermissionsUserRegistration,
        () => UsersPermissionsUserRegistration.fromJsonFactory);

    return _authLocalRegisterPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Register a user
  @Post(
    path: '/auth/local/register',
    optionalBody: true,
  )
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      _authLocalRegisterPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthLocalRegisterPost$RequestBody? body,
  });

  ///Default Callback from provider auth
  ///@param provider Provider name
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      authProviderCallbackGet({
    required String? provider,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(UsersPermissionsUserRegistration,
        () => UsersPermissionsUserRegistration.fromJsonFactory);

    return _authProviderCallbackGet(
        provider: provider, cacheControl: cacheControl?.toString());
  }

  ///Default Callback from provider auth
  ///@param provider Provider name
  @Get(path: '/auth/{provider}/callback')
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      _authProviderCallbackGet({
    @Path('provider') required String? provider,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Send rest password email
  Future<chopper.Response<Object>> authForgotPasswordPost({
    dynamic cacheControl,
    required AuthForgotPasswordPost$RequestBody? body,
  }) {
    return _authForgotPasswordPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Send rest password email
  @Post(
    path: '/auth/forgot-password',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _authForgotPasswordPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthForgotPasswordPost$RequestBody? body,
  });

  ///Rest user password
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      authResetPasswordPost({
    dynamic cacheControl,
    required AuthResetPasswordPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(UsersPermissionsUserRegistration,
        () => UsersPermissionsUserRegistration.fromJsonFactory);

    return _authResetPasswordPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Rest user password
  @Post(
    path: '/auth/reset-password',
    optionalBody: true,
  )
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      _authResetPasswordPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthResetPasswordPost$RequestBody? body,
  });

  ///Update user's own password
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      authChangePasswordPost({
    dynamic cacheControl,
    required AuthChangePasswordPost$RequestBody? body,
  }) {
    generatedMapping.putIfAbsent(UsersPermissionsUserRegistration,
        () => UsersPermissionsUserRegistration.fromJsonFactory);

    return _authChangePasswordPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Update user's own password
  @Post(
    path: '/auth/change-password',
    optionalBody: true,
  )
  Future<chopper.Response<UsersPermissionsUserRegistration>>
      _authChangePasswordPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthChangePasswordPost$RequestBody? body,
  });

  ///Confirm user email
  ///@param confirmation confirmation token received by email
  Future<chopper.Response> authEmailConfirmationGet({
    String? confirmation,
    dynamic cacheControl,
  }) {
    return _authEmailConfirmationGet(
        confirmation: confirmation, cacheControl: cacheControl?.toString());
  }

  ///Confirm user email
  ///@param confirmation confirmation token received by email
  @Get(path: '/auth/email-confirmation')
  Future<chopper.Response> _authEmailConfirmationGet({
    @Query('confirmation') String? confirmation,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Send confirmation email
  Future<chopper.Response<Object>> authSendEmailConfirmationPost({
    dynamic cacheControl,
    required AuthSendEmailConfirmationPost$RequestBody? body,
  }) {
    return _authSendEmailConfirmationPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Send confirmation email
  @Post(
    path: '/auth/send-email-confirmation',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _authSendEmailConfirmationPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthSendEmailConfirmationPost$RequestBody? body,
  });

  ///Get default generated permissions
  Future<chopper.Response<Object>> usersPermissionsPermissionsGet(
      {dynamic cacheControl}) {
    return _usersPermissionsPermissionsGet(
        cacheControl: cacheControl?.toString());
  }

  ///Get default generated permissions
  @Get(path: '/users-permissions/permissions')
  Future<chopper.Response<Object>> _usersPermissionsPermissionsGet(
      {@Header('Cache-Control') String? cacheControl});

  ///List roles
  Future<chopper.Response<Object>> usersPermissionsRolesGet(
      {dynamic cacheControl}) {
    return _usersPermissionsRolesGet(cacheControl: cacheControl?.toString());
  }

  ///List roles
  @Get(path: '/users-permissions/roles')
  Future<chopper.Response<Object>> _usersPermissionsRolesGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Create a role
  Future<chopper.Response<Object>> usersPermissionsRolesPost({
    dynamic cacheControl,
    required UsersPermissionsRoleRequest$RequestBody? body,
  }) {
    return _usersPermissionsRolesPost(
        cacheControl: cacheControl?.toString(), body: body);
  }

  ///Create a role
  @Post(
    path: '/users-permissions/roles',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _usersPermissionsRolesPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required UsersPermissionsRoleRequest$RequestBody? body,
  });

  ///Get a role
  ///@param id role Id
  Future<chopper.Response<Object>> usersPermissionsRolesIdGet({
    required String? id,
    dynamic cacheControl,
  }) {
    return _usersPermissionsRolesIdGet(
        id: id, cacheControl: cacheControl?.toString());
  }

  ///Get a role
  ///@param id role Id
  @Get(path: '/users-permissions/roles/{id}')
  Future<chopper.Response<Object>> _usersPermissionsRolesIdGet({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Update a role
  ///@param role role Id
  Future<chopper.Response<Object>> usersPermissionsRolesRolePut({
    required String? role,
    dynamic cacheControl,
    required UsersPermissionsRoleRequest$RequestBody? body,
  }) {
    return _usersPermissionsRolesRolePut(
        role: role, cacheControl: cacheControl?.toString(), body: body);
  }

  ///Update a role
  ///@param role role Id
  @Put(
    path: '/users-permissions/roles/{role}',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _usersPermissionsRolesRolePut({
    @Path('role') required String? role,
    @Header('Cache-Control') String? cacheControl,
    @Body() required UsersPermissionsRoleRequest$RequestBody? body,
  });

  ///Delete a role
  ///@param role role Id
  Future<chopper.Response<Object>> usersPermissionsRolesRoleDelete({
    required String? role,
    dynamic cacheControl,
  }) {
    return _usersPermissionsRolesRoleDelete(
        role: role, cacheControl: cacheControl?.toString());
  }

  ///Delete a role
  ///@param role role Id
  @Delete(path: '/users-permissions/roles/{role}')
  Future<chopper.Response<Object>> _usersPermissionsRolesRoleDelete({
    @Path('role') required String? role,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Get list of users
  Future<chopper.Response<List<UsersPermissionsUser>>> usersGet(
      {dynamic cacheControl}) {
    generatedMapping.putIfAbsent(
        UsersPermissionsUser, () => UsersPermissionsUser.fromJsonFactory);

    return _usersGet(cacheControl: cacheControl?.toString());
  }

  ///Get list of users
  @Get(path: '/users')
  Future<chopper.Response<List<UsersPermissionsUser>>> _usersGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Create a user
  Future<chopper.Response> usersPost({
    dynamic cacheControl,
    required UsersPost$RequestBody? body,
  }) {
    return _usersPost(cacheControl: cacheControl?.toString(), body: body);
  }

  ///Create a user
  @Post(
    path: '/users',
    optionalBody: true,
  )
  Future<chopper.Response> _usersPost({
    @Header('Cache-Control') String? cacheControl,
    @Body() required UsersPost$RequestBody? body,
  });

  ///Get a user
  ///@param id user Id
  Future<chopper.Response<UsersPermissionsUser>> usersIdGet({
    required String? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        UsersPermissionsUser, () => UsersPermissionsUser.fromJsonFactory);

    return _usersIdGet(id: id, cacheControl: cacheControl?.toString());
  }

  ///Get a user
  ///@param id user Id
  @Get(path: '/users/{id}')
  Future<chopper.Response<UsersPermissionsUser>> _usersIdGet({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Update a user
  ///@param id user Id
  Future<chopper.Response> usersIdPut({
    required String? id,
    dynamic cacheControl,
    required UsersIdPut$RequestBody? body,
  }) {
    return _usersIdPut(
        id: id, cacheControl: cacheControl?.toString(), body: body);
  }

  ///Update a user
  ///@param id user Id
  @Put(
    path: '/users/{id}',
    optionalBody: true,
  )
  Future<chopper.Response> _usersIdPut({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required UsersIdPut$RequestBody? body,
  });

  ///Delete a user
  ///@param id user Id
  Future<chopper.Response> usersIdDelete({
    required String? id,
    dynamic cacheControl,
  }) {
    return _usersIdDelete(id: id, cacheControl: cacheControl?.toString());
  }

  ///Delete a user
  ///@param id user Id
  @Delete(path: '/users/{id}')
  Future<chopper.Response> _usersIdDelete({
    @Path('id') required String? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Get authenticated user info
  Future<chopper.Response<UsersPermissionsUser>> usersMeGet(
      {dynamic cacheControl}) {
    generatedMapping.putIfAbsent(
        UsersPermissionsUser, () => UsersPermissionsUser.fromJsonFactory);

    return _usersMeGet(cacheControl: cacheControl?.toString());
  }

  ///Get authenticated user info
  @Get(path: '/users/me')
  Future<chopper.Response<UsersPermissionsUser>> _usersMeGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Get user count
  Future<chopper.Response<num>> usersCountGet({dynamic cacheControl}) {
    return _usersCountGet(cacheControl: cacheControl?.toString());
  }

  ///Get user count
  @Get(path: '/users/count')
  Future<chopper.Response<num>> _usersCountGet(
      {@Header('Cache-Control') String? cacheControl});
}

@JsonSerializable(explicitToJson: true)
class Error {
  Error({
    this.data,
    required this.error,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final dynamic data;
  @JsonKey(name: 'error', includeIfNull: false)
  final Error$Error error;
  static const fromJsonFactory = _$ErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({dynamic data, Error$Error? error}) {
    return Error(data: data ?? this.data, error: error ?? this.error);
  }

  Error copyWithWrapped({Wrapped<dynamic>? data, Wrapped<Error$Error>? error}) {
    return Error(
        data: (data != null ? data.value : this.data),
        error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class ExampleRequest {
  ExampleRequest({
    required this.data,
  });

  factory ExampleRequest.fromJson(Map<String, dynamic> json) =>
      _$ExampleRequestFromJson(json);

  static const toJsonFactory = _$ExampleRequestToJson;
  Map<String, dynamic> toJson() => _$ExampleRequestToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final ExampleRequest$Data data;
  static const fromJsonFactory = _$ExampleRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExampleRequest &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ExampleRequestExtension on ExampleRequest {
  ExampleRequest copyWith({ExampleRequest$Data? data}) {
    return ExampleRequest(data: data ?? this.data);
  }

  ExampleRequest copyWithWrapped({Wrapped<ExampleRequest$Data>? data}) {
    return ExampleRequest(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example {
  Example({
    this.title,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Example.fromJson(Map<String, dynamic> json) =>
      _$ExampleFromJson(json);

  static const toJsonFactory = _$ExampleToJson;
  Map<String, dynamic> toJson() => _$ExampleToJson(this);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'publishedAt', includeIfNull: false)
  final DateTime? publishedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Example$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Example$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$ExampleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $ExampleExtension on Example {
  Example copyWith(
      {String? title,
      String? description,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? publishedAt,
      Example$CreatedBy? createdBy,
      Example$UpdatedBy? updatedBy}) {
    return Example(
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        publishedAt: publishedAt ?? this.publishedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Example copyWithWrapped(
      {Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<DateTime?>? publishedAt,
      Wrapped<Example$CreatedBy?>? createdBy,
      Wrapped<Example$UpdatedBy?>? updatedBy}) {
    return Example(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        publishedAt:
            (publishedAt != null ? publishedAt.value : this.publishedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class ExampleResponseDataObject {
  ExampleResponseDataObject({
    this.id,
    this.attributes,
  });

  factory ExampleResponseDataObject.fromJson(Map<String, dynamic> json) =>
      _$ExampleResponseDataObjectFromJson(json);

  static const toJsonFactory = _$ExampleResponseDataObjectToJson;
  Map<String, dynamic> toJson() => _$ExampleResponseDataObjectToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Example? attributes;
  static const fromJsonFactory = _$ExampleResponseDataObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExampleResponseDataObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $ExampleResponseDataObjectExtension on ExampleResponseDataObject {
  ExampleResponseDataObject copyWith({double? id, Example? attributes}) {
    return ExampleResponseDataObject(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  ExampleResponseDataObject copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Example?>? attributes}) {
    return ExampleResponseDataObject(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class ExampleResponse {
  ExampleResponse({
    this.data,
    this.meta,
  });

  factory ExampleResponse.fromJson(Map<String, dynamic> json) =>
      _$ExampleResponseFromJson(json);

  static const toJsonFactory = _$ExampleResponseToJson;
  Map<String, dynamic> toJson() => _$ExampleResponseToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final ExampleResponseDataObject? data;
  @JsonKey(name: 'meta', includeIfNull: false)
  final Object? meta;
  static const fromJsonFactory = _$ExampleResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExampleResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ExampleResponseExtension on ExampleResponse {
  ExampleResponse copyWith({ExampleResponseDataObject? data, Object? meta}) {
    return ExampleResponse(data: data ?? this.data, meta: meta ?? this.meta);
  }

  ExampleResponse copyWithWrapped(
      {Wrapped<ExampleResponseDataObject?>? data, Wrapped<Object?>? meta}) {
    return ExampleResponse(
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderRequest {
  OrderRequest({
    required this.data,
  });

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);

  static const toJsonFactory = _$OrderRequestToJson;
  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final OrderRequest$Data data;
  static const fromJsonFactory = _$OrderRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderRequest &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $OrderRequestExtension on OrderRequest {
  OrderRequest copyWith({OrderRequest$Data? data}) {
    return OrderRequest(data: data ?? this.data);
  }

  OrderRequest copyWithWrapped({Wrapped<OrderRequest$Data>? data}) {
    return OrderRequest(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderListResponseDataItem {
  OrderListResponseDataItem({
    this.id,
    this.attributes,
  });

  factory OrderListResponseDataItem.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseDataItemFromJson(json);

  static const toJsonFactory = _$OrderListResponseDataItemToJson;
  Map<String, dynamic> toJson() => _$OrderListResponseDataItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order? attributes;
  static const fromJsonFactory = _$OrderListResponseDataItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderListResponseDataItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $OrderListResponseDataItemExtension on OrderListResponseDataItem {
  OrderListResponseDataItem copyWith({double? id, Order? attributes}) {
    return OrderListResponseDataItem(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  OrderListResponseDataItem copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Order?>? attributes}) {
    return OrderListResponseDataItem(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderListResponse {
  OrderListResponse({
    this.data,
    this.meta,
  });

  factory OrderListResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponseFromJson(json);

  static const toJsonFactory = _$OrderListResponseToJson;
  Map<String, dynamic> toJson() => _$OrderListResponseToJson(this);

  @JsonKey(
      name: 'data',
      includeIfNull: false,
      defaultValue: <OrderListResponseDataItem>[])
  final List<OrderListResponseDataItem>? data;
  @JsonKey(name: 'meta', includeIfNull: false)
  final OrderListResponse$Meta? meta;
  static const fromJsonFactory = _$OrderListResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderListResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $OrderListResponseExtension on OrderListResponse {
  OrderListResponse copyWith(
      {List<OrderListResponseDataItem>? data, OrderListResponse$Meta? meta}) {
    return OrderListResponse(data: data ?? this.data, meta: meta ?? this.meta);
  }

  OrderListResponse copyWithWrapped(
      {Wrapped<List<OrderListResponseDataItem>?>? data,
      Wrapped<OrderListResponse$Meta?>? meta}) {
    return OrderListResponse(
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  Order({
    this.title,
    this.description,
    this.price,
    this.isHidden,
    this.photo,
    this.status,
    this.uuid,
    this.location,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'price', includeIfNull: false)
  final double? price;
  @JsonKey(name: 'isHidden', includeIfNull: false)
  final bool? isHidden;
  @JsonKey(name: 'photo', includeIfNull: false)
  final Order$Photo? photo;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: orderStatusToJson,
    fromJson: orderStatusFromJson,
  )
  final enums.OrderStatus? status;
  @JsonKey(name: 'uuid', includeIfNull: false, defaultValue: '')
  final String? uuid;
  @JsonKey(name: 'location', includeIfNull: false)
  final dynamic location;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'publishedAt', includeIfNull: false)
  final DateTime? publishedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$OrderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {String? title,
      String? description,
      double? price,
      bool? isHidden,
      Order$Photo? photo,
      enums.OrderStatus? status,
      String? uuid,
      dynamic location,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? publishedAt,
      Order$CreatedBy? createdBy,
      Order$UpdatedBy? updatedBy}) {
    return Order(
        title: title ?? this.title,
        description: description ?? this.description,
        price: price ?? this.price,
        isHidden: isHidden ?? this.isHidden,
        photo: photo ?? this.photo,
        status: status ?? this.status,
        uuid: uuid ?? this.uuid,
        location: location ?? this.location,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        publishedAt: publishedAt ?? this.publishedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order copyWithWrapped(
      {Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<bool?>? isHidden,
      Wrapped<Order$Photo?>? photo,
      Wrapped<enums.OrderStatus?>? status,
      Wrapped<String?>? uuid,
      Wrapped<dynamic>? location,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<DateTime?>? publishedAt,
      Wrapped<Order$CreatedBy?>? createdBy,
      Wrapped<Order$UpdatedBy?>? updatedBy}) {
    return Order(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        isHidden: (isHidden != null ? isHidden.value : this.isHidden),
        photo: (photo != null ? photo.value : this.photo),
        status: (status != null ? status.value : this.status),
        uuid: (uuid != null ? uuid.value : this.uuid),
        location: (location != null ? location.value : this.location),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        publishedAt:
            (publishedAt != null ? publishedAt.value : this.publishedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderResponseDataObject {
  OrderResponseDataObject({
    this.id,
    this.attributes,
  });

  factory OrderResponseDataObject.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseDataObjectFromJson(json);

  static const toJsonFactory = _$OrderResponseDataObjectToJson;
  Map<String, dynamic> toJson() => _$OrderResponseDataObjectToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order? attributes;
  static const fromJsonFactory = _$OrderResponseDataObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderResponseDataObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $OrderResponseDataObjectExtension on OrderResponseDataObject {
  OrderResponseDataObject copyWith({double? id, Order? attributes}) {
    return OrderResponseDataObject(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  OrderResponseDataObject copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Order?>? attributes}) {
    return OrderResponseDataObject(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderResponse {
  OrderResponse({
    this.data,
    this.meta,
  });

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  static const toJsonFactory = _$OrderResponseToJson;
  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final OrderResponseDataObject? data;
  @JsonKey(name: 'meta', includeIfNull: false)
  final Object? meta;
  static const fromJsonFactory = _$OrderResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $OrderResponseExtension on OrderResponse {
  OrderResponse copyWith({OrderResponseDataObject? data, Object? meta}) {
    return OrderResponse(data: data ?? this.data, meta: meta ?? this.meta);
  }

  OrderResponse copyWithWrapped(
      {Wrapped<OrderResponseDataObject?>? data, Wrapped<Object?>? meta}) {
    return OrderResponse(
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class TestRequest {
  TestRequest({
    required this.data,
  });

  factory TestRequest.fromJson(Map<String, dynamic> json) =>
      _$TestRequestFromJson(json);

  static const toJsonFactory = _$TestRequestToJson;
  Map<String, dynamic> toJson() => _$TestRequestToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final TestRequest$Data data;
  static const fromJsonFactory = _$TestRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestRequest &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $TestRequestExtension on TestRequest {
  TestRequest copyWith({TestRequest$Data? data}) {
    return TestRequest(data: data ?? this.data);
  }

  TestRequest copyWithWrapped({Wrapped<TestRequest$Data>? data}) {
    return TestRequest(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class TestListResponseDataItem {
  TestListResponseDataItem({
    this.id,
    this.attributes,
  });

  factory TestListResponseDataItem.fromJson(Map<String, dynamic> json) =>
      _$TestListResponseDataItemFromJson(json);

  static const toJsonFactory = _$TestListResponseDataItemToJson;
  Map<String, dynamic> toJson() => _$TestListResponseDataItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test? attributes;
  static const fromJsonFactory = _$TestListResponseDataItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestListResponseDataItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $TestListResponseDataItemExtension on TestListResponseDataItem {
  TestListResponseDataItem copyWith({double? id, Test? attributes}) {
    return TestListResponseDataItem(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  TestListResponseDataItem copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Test?>? attributes}) {
    return TestListResponseDataItem(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class TestListResponse {
  TestListResponse({
    this.data,
    this.meta,
  });

  factory TestListResponse.fromJson(Map<String, dynamic> json) =>
      _$TestListResponseFromJson(json);

  static const toJsonFactory = _$TestListResponseToJson;
  Map<String, dynamic> toJson() => _$TestListResponseToJson(this);

  @JsonKey(
      name: 'data',
      includeIfNull: false,
      defaultValue: <TestListResponseDataItem>[])
  final List<TestListResponseDataItem>? data;
  @JsonKey(name: 'meta', includeIfNull: false)
  final TestListResponse$Meta? meta;
  static const fromJsonFactory = _$TestListResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestListResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $TestListResponseExtension on TestListResponse {
  TestListResponse copyWith(
      {List<TestListResponseDataItem>? data, TestListResponse$Meta? meta}) {
    return TestListResponse(data: data ?? this.data, meta: meta ?? this.meta);
  }

  TestListResponse copyWithWrapped(
      {Wrapped<List<TestListResponseDataItem>?>? data,
      Wrapped<TestListResponse$Meta?>? meta}) {
    return TestListResponse(
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class Test {
  Test({
    required this.media,
    required this.multiMedia,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

  static const toJsonFactory = _$TestToJson;
  Map<String, dynamic> toJson() => _$TestToJson(this);

  @JsonKey(name: 'Media', includeIfNull: false)
  final Test$Media media;
  @JsonKey(name: 'MultiMedia', includeIfNull: false)
  final Test$MultiMedia multiMedia;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'publishedAt', includeIfNull: false)
  final DateTime? publishedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$TestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.multiMedia, multiMedia) ||
                const DeepCollectionEquality()
                    .equals(other.multiMedia, multiMedia)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(multiMedia) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $TestExtension on Test {
  Test copyWith(
      {Test$Media? media,
      Test$MultiMedia? multiMedia,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? publishedAt,
      Test$CreatedBy? createdBy,
      Test$UpdatedBy? updatedBy}) {
    return Test(
        media: media ?? this.media,
        multiMedia: multiMedia ?? this.multiMedia,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        publishedAt: publishedAt ?? this.publishedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test copyWithWrapped(
      {Wrapped<Test$Media>? media,
      Wrapped<Test$MultiMedia>? multiMedia,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<DateTime?>? publishedAt,
      Wrapped<Test$CreatedBy?>? createdBy,
      Wrapped<Test$UpdatedBy?>? updatedBy}) {
    return Test(
        media: (media != null ? media.value : this.media),
        multiMedia: (multiMedia != null ? multiMedia.value : this.multiMedia),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        publishedAt:
            (publishedAt != null ? publishedAt.value : this.publishedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class TestResponseDataObject {
  TestResponseDataObject({
    this.id,
    this.attributes,
  });

  factory TestResponseDataObject.fromJson(Map<String, dynamic> json) =>
      _$TestResponseDataObjectFromJson(json);

  static const toJsonFactory = _$TestResponseDataObjectToJson;
  Map<String, dynamic> toJson() => _$TestResponseDataObjectToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test? attributes;
  static const fromJsonFactory = _$TestResponseDataObjectFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestResponseDataObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $TestResponseDataObjectExtension on TestResponseDataObject {
  TestResponseDataObject copyWith({double? id, Test? attributes}) {
    return TestResponseDataObject(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  TestResponseDataObject copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Test?>? attributes}) {
    return TestResponseDataObject(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class TestResponse {
  TestResponse({
    this.data,
    this.meta,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) =>
      _$TestResponseFromJson(json);

  static const toJsonFactory = _$TestResponseToJson;
  Map<String, dynamic> toJson() => _$TestResponseToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final TestResponseDataObject? data;
  @JsonKey(name: 'meta', includeIfNull: false)
  final Object? meta;
  static const fromJsonFactory = _$TestResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $TestResponseExtension on TestResponse {
  TestResponse copyWith({TestResponseDataObject? data, Object? meta}) {
    return TestResponse(data: data ?? this.data, meta: meta ?? this.meta);
  }

  TestResponse copyWithWrapped(
      {Wrapped<TestResponseDataObject?>? data, Wrapped<Object?>? meta}) {
    return TestResponse(
        data: (data != null ? data.value : this.data),
        meta: (meta != null ? meta.value : this.meta));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadFile {
  UploadFile({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory UploadFile.fromJson(Map<String, dynamic> json) =>
      _$UploadFileFromJson(json);

  static const toJsonFactory = _$UploadFileToJson;
  Map<String, dynamic> toJson() => _$UploadFileToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final double? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final double? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final double? formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'provider_metadata', includeIfNull: false)
  final Object? providerMetadata;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  static const fromJsonFactory = _$UploadFileFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadFile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UploadFileExtension on UploadFile {
  UploadFile copyWith(
      {double? id,
      String? name,
      String? alternativeText,
      String? caption,
      double? width,
      double? height,
      double? formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      Object? providerMetadata,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UploadFile(
        id: id ?? this.id,
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  UploadFile copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption,
      Wrapped<double?>? width,
      Wrapped<double?>? height,
      Wrapped<double?>? formats,
      Wrapped<String?>? hash,
      Wrapped<String?>? ext,
      Wrapped<String?>? mime,
      Wrapped<double?>? size,
      Wrapped<String?>? url,
      Wrapped<String?>? previewUrl,
      Wrapped<String?>? provider,
      Wrapped<Object?>? providerMetadata,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt}) {
    return UploadFile(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRole {
  UsersPermissionsRole({
    this.id,
    this.name,
    this.description,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersPermissionsRole.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsRoleFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRoleToJson;
  Map<String, dynamic> toJson() => _$UsersPermissionsRoleToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  static const fromJsonFactory = _$UsersPermissionsRoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRole &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UsersPermissionsRoleExtension on UsersPermissionsRole {
  UsersPermissionsRole copyWith(
      {double? id,
      String? name,
      String? description,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UsersPermissionsRole(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  UsersPermissionsRole copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? type,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt}) {
    return UsersPermissionsRole(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsUser {
  UsersPermissionsUser({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersPermissionsUser.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsUserFromJson(json);

  static const toJsonFactory = _$UsersPermissionsUserToJson;
  Map<String, dynamic> toJson() => _$UsersPermissionsUserToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'confirmed', includeIfNull: false)
  final bool? confirmed;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool? blocked;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  static const fromJsonFactory = _$UsersPermissionsUserFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(confirmed) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UsersPermissionsUserExtension on UsersPermissionsUser {
  UsersPermissionsUser copyWith(
      {double? id,
      String? username,
      String? email,
      String? provider,
      bool? confirmed,
      bool? blocked,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UsersPermissionsUser(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        provider: provider ?? this.provider,
        confirmed: confirmed ?? this.confirmed,
        blocked: blocked ?? this.blocked,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  UsersPermissionsUser copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? email,
      Wrapped<String?>? provider,
      Wrapped<bool?>? confirmed,
      Wrapped<bool?>? blocked,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt}) {
    return UsersPermissionsUser(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        email: (email != null ? email.value : this.email),
        provider: (provider != null ? provider.value : this.provider),
        confirmed: (confirmed != null ? confirmed.value : this.confirmed),
        blocked: (blocked != null ? blocked.value : this.blocked),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsUserRegistration {
  UsersPermissionsUserRegistration({
    this.jwt,
    this.user,
  });

  factory UsersPermissionsUserRegistration.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsUserRegistrationFromJson(json);

  static const toJsonFactory = _$UsersPermissionsUserRegistrationToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsUserRegistrationToJson(this);

  @JsonKey(name: 'jwt', includeIfNull: false, defaultValue: '')
  final String? jwt;
  @JsonKey(name: 'user', includeIfNull: false)
  final UsersPermissionsUser? user;
  static const fromJsonFactory = _$UsersPermissionsUserRegistrationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsUserRegistration &&
            (identical(other.jwt, jwt) ||
                const DeepCollectionEquality().equals(other.jwt, jwt)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jwt) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $UsersPermissionsUserRegistrationExtension
    on UsersPermissionsUserRegistration {
  UsersPermissionsUserRegistration copyWith(
      {String? jwt, UsersPermissionsUser? user}) {
    return UsersPermissionsUserRegistration(
        jwt: jwt ?? this.jwt, user: user ?? this.user);
  }

  UsersPermissionsUserRegistration copyWithWrapped(
      {Wrapped<String?>? jwt, Wrapped<UsersPermissionsUser?>? user}) {
    return UsersPermissionsUserRegistration(
        jwt: (jwt != null ? jwt.value : this.jwt),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsPermissionsTree {
  UsersPermissionsPermissionsTree();

  factory UsersPermissionsPermissionsTree.fromJson(Map<String, dynamic> json) =>
      _$UsersPermissionsPermissionsTreeFromJson(json);

  static const toJsonFactory = _$UsersPermissionsPermissionsTreeToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsPermissionsTreeToJson(this);

  static const fromJsonFactory = _$UsersPermissionsPermissionsTreeFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRoleRequest$RequestBody {
  UsersPermissionsRoleRequest$RequestBody({
    this.name,
    this.description,
    this.type,
    this.permissions,
  });

  factory UsersPermissionsRoleRequest$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRoleRequest$RequestBodyFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRoleRequest$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRoleRequest$RequestBodyToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'permissions', includeIfNull: false)
  final UsersPermissionsPermissionsTree? permissions;
  static const fromJsonFactory =
      _$UsersPermissionsRoleRequest$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRoleRequest$RequestBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(permissions) ^
      runtimeType.hashCode;
}

extension $UsersPermissionsRoleRequest$RequestBodyExtension
    on UsersPermissionsRoleRequest$RequestBody {
  UsersPermissionsRoleRequest$RequestBody copyWith(
      {String? name,
      String? description,
      String? type,
      UsersPermissionsPermissionsTree? permissions}) {
    return UsersPermissionsRoleRequest$RequestBody(
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        permissions: permissions ?? this.permissions);
  }

  UsersPermissionsRoleRequest$RequestBody copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<String?>? type,
      Wrapped<UsersPermissionsPermissionsTree?>? permissions}) {
    return UsersPermissionsRoleRequest$RequestBody(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        permissions:
            (permissions != null ? permissions.value : this.permissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadPost$RequestBody {
  UploadPost$RequestBody({
    this.path,
    this.refId,
    this.ref,
    this.field,
    required this.files,
  });

  factory UploadPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$UploadPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$UploadPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$UploadPost$RequestBodyToJson(this);

  @JsonKey(name: 'path', includeIfNull: false, defaultValue: '')
  final String? path;
  @JsonKey(name: 'refId', includeIfNull: false, defaultValue: '')
  final String? refId;
  @JsonKey(name: 'ref', includeIfNull: false, defaultValue: '')
  final String? ref;
  @JsonKey(name: 'field', includeIfNull: false, defaultValue: '')
  final String? field;
  @JsonKey(name: 'files', includeIfNull: false, defaultValue: <String>[])
  final List<String> files;
  static const fromJsonFactory = _$UploadPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadPost$RequestBody &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.refId, refId) ||
                const DeepCollectionEquality().equals(other.refId, refId)) &&
            (identical(other.ref, ref) ||
                const DeepCollectionEquality().equals(other.ref, ref)) &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(refId) ^
      const DeepCollectionEquality().hash(ref) ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(files) ^
      runtimeType.hashCode;
}

extension $UploadPost$RequestBodyExtension on UploadPost$RequestBody {
  UploadPost$RequestBody copyWith(
      {String? path,
      String? refId,
      String? ref,
      String? field,
      List<String>? files}) {
    return UploadPost$RequestBody(
        path: path ?? this.path,
        refId: refId ?? this.refId,
        ref: ref ?? this.ref,
        field: field ?? this.field,
        files: files ?? this.files);
  }

  UploadPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? path,
      Wrapped<String?>? refId,
      Wrapped<String?>? ref,
      Wrapped<String?>? field,
      Wrapped<List<String>>? files}) {
    return UploadPost$RequestBody(
        path: (path != null ? path.value : this.path),
        refId: (refId != null ? refId.value : this.refId),
        ref: (ref != null ? ref.value : this.ref),
        field: (field != null ? field.value : this.field),
        files: (files != null ? files.value : this.files));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadIdIdPost$RequestBody {
  UploadIdIdPost$RequestBody({
    this.fileInfo,
    this.files,
  });

  factory UploadIdIdPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$UploadIdIdPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$UploadIdIdPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$UploadIdIdPost$RequestBodyToJson(this);

  @JsonKey(name: 'fileInfo', includeIfNull: false)
  final UploadIdIdPost$RequestBody$FileInfo? fileInfo;
  @JsonKey(name: 'files', includeIfNull: false, defaultValue: '')
  final String? files;
  static const fromJsonFactory = _$UploadIdIdPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadIdIdPost$RequestBody &&
            (identical(other.fileInfo, fileInfo) ||
                const DeepCollectionEquality()
                    .equals(other.fileInfo, fileInfo)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fileInfo) ^
      const DeepCollectionEquality().hash(files) ^
      runtimeType.hashCode;
}

extension $UploadIdIdPost$RequestBodyExtension on UploadIdIdPost$RequestBody {
  UploadIdIdPost$RequestBody copyWith(
      {UploadIdIdPost$RequestBody$FileInfo? fileInfo, String? files}) {
    return UploadIdIdPost$RequestBody(
        fileInfo: fileInfo ?? this.fileInfo, files: files ?? this.files);
  }

  UploadIdIdPost$RequestBody copyWithWrapped(
      {Wrapped<UploadIdIdPost$RequestBody$FileInfo?>? fileInfo,
      Wrapped<String?>? files}) {
    return UploadIdIdPost$RequestBody(
        fileInfo: (fileInfo != null ? fileInfo.value : this.fileInfo),
        files: (files != null ? files.value : this.files));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthLocalPost$RequestBody {
  AuthLocalPost$RequestBody({
    this.identifier,
    this.password,
  });

  factory AuthLocalPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$AuthLocalPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$AuthLocalPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$AuthLocalPost$RequestBodyToJson(this);

  @JsonKey(name: 'identifier', includeIfNull: false, defaultValue: '')
  final String? identifier;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String? password;
  static const fromJsonFactory = _$AuthLocalPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthLocalPost$RequestBody &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(identifier) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthLocalPost$RequestBodyExtension on AuthLocalPost$RequestBody {
  AuthLocalPost$RequestBody copyWith({String? identifier, String? password}) {
    return AuthLocalPost$RequestBody(
        identifier: identifier ?? this.identifier,
        password: password ?? this.password);
  }

  AuthLocalPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? identifier, Wrapped<String?>? password}) {
    return AuthLocalPost$RequestBody(
        identifier: (identifier != null ? identifier.value : this.identifier),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthLocalRegisterPost$RequestBody {
  AuthLocalRegisterPost$RequestBody({
    this.username,
    this.email,
    this.password,
  });

  factory AuthLocalRegisterPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$AuthLocalRegisterPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$AuthLocalRegisterPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$AuthLocalRegisterPost$RequestBodyToJson(this);

  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String? password;
  static const fromJsonFactory = _$AuthLocalRegisterPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthLocalRegisterPost$RequestBody &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthLocalRegisterPost$RequestBodyExtension
    on AuthLocalRegisterPost$RequestBody {
  AuthLocalRegisterPost$RequestBody copyWith(
      {String? username, String? email, String? password}) {
    return AuthLocalRegisterPost$RequestBody(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password);
  }

  AuthLocalRegisterPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? username,
      Wrapped<String?>? email,
      Wrapped<String?>? password}) {
    return AuthLocalRegisterPost$RequestBody(
        username: (username != null ? username.value : this.username),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthForgotPasswordPost$RequestBody {
  AuthForgotPasswordPost$RequestBody({
    this.email,
  });

  factory AuthForgotPasswordPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$AuthForgotPasswordPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$AuthForgotPasswordPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$AuthForgotPasswordPost$RequestBodyToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  static const fromJsonFactory = _$AuthForgotPasswordPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthForgotPasswordPost$RequestBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $AuthForgotPasswordPost$RequestBodyExtension
    on AuthForgotPasswordPost$RequestBody {
  AuthForgotPasswordPost$RequestBody copyWith({String? email}) {
    return AuthForgotPasswordPost$RequestBody(email: email ?? this.email);
  }

  AuthForgotPasswordPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? email}) {
    return AuthForgotPasswordPost$RequestBody(
        email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResetPasswordPost$RequestBody {
  AuthResetPasswordPost$RequestBody({
    this.password,
    this.passwordConfirmation,
    this.code,
  });

  factory AuthResetPasswordPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$AuthResetPasswordPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$AuthResetPasswordPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$AuthResetPasswordPost$RequestBodyToJson(this);

  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String? password;
  @JsonKey(name: 'passwordConfirmation', includeIfNull: false, defaultValue: '')
  final String? passwordConfirmation;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  static const fromJsonFactory = _$AuthResetPasswordPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthResetPasswordPost$RequestBody &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality().equals(
                    other.passwordConfirmation, passwordConfirmation)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirmation) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $AuthResetPasswordPost$RequestBodyExtension
    on AuthResetPasswordPost$RequestBody {
  AuthResetPasswordPost$RequestBody copyWith(
      {String? password, String? passwordConfirmation, String? code}) {
    return AuthResetPasswordPost$RequestBody(
        password: password ?? this.password,
        passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
        code: code ?? this.code);
  }

  AuthResetPasswordPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? password,
      Wrapped<String?>? passwordConfirmation,
      Wrapped<String?>? code}) {
    return AuthResetPasswordPost$RequestBody(
        password: (password != null ? password.value : this.password),
        passwordConfirmation: (passwordConfirmation != null
            ? passwordConfirmation.value
            : this.passwordConfirmation),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthChangePasswordPost$RequestBody {
  AuthChangePasswordPost$RequestBody({
    required this.password,
    required this.currentPassword,
    required this.passwordConfirmation,
  });

  factory AuthChangePasswordPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$AuthChangePasswordPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$AuthChangePasswordPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$AuthChangePasswordPost$RequestBodyToJson(this);

  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String password;
  @JsonKey(name: 'currentPassword', includeIfNull: false, defaultValue: '')
  final String currentPassword;
  @JsonKey(name: 'passwordConfirmation', includeIfNull: false, defaultValue: '')
  final String passwordConfirmation;
  static const fromJsonFactory = _$AuthChangePasswordPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthChangePasswordPost$RequestBody &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(currentPassword) ^
      const DeepCollectionEquality().hash(passwordConfirmation) ^
      runtimeType.hashCode;
}

extension $AuthChangePasswordPost$RequestBodyExtension
    on AuthChangePasswordPost$RequestBody {
  AuthChangePasswordPost$RequestBody copyWith(
      {String? password,
      String? currentPassword,
      String? passwordConfirmation}) {
    return AuthChangePasswordPost$RequestBody(
        password: password ?? this.password,
        currentPassword: currentPassword ?? this.currentPassword,
        passwordConfirmation:
            passwordConfirmation ?? this.passwordConfirmation);
  }

  AuthChangePasswordPost$RequestBody copyWithWrapped(
      {Wrapped<String>? password,
      Wrapped<String>? currentPassword,
      Wrapped<String>? passwordConfirmation}) {
    return AuthChangePasswordPost$RequestBody(
        password: (password != null ? password.value : this.password),
        currentPassword: (currentPassword != null
            ? currentPassword.value
            : this.currentPassword),
        passwordConfirmation: (passwordConfirmation != null
            ? passwordConfirmation.value
            : this.passwordConfirmation));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthSendEmailConfirmationPost$RequestBody {
  AuthSendEmailConfirmationPost$RequestBody({
    this.email,
  });

  factory AuthSendEmailConfirmationPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$AuthSendEmailConfirmationPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$AuthSendEmailConfirmationPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$AuthSendEmailConfirmationPost$RequestBodyToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  static const fromJsonFactory =
      _$AuthSendEmailConfirmationPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthSendEmailConfirmationPost$RequestBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $AuthSendEmailConfirmationPost$RequestBodyExtension
    on AuthSendEmailConfirmationPost$RequestBody {
  AuthSendEmailConfirmationPost$RequestBody copyWith({String? email}) {
    return AuthSendEmailConfirmationPost$RequestBody(
        email: email ?? this.email);
  }

  AuthSendEmailConfirmationPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? email}) {
    return AuthSendEmailConfirmationPost$RequestBody(
        email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPost$RequestBody {
  UsersPost$RequestBody({
    required this.email,
    required this.username,
    required this.password,
  });

  factory UsersPost$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$UsersPost$RequestBodyFromJson(json);

  static const toJsonFactory = _$UsersPost$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$UsersPost$RequestBodyToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String username;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String password;
  static const fromJsonFactory = _$UsersPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPost$RequestBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $UsersPost$RequestBodyExtension on UsersPost$RequestBody {
  UsersPost$RequestBody copyWith(
      {String? email, String? username, String? password}) {
    return UsersPost$RequestBody(
        email: email ?? this.email,
        username: username ?? this.username,
        password: password ?? this.password);
  }

  UsersPost$RequestBody copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<String>? username,
      Wrapped<String>? password}) {
    return UsersPost$RequestBody(
        email: (email != null ? email.value : this.email),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersIdPut$RequestBody {
  UsersIdPut$RequestBody({
    required this.email,
    required this.username,
    required this.password,
  });

  factory UsersIdPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$UsersIdPut$RequestBodyFromJson(json);

  static const toJsonFactory = _$UsersIdPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$UsersIdPut$RequestBodyToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String username;
  @JsonKey(name: 'password', includeIfNull: false, defaultValue: '')
  final String password;
  static const fromJsonFactory = _$UsersIdPut$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersIdPut$RequestBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $UsersIdPut$RequestBodyExtension on UsersIdPut$RequestBody {
  UsersIdPut$RequestBody copyWith(
      {String? email, String? username, String? password}) {
    return UsersIdPut$RequestBody(
        email: email ?? this.email,
        username: username ?? this.username,
        password: password ?? this.password);
  }

  UsersIdPut$RequestBody copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<String>? username,
      Wrapped<String>? password}) {
    return UsersIdPut$RequestBody(
        email: (email != null ? email.value : this.email),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthForgotPasswordPost$Response {
  AuthForgotPasswordPost$Response({
    this.ok,
  });

  factory AuthForgotPasswordPost$Response.fromJson(Map<String, dynamic> json) =>
      _$AuthForgotPasswordPost$ResponseFromJson(json);

  static const toJsonFactory = _$AuthForgotPasswordPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AuthForgotPasswordPost$ResponseToJson(this);

  @JsonKey(
    name: 'ok',
    includeIfNull: false,
    toJson: authForgotPasswordPost$ResponseOkToJson,
    fromJson: authForgotPasswordPost$ResponseOkFromJson,
  )
  final enums.AuthForgotPasswordPost$ResponseOk? ok;
  static const fromJsonFactory = _$AuthForgotPasswordPost$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthForgotPasswordPost$Response &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^ runtimeType.hashCode;
}

extension $AuthForgotPasswordPost$ResponseExtension
    on AuthForgotPasswordPost$Response {
  AuthForgotPasswordPost$Response copyWith(
      {enums.AuthForgotPasswordPost$ResponseOk? ok}) {
    return AuthForgotPasswordPost$Response(ok: ok ?? this.ok);
  }

  AuthForgotPasswordPost$Response copyWithWrapped(
      {Wrapped<enums.AuthForgotPasswordPost$ResponseOk?>? ok}) {
    return AuthForgotPasswordPost$Response(
        ok: (ok != null ? ok.value : this.ok));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthSendEmailConfirmationPost$Response {
  AuthSendEmailConfirmationPost$Response({
    this.email,
    this.sent,
  });

  factory AuthSendEmailConfirmationPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$AuthSendEmailConfirmationPost$ResponseFromJson(json);

  static const toJsonFactory = _$AuthSendEmailConfirmationPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AuthSendEmailConfirmationPost$ResponseToJson(this);

  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(
    name: 'sent',
    includeIfNull: false,
    toJson: authSendEmailConfirmationPost$ResponseSentToJson,
    fromJson: authSendEmailConfirmationPost$ResponseSentFromJson,
  )
  final enums.AuthSendEmailConfirmationPost$ResponseSent? sent;
  static const fromJsonFactory =
      _$AuthSendEmailConfirmationPost$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthSendEmailConfirmationPost$Response &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.sent, sent) ||
                const DeepCollectionEquality().equals(other.sent, sent)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(sent) ^
      runtimeType.hashCode;
}

extension $AuthSendEmailConfirmationPost$ResponseExtension
    on AuthSendEmailConfirmationPost$Response {
  AuthSendEmailConfirmationPost$Response copyWith(
      {String? email, enums.AuthSendEmailConfirmationPost$ResponseSent? sent}) {
    return AuthSendEmailConfirmationPost$Response(
        email: email ?? this.email, sent: sent ?? this.sent);
  }

  AuthSendEmailConfirmationPost$Response copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<enums.AuthSendEmailConfirmationPost$ResponseSent?>? sent}) {
    return AuthSendEmailConfirmationPost$Response(
        email: (email != null ? email.value : this.email),
        sent: (sent != null ? sent.value : this.sent));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsPermissionsGet$Response {
  UsersPermissionsPermissionsGet$Response({
    this.permissions,
  });

  factory UsersPermissionsPermissionsGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsPermissionsGet$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsPermissionsGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsPermissionsGet$ResponseToJson(this);

  @JsonKey(name: 'permissions', includeIfNull: false)
  final UsersPermissionsPermissionsTree? permissions;
  static const fromJsonFactory =
      _$UsersPermissionsPermissionsGet$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsPermissionsGet$Response &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(permissions) ^ runtimeType.hashCode;
}

extension $UsersPermissionsPermissionsGet$ResponseExtension
    on UsersPermissionsPermissionsGet$Response {
  UsersPermissionsPermissionsGet$Response copyWith(
      {UsersPermissionsPermissionsTree? permissions}) {
    return UsersPermissionsPermissionsGet$Response(
        permissions: permissions ?? this.permissions);
  }

  UsersPermissionsPermissionsGet$Response copyWithWrapped(
      {Wrapped<UsersPermissionsPermissionsTree?>? permissions}) {
    return UsersPermissionsPermissionsGet$Response(
        permissions:
            (permissions != null ? permissions.value : this.permissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRolesGet$Response {
  UsersPermissionsRolesGet$Response({
    this.roles,
  });

  factory UsersPermissionsRolesGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRolesGet$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRolesGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRolesGet$ResponseToJson(this);

  @JsonKey(name: 'roles', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? roles;
  static const fromJsonFactory = _$UsersPermissionsRolesGet$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRolesGet$Response &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(roles) ^ runtimeType.hashCode;
}

extension $UsersPermissionsRolesGet$ResponseExtension
    on UsersPermissionsRolesGet$Response {
  UsersPermissionsRolesGet$Response copyWith({List<Object>? roles}) {
    return UsersPermissionsRolesGet$Response(roles: roles ?? this.roles);
  }

  UsersPermissionsRolesGet$Response copyWithWrapped(
      {Wrapped<List<Object>?>? roles}) {
    return UsersPermissionsRolesGet$Response(
        roles: (roles != null ? roles.value : this.roles));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRolesPost$Response {
  UsersPermissionsRolesPost$Response({
    this.ok,
  });

  factory UsersPermissionsRolesPost$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRolesPost$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRolesPost$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRolesPost$ResponseToJson(this);

  @JsonKey(
    name: 'ok',
    includeIfNull: false,
    toJson: usersPermissionsRolesPost$ResponseOkToJson,
    fromJson: usersPermissionsRolesPost$ResponseOkFromJson,
  )
  final enums.UsersPermissionsRolesPost$ResponseOk? ok;
  static const fromJsonFactory = _$UsersPermissionsRolesPost$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRolesPost$Response &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^ runtimeType.hashCode;
}

extension $UsersPermissionsRolesPost$ResponseExtension
    on UsersPermissionsRolesPost$Response {
  UsersPermissionsRolesPost$Response copyWith(
      {enums.UsersPermissionsRolesPost$ResponseOk? ok}) {
    return UsersPermissionsRolesPost$Response(ok: ok ?? this.ok);
  }

  UsersPermissionsRolesPost$Response copyWithWrapped(
      {Wrapped<enums.UsersPermissionsRolesPost$ResponseOk?>? ok}) {
    return UsersPermissionsRolesPost$Response(
        ok: (ok != null ? ok.value : this.ok));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRolesIdGet$Response {
  UsersPermissionsRolesIdGet$Response({
    this.role,
  });

  factory UsersPermissionsRolesIdGet$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRolesIdGet$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRolesIdGet$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRolesIdGet$ResponseToJson(this);

  @JsonKey(name: 'role', includeIfNull: false)
  final UsersPermissionsRole? role;
  static const fromJsonFactory = _$UsersPermissionsRolesIdGet$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRolesIdGet$Response &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^ runtimeType.hashCode;
}

extension $UsersPermissionsRolesIdGet$ResponseExtension
    on UsersPermissionsRolesIdGet$Response {
  UsersPermissionsRolesIdGet$Response copyWith({UsersPermissionsRole? role}) {
    return UsersPermissionsRolesIdGet$Response(role: role ?? this.role);
  }

  UsersPermissionsRolesIdGet$Response copyWithWrapped(
      {Wrapped<UsersPermissionsRole?>? role}) {
    return UsersPermissionsRolesIdGet$Response(
        role: (role != null ? role.value : this.role));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRolesRolePut$Response {
  UsersPermissionsRolesRolePut$Response({
    this.ok,
  });

  factory UsersPermissionsRolesRolePut$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRolesRolePut$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRolesRolePut$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRolesRolePut$ResponseToJson(this);

  @JsonKey(
    name: 'ok',
    includeIfNull: false,
    toJson: usersPermissionsRolesRolePut$ResponseOkToJson,
    fromJson: usersPermissionsRolesRolePut$ResponseOkFromJson,
  )
  final enums.UsersPermissionsRolesRolePut$ResponseOk? ok;
  static const fromJsonFactory =
      _$UsersPermissionsRolesRolePut$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRolesRolePut$Response &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^ runtimeType.hashCode;
}

extension $UsersPermissionsRolesRolePut$ResponseExtension
    on UsersPermissionsRolesRolePut$Response {
  UsersPermissionsRolesRolePut$Response copyWith(
      {enums.UsersPermissionsRolesRolePut$ResponseOk? ok}) {
    return UsersPermissionsRolesRolePut$Response(ok: ok ?? this.ok);
  }

  UsersPermissionsRolesRolePut$Response copyWithWrapped(
      {Wrapped<enums.UsersPermissionsRolesRolePut$ResponseOk?>? ok}) {
    return UsersPermissionsRolesRolePut$Response(
        ok: (ok != null ? ok.value : this.ok));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersPermissionsRolesRoleDelete$Response {
  UsersPermissionsRolesRoleDelete$Response({
    this.ok,
  });

  factory UsersPermissionsRolesRoleDelete$Response.fromJson(
          Map<String, dynamic> json) =>
      _$UsersPermissionsRolesRoleDelete$ResponseFromJson(json);

  static const toJsonFactory = _$UsersPermissionsRolesRoleDelete$ResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UsersPermissionsRolesRoleDelete$ResponseToJson(this);

  @JsonKey(
    name: 'ok',
    includeIfNull: false,
    toJson: usersPermissionsRolesRoleDelete$ResponseOkToJson,
    fromJson: usersPermissionsRolesRoleDelete$ResponseOkFromJson,
  )
  final enums.UsersPermissionsRolesRoleDelete$ResponseOk? ok;
  static const fromJsonFactory =
      _$UsersPermissionsRolesRoleDelete$ResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersPermissionsRolesRoleDelete$Response &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^ runtimeType.hashCode;
}

extension $UsersPermissionsRolesRoleDelete$ResponseExtension
    on UsersPermissionsRolesRoleDelete$Response {
  UsersPermissionsRolesRoleDelete$Response copyWith(
      {enums.UsersPermissionsRolesRoleDelete$ResponseOk? ok}) {
    return UsersPermissionsRolesRoleDelete$Response(ok: ok ?? this.ok);
  }

  UsersPermissionsRolesRoleDelete$Response copyWithWrapped(
      {Wrapped<enums.UsersPermissionsRolesRoleDelete$ResponseOk?>? ok}) {
    return UsersPermissionsRolesRoleDelete$Response(
        ok: (ok != null ? ok.value : this.ok));
  }
}

@JsonSerializable(explicitToJson: true)
class Error$Error {
  Error$Error({
    this.status,
    this.name,
    this.message,
    this.details,
  });

  factory Error$Error.fromJson(Map<String, dynamic> json) =>
      _$Error$ErrorFromJson(json);

  static const toJsonFactory = _$Error$ErrorToJson;
  Map<String, dynamic> toJson() => _$Error$ErrorToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final int? status;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'message', includeIfNull: false, defaultValue: '')
  final String? message;
  @JsonKey(name: 'details', includeIfNull: false)
  final Object? details;
  static const fromJsonFactory = _$Error$ErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error$Error &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      runtimeType.hashCode;
}

extension $Error$ErrorExtension on Error$Error {
  Error$Error copyWith(
      {int? status, String? name, String? message, Object? details}) {
    return Error$Error(
        status: status ?? this.status,
        name: name ?? this.name,
        message: message ?? this.message,
        details: details ?? this.details);
  }

  Error$Error copyWithWrapped(
      {Wrapped<int?>? status,
      Wrapped<String?>? name,
      Wrapped<String?>? message,
      Wrapped<Object?>? details}) {
    return Error$Error(
        status: (status != null ? status.value : this.status),
        name: (name != null ? name.value : this.name),
        message: (message != null ? message.value : this.message),
        details: (details != null ? details.value : this.details));
  }
}

@JsonSerializable(explicitToJson: true)
class ExampleRequest$Data {
  ExampleRequest$Data({
    this.title,
    this.description,
  });

  factory ExampleRequest$Data.fromJson(Map<String, dynamic> json) =>
      _$ExampleRequest$DataFromJson(json);

  static const toJsonFactory = _$ExampleRequest$DataToJson;
  Map<String, dynamic> toJson() => _$ExampleRequest$DataToJson(this);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  static const fromJsonFactory = _$ExampleRequest$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExampleRequest$Data &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ExampleRequest$DataExtension on ExampleRequest$Data {
  ExampleRequest$Data copyWith({String? title, String? description}) {
    return ExampleRequest$Data(
        title: title ?? this.title,
        description: description ?? this.description);
  }

  ExampleRequest$Data copyWithWrapped(
      {Wrapped<String?>? title, Wrapped<String?>? description}) {
    return ExampleRequest$Data(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy {
  Example$CreatedBy({
    this.data,
  });

  factory Example$CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$Example$CreatedByFromJson(json);

  static const toJsonFactory = _$Example$CreatedByToJson;
  Map<String, dynamic> toJson() => _$Example$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data? data;
  static const fromJsonFactory = _$Example$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedByExtension on Example$CreatedBy {
  Example$CreatedBy copyWith({Example$CreatedBy$Data? data}) {
    return Example$CreatedBy(data: data ?? this.data);
  }

  Example$CreatedBy copyWithWrapped({Wrapped<Example$CreatedBy$Data?>? data}) {
    return Example$CreatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$UpdatedBy {
  Example$UpdatedBy({
    this.data,
  });

  factory Example$UpdatedBy.fromJson(Map<String, dynamic> json) =>
      _$Example$UpdatedByFromJson(json);

  static const toJsonFactory = _$Example$UpdatedByToJson;
  Map<String, dynamic> toJson() => _$Example$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$UpdatedBy$Data? data;
  static const fromJsonFactory = _$Example$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$UpdatedByExtension on Example$UpdatedBy {
  Example$UpdatedBy copyWith({Example$UpdatedBy$Data? data}) {
    return Example$UpdatedBy(data: data ?? this.data);
  }

  Example$UpdatedBy copyWithWrapped({Wrapped<Example$UpdatedBy$Data?>? data}) {
    return Example$UpdatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderRequest$Data {
  OrderRequest$Data({
    this.title,
    this.description,
    this.price,
    this.isHidden,
    this.photo,
    this.status,
    this.uuid,
    this.location,
  });

  factory OrderRequest$Data.fromJson(Map<String, dynamic> json) =>
      _$OrderRequest$DataFromJson(json);

  static const toJsonFactory = _$OrderRequest$DataToJson;
  Map<String, dynamic> toJson() => _$OrderRequest$DataToJson(this);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'price', includeIfNull: false)
  final double? price;
  @JsonKey(name: 'isHidden', includeIfNull: false)
  final bool? isHidden;
  @JsonKey(name: 'photo', includeIfNull: false, defaultValue: <Object>[])
  final List<Object>? photo;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: orderRequest$DataStatusToJson,
    fromJson: orderRequest$DataStatusFromJson,
  )
  final enums.OrderRequest$DataStatus? status;
  @JsonKey(name: 'uuid', includeIfNull: false, defaultValue: '')
  final String? uuid;
  @JsonKey(name: 'location', includeIfNull: false)
  final dynamic location;
  static const fromJsonFactory = _$OrderRequest$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderRequest$Data &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.isHidden, isHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isHidden, isHidden)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(isHidden) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $OrderRequest$DataExtension on OrderRequest$Data {
  OrderRequest$Data copyWith(
      {String? title,
      String? description,
      double? price,
      bool? isHidden,
      List<Object>? photo,
      enums.OrderRequest$DataStatus? status,
      String? uuid,
      dynamic location}) {
    return OrderRequest$Data(
        title: title ?? this.title,
        description: description ?? this.description,
        price: price ?? this.price,
        isHidden: isHidden ?? this.isHidden,
        photo: photo ?? this.photo,
        status: status ?? this.status,
        uuid: uuid ?? this.uuid,
        location: location ?? this.location);
  }

  OrderRequest$Data copyWithWrapped(
      {Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<double?>? price,
      Wrapped<bool?>? isHidden,
      Wrapped<List<Object>?>? photo,
      Wrapped<enums.OrderRequest$DataStatus?>? status,
      Wrapped<String?>? uuid,
      Wrapped<dynamic>? location}) {
    return OrderRequest$Data(
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        price: (price != null ? price.value : this.price),
        isHidden: (isHidden != null ? isHidden.value : this.isHidden),
        photo: (photo != null ? photo.value : this.photo),
        status: (status != null ? status.value : this.status),
        uuid: (uuid != null ? uuid.value : this.uuid),
        location: (location != null ? location.value : this.location));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderListResponse$Meta {
  OrderListResponse$Meta({
    this.pagination,
  });

  factory OrderListResponse$Meta.fromJson(Map<String, dynamic> json) =>
      _$OrderListResponse$MetaFromJson(json);

  static const toJsonFactory = _$OrderListResponse$MetaToJson;
  Map<String, dynamic> toJson() => _$OrderListResponse$MetaToJson(this);

  @JsonKey(name: 'pagination', includeIfNull: false)
  final OrderListResponse$Meta$Pagination? pagination;
  static const fromJsonFactory = _$OrderListResponse$MetaFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderListResponse$Meta &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pagination) ^ runtimeType.hashCode;
}

extension $OrderListResponse$MetaExtension on OrderListResponse$Meta {
  OrderListResponse$Meta copyWith(
      {OrderListResponse$Meta$Pagination? pagination}) {
    return OrderListResponse$Meta(pagination: pagination ?? this.pagination);
  }

  OrderListResponse$Meta copyWithWrapped(
      {Wrapped<OrderListResponse$Meta$Pagination?>? pagination}) {
    return OrderListResponse$Meta(
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo {
  Order$Photo({
    this.data,
  });

  factory Order$Photo.fromJson(Map<String, dynamic> json) =>
      _$Order$PhotoFromJson(json);

  static const toJsonFactory = _$Order$PhotoToJson;
  Map<String, dynamic> toJson() => _$Order$PhotoToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Order$Photo$Data$Item>? data;
  static const fromJsonFactory = _$Order$PhotoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$PhotoExtension on Order$Photo {
  Order$Photo copyWith({List<Order$Photo$Data$Item>? data}) {
    return Order$Photo(data: data ?? this.data);
  }

  Order$Photo copyWithWrapped({Wrapped<List<Order$Photo$Data$Item>?>? data}) {
    return Order$Photo(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$CreatedBy {
  Order$CreatedBy({
    this.data,
  });

  factory Order$CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$Order$CreatedByFromJson(json);

  static const toJsonFactory = _$Order$CreatedByToJson;
  Map<String, dynamic> toJson() => _$Order$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$CreatedBy$Data? data;
  static const fromJsonFactory = _$Order$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$CreatedByExtension on Order$CreatedBy {
  Order$CreatedBy copyWith({Order$CreatedBy$Data? data}) {
    return Order$CreatedBy(data: data ?? this.data);
  }

  Order$CreatedBy copyWithWrapped({Wrapped<Order$CreatedBy$Data?>? data}) {
    return Order$CreatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$UpdatedBy {
  Order$UpdatedBy({
    this.data,
  });

  factory Order$UpdatedBy.fromJson(Map<String, dynamic> json) =>
      _$Order$UpdatedByFromJson(json);

  static const toJsonFactory = _$Order$UpdatedByToJson;
  Map<String, dynamic> toJson() => _$Order$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$UpdatedBy$Data? data;
  static const fromJsonFactory = _$Order$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$UpdatedByExtension on Order$UpdatedBy {
  Order$UpdatedBy copyWith({Order$UpdatedBy$Data? data}) {
    return Order$UpdatedBy(data: data ?? this.data);
  }

  Order$UpdatedBy copyWithWrapped({Wrapped<Order$UpdatedBy$Data?>? data}) {
    return Order$UpdatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class TestRequest$Data {
  TestRequest$Data({
    required this.media,
    required this.multiMedia,
  });

  factory TestRequest$Data.fromJson(Map<String, dynamic> json) =>
      _$TestRequest$DataFromJson(json);

  static const toJsonFactory = _$TestRequest$DataToJson;
  Map<String, dynamic> toJson() => _$TestRequest$DataToJson(this);

  @JsonKey(name: 'media', includeIfNull: false)
  final dynamic media;
  @JsonKey(name: 'MultiMedia', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> multiMedia;
  static const fromJsonFactory = _$TestRequest$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestRequest$Data &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.multiMedia, multiMedia) ||
                const DeepCollectionEquality()
                    .equals(other.multiMedia, multiMedia)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(multiMedia) ^
      runtimeType.hashCode;
}

extension $TestRequest$DataExtension on TestRequest$Data {
  TestRequest$Data copyWith({dynamic media, List<Object>? multiMedia}) {
    return TestRequest$Data(
        media: media ?? this.media, multiMedia: multiMedia ?? this.multiMedia);
  }

  TestRequest$Data copyWithWrapped(
      {Wrapped<dynamic>? media, Wrapped<List<Object>>? multiMedia}) {
    return TestRequest$Data(
        media: (media != null ? media.value : this.media),
        multiMedia: (multiMedia != null ? multiMedia.value : this.multiMedia));
  }
}

@JsonSerializable(explicitToJson: true)
class TestListResponse$Meta {
  TestListResponse$Meta({
    this.pagination,
  });

  factory TestListResponse$Meta.fromJson(Map<String, dynamic> json) =>
      _$TestListResponse$MetaFromJson(json);

  static const toJsonFactory = _$TestListResponse$MetaToJson;
  Map<String, dynamic> toJson() => _$TestListResponse$MetaToJson(this);

  @JsonKey(name: 'pagination', includeIfNull: false)
  final TestListResponse$Meta$Pagination? pagination;
  static const fromJsonFactory = _$TestListResponse$MetaFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestListResponse$Meta &&
            (identical(other.pagination, pagination) ||
                const DeepCollectionEquality()
                    .equals(other.pagination, pagination)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pagination) ^ runtimeType.hashCode;
}

extension $TestListResponse$MetaExtension on TestListResponse$Meta {
  TestListResponse$Meta copyWith(
      {TestListResponse$Meta$Pagination? pagination}) {
    return TestListResponse$Meta(pagination: pagination ?? this.pagination);
  }

  TestListResponse$Meta copyWithWrapped(
      {Wrapped<TestListResponse$Meta$Pagination?>? pagination}) {
    return TestListResponse$Meta(
        pagination: (pagination != null ? pagination.value : this.pagination));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media {
  Test$Media({
    this.data,
  });

  factory Test$Media.fromJson(Map<String, dynamic> json) =>
      _$Test$MediaFromJson(json);

  static const toJsonFactory = _$Test$MediaToJson;
  Map<String, dynamic> toJson() => _$Test$MediaToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data? data;
  static const fromJsonFactory = _$Test$MediaFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MediaExtension on Test$Media {
  Test$Media copyWith({Test$Media$Data? data}) {
    return Test$Media(data: data ?? this.data);
  }

  Test$Media copyWithWrapped({Wrapped<Test$Media$Data?>? data}) {
    return Test$Media(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia {
  Test$MultiMedia({
    this.data,
  });

  factory Test$MultiMedia.fromJson(Map<String, dynamic> json) =>
      _$Test$MultiMediaFromJson(json);

  static const toJsonFactory = _$Test$MultiMediaToJson;
  Map<String, dynamic> toJson() => _$Test$MultiMediaToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Test$MultiMedia$Data$Item>? data;
  static const fromJsonFactory = _$Test$MultiMediaFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MultiMediaExtension on Test$MultiMedia {
  Test$MultiMedia copyWith({List<Test$MultiMedia$Data$Item>? data}) {
    return Test$MultiMedia(data: data ?? this.data);
  }

  Test$MultiMedia copyWithWrapped(
      {Wrapped<List<Test$MultiMedia$Data$Item>?>? data}) {
    return Test$MultiMedia(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$CreatedBy {
  Test$CreatedBy({
    this.data,
  });

  factory Test$CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$Test$CreatedByFromJson(json);

  static const toJsonFactory = _$Test$CreatedByToJson;
  Map<String, dynamic> toJson() => _$Test$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$CreatedBy$Data? data;
  static const fromJsonFactory = _$Test$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$CreatedByExtension on Test$CreatedBy {
  Test$CreatedBy copyWith({Test$CreatedBy$Data? data}) {
    return Test$CreatedBy(data: data ?? this.data);
  }

  Test$CreatedBy copyWithWrapped({Wrapped<Test$CreatedBy$Data?>? data}) {
    return Test$CreatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$UpdatedBy {
  Test$UpdatedBy({
    this.data,
  });

  factory Test$UpdatedBy.fromJson(Map<String, dynamic> json) =>
      _$Test$UpdatedByFromJson(json);

  static const toJsonFactory = _$Test$UpdatedByToJson;
  Map<String, dynamic> toJson() => _$Test$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$UpdatedBy$Data? data;
  static const fromJsonFactory = _$Test$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$UpdatedByExtension on Test$UpdatedBy {
  Test$UpdatedBy copyWith({Test$UpdatedBy$Data? data}) {
    return Test$UpdatedBy(data: data ?? this.data);
  }

  Test$UpdatedBy copyWithWrapped({Wrapped<Test$UpdatedBy$Data?>? data}) {
    return Test$UpdatedBy(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadIdIdPost$RequestBody$FileInfo {
  UploadIdIdPost$RequestBody$FileInfo({
    this.name,
    this.alternativeText,
    this.caption,
  });

  factory UploadIdIdPost$RequestBody$FileInfo.fromJson(
          Map<String, dynamic> json) =>
      _$UploadIdIdPost$RequestBody$FileInfoFromJson(json);

  static const toJsonFactory = _$UploadIdIdPost$RequestBody$FileInfoToJson;
  Map<String, dynamic> toJson() =>
      _$UploadIdIdPost$RequestBody$FileInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  static const fromJsonFactory = _$UploadIdIdPost$RequestBody$FileInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadIdIdPost$RequestBody$FileInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality().equals(other.caption, caption)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      runtimeType.hashCode;
}

extension $UploadIdIdPost$RequestBody$FileInfoExtension
    on UploadIdIdPost$RequestBody$FileInfo {
  UploadIdIdPost$RequestBody$FileInfo copyWith(
      {String? name, String? alternativeText, String? caption}) {
    return UploadIdIdPost$RequestBody$FileInfo(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption);
  }

  UploadIdIdPost$RequestBody$FileInfo copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption}) {
    return UploadIdIdPost$RequestBody$FileInfo(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data {
  Example$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Example$CreatedBy$DataFromJson(json);

  static const toJsonFactory = _$Example$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Example$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes? attributes;
  static const fromJsonFactory = _$Example$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$DataExtension on Example$CreatedBy$Data {
  Example$CreatedBy$Data copyWith(
      {double? id, Example$CreatedBy$Data$Attributes? attributes}) {
    return Example$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Example$CreatedBy$Data$Attributes?>? attributes}) {
    return Example$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$UpdatedBy$Data {
  Example$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$UpdatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Example$UpdatedBy$DataFromJson(json);

  static const toJsonFactory = _$Example$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Example$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory = _$Example$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$UpdatedBy$DataExtension on Example$UpdatedBy$Data {
  Example$UpdatedBy$Data copyWith({double? id, Object? attributes}) {
    return Example$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class OrderListResponse$Meta$Pagination {
  OrderListResponse$Meta$Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory OrderListResponse$Meta$Pagination.fromJson(
          Map<String, dynamic> json) =>
      _$OrderListResponse$Meta$PaginationFromJson(json);

  static const toJsonFactory = _$OrderListResponse$Meta$PaginationToJson;
  Map<String, dynamic> toJson() =>
      _$OrderListResponse$Meta$PaginationToJson(this);

  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'pageSize', includeIfNull: false)
  final int? pageSize;
  @JsonKey(name: 'pageCount', includeIfNull: false)
  final int? pageCount;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  static const fromJsonFactory = _$OrderListResponse$Meta$PaginationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderListResponse$Meta$Pagination &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality()
                    .equals(other.pageCount, pageCount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(pageCount) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $OrderListResponse$Meta$PaginationExtension
    on OrderListResponse$Meta$Pagination {
  OrderListResponse$Meta$Pagination copyWith(
      {int? page, int? pageSize, int? pageCount, int? total}) {
    return OrderListResponse$Meta$Pagination(
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        pageCount: pageCount ?? this.pageCount,
        total: total ?? this.total);
  }

  OrderListResponse$Meta$Pagination copyWithWrapped(
      {Wrapped<int?>? page,
      Wrapped<int?>? pageSize,
      Wrapped<int?>? pageCount,
      Wrapped<int?>? total}) {
    return OrderListResponse$Meta$Pagination(
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize),
        pageCount: (pageCount != null ? pageCount.value : this.pageCount),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item {
  Order$Photo$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item.fromJson(Map<String, dynamic> json) =>
      _$Order$Photo$Data$ItemFromJson(json);

  static const toJsonFactory = _$Order$Photo$Data$ItemToJson;
  Map<String, dynamic> toJson() => _$Order$Photo$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes? attributes;
  static const fromJsonFactory = _$Order$Photo$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$ItemExtension on Order$Photo$Data$Item {
  Order$Photo$Data$Item copyWith(
      {double? id, Order$Photo$Data$Item$Attributes? attributes}) {
    return Order$Photo$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Order$Photo$Data$Item$Attributes?>? attributes}) {
    return Order$Photo$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$CreatedBy$Data {
  Order$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$CreatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Order$CreatedBy$DataFromJson(json);

  static const toJsonFactory = _$Order$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Order$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory = _$Order$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$CreatedBy$DataExtension on Order$CreatedBy$Data {
  Order$CreatedBy$Data copyWith({double? id, Object? attributes}) {
    return Order$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$UpdatedBy$Data {
  Order$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$UpdatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Order$UpdatedBy$DataFromJson(json);

  static const toJsonFactory = _$Order$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Order$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory = _$Order$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$UpdatedBy$DataExtension on Order$UpdatedBy$Data {
  Order$UpdatedBy$Data copyWith({double? id, Object? attributes}) {
    return Order$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class TestListResponse$Meta$Pagination {
  TestListResponse$Meta$Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory TestListResponse$Meta$Pagination.fromJson(
          Map<String, dynamic> json) =>
      _$TestListResponse$Meta$PaginationFromJson(json);

  static const toJsonFactory = _$TestListResponse$Meta$PaginationToJson;
  Map<String, dynamic> toJson() =>
      _$TestListResponse$Meta$PaginationToJson(this);

  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'pageSize', includeIfNull: false)
  final int? pageSize;
  @JsonKey(name: 'pageCount', includeIfNull: false)
  final int? pageCount;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  static const fromJsonFactory = _$TestListResponse$Meta$PaginationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestListResponse$Meta$Pagination &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.pageCount, pageCount) ||
                const DeepCollectionEquality()
                    .equals(other.pageCount, pageCount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(pageCount) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $TestListResponse$Meta$PaginationExtension
    on TestListResponse$Meta$Pagination {
  TestListResponse$Meta$Pagination copyWith(
      {int? page, int? pageSize, int? pageCount, int? total}) {
    return TestListResponse$Meta$Pagination(
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        pageCount: pageCount ?? this.pageCount,
        total: total ?? this.total);
  }

  TestListResponse$Meta$Pagination copyWithWrapped(
      {Wrapped<int?>? page,
      Wrapped<int?>? pageSize,
      Wrapped<int?>? pageCount,
      Wrapped<int?>? total}) {
    return TestListResponse$Meta$Pagination(
        page: (page != null ? page.value : this.page),
        pageSize: (pageSize != null ? pageSize.value : this.pageSize),
        pageCount: (pageCount != null ? pageCount.value : this.pageCount),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data {
  Test$Media$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data.fromJson(Map<String, dynamic> json) =>
      _$Test$Media$DataFromJson(json);

  static const toJsonFactory = _$Test$Media$DataToJson;
  Map<String, dynamic> toJson() => _$Test$Media$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes? attributes;
  static const fromJsonFactory = _$Test$Media$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$DataExtension on Test$Media$Data {
  Test$Media$Data copyWith(
      {double? id, Test$Media$Data$Attributes? attributes}) {
    return Test$Media$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Test$Media$Data$Attributes?>? attributes}) {
    return Test$Media$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item {
  Test$MultiMedia$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$MultiMedia$Data$Item.fromJson(Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$ItemFromJson(json);

  static const toJsonFactory = _$Test$MultiMedia$Data$ItemToJson;
  Map<String, dynamic> toJson() => _$Test$MultiMedia$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes? attributes;
  static const fromJsonFactory = _$Test$MultiMedia$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$ItemExtension on Test$MultiMedia$Data$Item {
  Test$MultiMedia$Data$Item copyWith(
      {double? id, Test$MultiMedia$Data$Item$Attributes? attributes}) {
    return Test$MultiMedia$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$MultiMedia$Data$Item copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Test$MultiMedia$Data$Item$Attributes?>? attributes}) {
    return Test$MultiMedia$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$CreatedBy$Data {
  Test$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$CreatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Test$CreatedBy$DataFromJson(json);

  static const toJsonFactory = _$Test$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Test$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory = _$Test$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$CreatedBy$DataExtension on Test$CreatedBy$Data {
  Test$CreatedBy$Data copyWith({double? id, Object? attributes}) {
    return Test$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$UpdatedBy$Data {
  Test$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$UpdatedBy$Data.fromJson(Map<String, dynamic> json) =>
      _$Test$UpdatedBy$DataFromJson(json);

  static const toJsonFactory = _$Test$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() => _$Test$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory = _$Test$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$UpdatedBy$DataExtension on Test$UpdatedBy$Data {
  Test$UpdatedBy$Data copyWith({double? id, Object? attributes}) {
    return Test$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes {
  Example$CreatedBy$Data$Attributes({
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.resetPasswordToken,
    this.registrationToken,
    this.isActive,
    this.roles,
    this.blocked,
    this.preferedLanguage,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Example$CreatedBy$Data$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$AttributesFromJson(json);

  static const toJsonFactory = _$Example$CreatedBy$Data$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$AttributesToJson(this);

  @JsonKey(name: 'firstname', includeIfNull: false, defaultValue: '')
  final String? firstname;
  @JsonKey(name: 'lastname', includeIfNull: false, defaultValue: '')
  final String? lastname;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'resetPasswordToken', includeIfNull: false, defaultValue: '')
  final String? resetPasswordToken;
  @JsonKey(name: 'registrationToken', includeIfNull: false, defaultValue: '')
  final String? registrationToken;
  @JsonKey(name: 'isActive', includeIfNull: false)
  final bool? isActive;
  @JsonKey(name: 'roles', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles? roles;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool? blocked;
  @JsonKey(name: 'preferedLanguage', includeIfNull: false, defaultValue: '')
  final String? preferedLanguage;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$Example$CreatedBy$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                const DeepCollectionEquality()
                    .equals(other.resetPasswordToken, resetPasswordToken)) &&
            (identical(other.registrationToken, registrationToken) ||
                const DeepCollectionEquality()
                    .equals(other.registrationToken, registrationToken)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.preferedLanguage, preferedLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.preferedLanguage, preferedLanguage)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(resetPasswordToken) ^
      const DeepCollectionEquality().hash(registrationToken) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(preferedLanguage) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$AttributesExtension
    on Example$CreatedBy$Data$Attributes {
  Example$CreatedBy$Data$Attributes copyWith(
      {String? firstname,
      String? lastname,
      String? username,
      String? email,
      String? resetPasswordToken,
      String? registrationToken,
      bool? isActive,
      Example$CreatedBy$Data$Attributes$Roles? roles,
      bool? blocked,
      String? preferedLanguage,
      DateTime? createdAt,
      DateTime? updatedAt,
      Example$CreatedBy$Data$Attributes$CreatedBy? createdBy,
      Example$CreatedBy$Data$Attributes$UpdatedBy? updatedBy}) {
    return Example$CreatedBy$Data$Attributes(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        username: username ?? this.username,
        email: email ?? this.email,
        resetPasswordToken: resetPasswordToken ?? this.resetPasswordToken,
        registrationToken: registrationToken ?? this.registrationToken,
        isActive: isActive ?? this.isActive,
        roles: roles ?? this.roles,
        blocked: blocked ?? this.blocked,
        preferedLanguage: preferedLanguage ?? this.preferedLanguage,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Example$CreatedBy$Data$Attributes copyWithWrapped(
      {Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<String?>? username,
      Wrapped<String?>? email,
      Wrapped<String?>? resetPasswordToken,
      Wrapped<String?>? registrationToken,
      Wrapped<bool?>? isActive,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles?>? roles,
      Wrapped<bool?>? blocked,
      Wrapped<String?>? preferedLanguage,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Example$CreatedBy$Data$Attributes$CreatedBy?>? createdBy,
      Wrapped<Example$CreatedBy$Data$Attributes$UpdatedBy?>? updatedBy}) {
    return Example$CreatedBy$Data$Attributes(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        username: (username != null ? username.value : this.username),
        email: (email != null ? email.value : this.email),
        resetPasswordToken: (resetPasswordToken != null
            ? resetPasswordToken.value
            : this.resetPasswordToken),
        registrationToken: (registrationToken != null
            ? registrationToken.value
            : this.registrationToken),
        isActive: (isActive != null ? isActive.value : this.isActive),
        roles: (roles != null ? roles.value : this.roles),
        blocked: (blocked != null ? blocked.value : this.blocked),
        preferedLanguage: (preferedLanguage != null
            ? preferedLanguage.value
            : this.preferedLanguage),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.related,
    this.folder,
    this.folderPath,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$AttributesFromJson(json);

  static const toJsonFactory = _$Order$Photo$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$AttributesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final dynamic formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'providerMetadata', includeIfNull: false)
  final dynamic providerMetadata;
  @JsonKey(name: 'related', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Related? related;
  @JsonKey(name: 'folder', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder? folder;
  @JsonKey(name: 'folderPath', includeIfNull: false, defaultValue: '')
  final String? folderPath;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$Order$Photo$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality()
                    .equals(other.related, related)) &&
            (identical(other.folder, folder) ||
                const DeepCollectionEquality().equals(other.folder, folder)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(related) ^
      const DeepCollectionEquality().hash(folder) ^
      const DeepCollectionEquality().hash(folderPath) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$AttributesExtension
    on Order$Photo$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes copyWith(
      {String? name,
      String? alternativeText,
      String? caption,
      int? width,
      int? height,
      dynamic formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      dynamic providerMetadata,
      Order$Photo$Data$Item$Attributes$Related? related,
      Order$Photo$Data$Item$Attributes$Folder? folder,
      String? folderPath,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$CreatedBy? createdBy,
      Order$Photo$Data$Item$Attributes$UpdatedBy? updatedBy}) {
    return Order$Photo$Data$Item$Attributes(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        related: related ?? this.related,
        folder: folder ?? this.folder,
        folderPath: folderPath ?? this.folderPath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption,
      Wrapped<int?>? width,
      Wrapped<int?>? height,
      Wrapped<dynamic>? formats,
      Wrapped<String?>? hash,
      Wrapped<String?>? ext,
      Wrapped<String?>? mime,
      Wrapped<double?>? size,
      Wrapped<String?>? url,
      Wrapped<String?>? previewUrl,
      Wrapped<String?>? provider,
      Wrapped<dynamic>? providerMetadata,
      Wrapped<Order$Photo$Data$Item$Attributes$Related?>? related,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder?>? folder,
      Wrapped<String?>? folderPath,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Order$Photo$Data$Item$Attributes$CreatedBy?>? createdBy,
      Wrapped<Order$Photo$Data$Item$Attributes$UpdatedBy?>? updatedBy}) {
    return Order$Photo$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        related: (related != null ? related.value : this.related),
        folder: (folder != null ? folder.value : this.folder),
        folderPath: (folderPath != null ? folderPath.value : this.folderPath),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes {
  Test$Media$Data$Attributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.related,
    this.folder,
    this.folderPath,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes.fromJson(Map<String, dynamic> json) =>
      _$Test$Media$Data$AttributesFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$AttributesToJson;
  Map<String, dynamic> toJson() => _$Test$Media$Data$AttributesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final dynamic formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'providerMetadata', includeIfNull: false)
  final dynamic providerMetadata;
  @JsonKey(name: 'related', includeIfNull: false)
  final Test$Media$Data$Attributes$Related? related;
  @JsonKey(name: 'folder', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder? folder;
  @JsonKey(name: 'folderPath', includeIfNull: false, defaultValue: '')
  final String? folderPath;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$Test$Media$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality()
                    .equals(other.related, related)) &&
            (identical(other.folder, folder) ||
                const DeepCollectionEquality().equals(other.folder, folder)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(related) ^
      const DeepCollectionEquality().hash(folder) ^
      const DeepCollectionEquality().hash(folderPath) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$AttributesExtension on Test$Media$Data$Attributes {
  Test$Media$Data$Attributes copyWith(
      {String? name,
      String? alternativeText,
      String? caption,
      int? width,
      int? height,
      dynamic formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      dynamic providerMetadata,
      Test$Media$Data$Attributes$Related? related,
      Test$Media$Data$Attributes$Folder? folder,
      String? folderPath,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$CreatedBy? createdBy,
      Test$Media$Data$Attributes$UpdatedBy? updatedBy}) {
    return Test$Media$Data$Attributes(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        related: related ?? this.related,
        folder: folder ?? this.folder,
        folderPath: folderPath ?? this.folderPath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption,
      Wrapped<int?>? width,
      Wrapped<int?>? height,
      Wrapped<dynamic>? formats,
      Wrapped<String?>? hash,
      Wrapped<String?>? ext,
      Wrapped<String?>? mime,
      Wrapped<double?>? size,
      Wrapped<String?>? url,
      Wrapped<String?>? previewUrl,
      Wrapped<String?>? provider,
      Wrapped<dynamic>? providerMetadata,
      Wrapped<Test$Media$Data$Attributes$Related?>? related,
      Wrapped<Test$Media$Data$Attributes$Folder?>? folder,
      Wrapped<String?>? folderPath,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Test$Media$Data$Attributes$CreatedBy?>? createdBy,
      Wrapped<Test$Media$Data$Attributes$UpdatedBy?>? updatedBy}) {
    return Test$Media$Data$Attributes(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        related: (related != null ? related.value : this.related),
        folder: (folder != null ? folder.value : this.folder),
        folderPath: (folderPath != null ? folderPath.value : this.folderPath),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes {
  Test$MultiMedia$Data$Item$Attributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.related,
    this.folder,
    this.folderPath,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$MultiMedia$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$AttributesFromJson(json);

  static const toJsonFactory = _$Test$MultiMedia$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$AttributesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final dynamic formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'providerMetadata', includeIfNull: false)
  final dynamic providerMetadata;
  @JsonKey(name: 'related', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$Related? related;
  @JsonKey(name: 'folder', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$Folder? folder;
  @JsonKey(name: 'folderPath', includeIfNull: false, defaultValue: '')
  final String? folderPath;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$UpdatedBy? updatedBy;
  static const fromJsonFactory = _$Test$MultiMedia$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality()
                    .equals(other.related, related)) &&
            (identical(other.folder, folder) ||
                const DeepCollectionEquality().equals(other.folder, folder)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(related) ^
      const DeepCollectionEquality().hash(folder) ^
      const DeepCollectionEquality().hash(folderPath) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$AttributesExtension
    on Test$MultiMedia$Data$Item$Attributes {
  Test$MultiMedia$Data$Item$Attributes copyWith(
      {String? name,
      String? alternativeText,
      String? caption,
      int? width,
      int? height,
      dynamic formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      dynamic providerMetadata,
      Test$MultiMedia$Data$Item$Attributes$Related? related,
      Test$MultiMedia$Data$Item$Attributes$Folder? folder,
      String? folderPath,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$MultiMedia$Data$Item$Attributes$CreatedBy? createdBy,
      Test$MultiMedia$Data$Item$Attributes$UpdatedBy? updatedBy}) {
    return Test$MultiMedia$Data$Item$Attributes(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        related: related ?? this.related,
        folder: folder ?? this.folder,
        folderPath: folderPath ?? this.folderPath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$MultiMedia$Data$Item$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption,
      Wrapped<int?>? width,
      Wrapped<int?>? height,
      Wrapped<dynamic>? formats,
      Wrapped<String?>? hash,
      Wrapped<String?>? ext,
      Wrapped<String?>? mime,
      Wrapped<double?>? size,
      Wrapped<String?>? url,
      Wrapped<String?>? previewUrl,
      Wrapped<String?>? provider,
      Wrapped<dynamic>? providerMetadata,
      Wrapped<Test$MultiMedia$Data$Item$Attributes$Related?>? related,
      Wrapped<Test$MultiMedia$Data$Item$Attributes$Folder?>? folder,
      Wrapped<String?>? folderPath,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Test$MultiMedia$Data$Item$Attributes$CreatedBy?>? createdBy,
      Wrapped<Test$MultiMedia$Data$Item$Attributes$UpdatedBy?>? updatedBy}) {
    return Test$MultiMedia$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        related: (related != null ? related.value : this.related),
        folder: (folder != null ? folder.value : this.folder),
        folderPath: (folderPath != null ? folderPath.value : this.folderPath),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles {
  Example$CreatedBy$Data$Attributes$Roles({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$RolesFromJson(json);

  static const toJsonFactory = _$Example$CreatedBy$Data$Attributes$RolesToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$RolesToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Example$CreatedBy$Data$Attributes$Roles$Data$Item>? data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$RolesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$RolesExtension
    on Example$CreatedBy$Data$Attributes$Roles {
  Example$CreatedBy$Data$Attributes$Roles copyWith(
      {List<Example$CreatedBy$Data$Attributes$Roles$Data$Item>? data}) {
    return Example$CreatedBy$Data$Attributes$Roles(data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles copyWithWrapped(
      {Wrapped<List<Example$CreatedBy$Data$Attributes$Roles$Data$Item>?>?
          data}) {
    return Example$CreatedBy$Data$Attributes$Roles(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$CreatedByFromJson(json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$CreatedBy$Data? data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$CreatedByExtension
    on Example$CreatedBy$Data$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$CreatedBy copyWith(
      {Example$CreatedBy$Data$Attributes$CreatedBy$Data? data}) {
    return Example$CreatedBy$Data$Attributes$CreatedBy(data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<Example$CreatedBy$Data$Attributes$CreatedBy$Data?>? data}) {
    return Example$CreatedBy$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$UpdatedByFromJson(json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$UpdatedBy$Data? data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$UpdatedByExtension
    on Example$CreatedBy$Data$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$UpdatedBy copyWith(
      {Example$CreatedBy$Data$Attributes$UpdatedBy$Data? data}) {
    return Example$CreatedBy$Data$Attributes$UpdatedBy(data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<Example$CreatedBy$Data$Attributes$UpdatedBy$Data?>? data}) {
    return Example$CreatedBy$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Related {
  Order$Photo$Data$Item$Attributes$Related({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Related.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$RelatedFromJson(json);

  static const toJsonFactory = _$Order$Photo$Data$Item$Attributes$RelatedToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$RelatedToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Order$Photo$Data$Item$Attributes$Related$Data$Item>? data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$RelatedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Related &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$RelatedExtension
    on Order$Photo$Data$Item$Attributes$Related {
  Order$Photo$Data$Item$Attributes$Related copyWith(
      {List<Order$Photo$Data$Item$Attributes$Related$Data$Item>? data}) {
    return Order$Photo$Data$Item$Attributes$Related(data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Related copyWithWrapped(
      {Wrapped<List<Order$Photo$Data$Item$Attributes$Related$Data$Item>?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Related(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder {
  Order$Photo$Data$Item$Attributes$Folder({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$FolderFromJson(json);

  static const toJsonFactory = _$Order$Photo$Data$Item$Attributes$FolderToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$FolderToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data? data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$FolderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$FolderExtension
    on Order$Photo$Data$Item$Attributes$Folder {
  Order$Photo$Data$Item$Attributes$Folder copyWith(
      {Order$Photo$Data$Item$Attributes$Folder$Data? data}) {
    return Order$Photo$Data$Item$Attributes$Folder(data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder copyWithWrapped(
      {Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data?>? data}) {
    return Order$Photo$Data$Item$Attributes$Folder(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$CreatedByFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$CreatedBy$Data? data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$CreatedBy copyWith(
      {Order$Photo$Data$Item$Attributes$CreatedBy$Data? data}) {
    return Order$Photo$Data$Item$Attributes$CreatedBy(data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<Order$Photo$Data$Item$Attributes$CreatedBy$Data?>? data}) {
    return Order$Photo$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$UpdatedByFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$UpdatedBy$Data? data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$UpdatedBy copyWith(
      {Order$Photo$Data$Item$Attributes$UpdatedBy$Data? data}) {
    return Order$Photo$Data$Item$Attributes$UpdatedBy(data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<Order$Photo$Data$Item$Attributes$UpdatedBy$Data?>? data}) {
    return Order$Photo$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Related {
  Test$Media$Data$Attributes$Related({
    this.data,
  });

  factory Test$Media$Data$Attributes$Related.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$RelatedFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$Attributes$RelatedToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$RelatedToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Test$Media$Data$Attributes$Related$Data$Item>? data;
  static const fromJsonFactory = _$Test$Media$Data$Attributes$RelatedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Related &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$RelatedExtension
    on Test$Media$Data$Attributes$Related {
  Test$Media$Data$Attributes$Related copyWith(
      {List<Test$Media$Data$Attributes$Related$Data$Item>? data}) {
    return Test$Media$Data$Attributes$Related(data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Related copyWithWrapped(
      {Wrapped<List<Test$Media$Data$Attributes$Related$Data$Item>?>? data}) {
    return Test$Media$Data$Attributes$Related(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder {
  Test$Media$Data$Attributes$Folder({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$FolderFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$Attributes$FolderToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$FolderToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data? data;
  static const fromJsonFactory = _$Test$Media$Data$Attributes$FolderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$FolderExtension
    on Test$Media$Data$Attributes$Folder {
  Test$Media$Data$Attributes$Folder copyWith(
      {Test$Media$Data$Attributes$Folder$Data? data}) {
    return Test$Media$Data$Attributes$Folder(data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder copyWithWrapped(
      {Wrapped<Test$Media$Data$Attributes$Folder$Data?>? data}) {
    return Test$Media$Data$Attributes$Folder(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$CreatedByFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$CreatedBy$Data? data;
  static const fromJsonFactory = _$Test$Media$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$CreatedBy copyWith(
      {Test$Media$Data$Attributes$CreatedBy$Data? data}) {
    return Test$Media$Data$Attributes$CreatedBy(data: data ?? this.data);
  }

  Test$Media$Data$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<Test$Media$Data$Attributes$CreatedBy$Data?>? data}) {
    return Test$Media$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$UpdatedByFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$UpdatedBy$Data? data;
  static const fromJsonFactory = _$Test$Media$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$UpdatedBy copyWith(
      {Test$Media$Data$Attributes$UpdatedBy$Data? data}) {
    return Test$Media$Data$Attributes$UpdatedBy(data: data ?? this.data);
  }

  Test$Media$Data$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<Test$Media$Data$Attributes$UpdatedBy$Data?>? data}) {
    return Test$Media$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$Related {
  Test$MultiMedia$Data$Item$Attributes$Related({
    this.data,
  });

  factory Test$MultiMedia$Data$Item$Attributes$Related.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$RelatedFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$RelatedToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$RelatedToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Test$MultiMedia$Data$Item$Attributes$Related$Data$Item>? data;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$RelatedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$Related &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$RelatedExtension
    on Test$MultiMedia$Data$Item$Attributes$Related {
  Test$MultiMedia$Data$Item$Attributes$Related copyWith(
      {List<Test$MultiMedia$Data$Item$Attributes$Related$Data$Item>? data}) {
    return Test$MultiMedia$Data$Item$Attributes$Related(
        data: data ?? this.data);
  }

  Test$MultiMedia$Data$Item$Attributes$Related copyWithWrapped(
      {Wrapped<List<Test$MultiMedia$Data$Item$Attributes$Related$Data$Item>?>?
          data}) {
    return Test$MultiMedia$Data$Item$Attributes$Related(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$Folder {
  Test$MultiMedia$Data$Item$Attributes$Folder({
    this.data,
  });

  factory Test$MultiMedia$Data$Item$Attributes$Folder.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$FolderFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$FolderToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$FolderToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$Folder$Data? data;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$FolderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$Folder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$FolderExtension
    on Test$MultiMedia$Data$Item$Attributes$Folder {
  Test$MultiMedia$Data$Item$Attributes$Folder copyWith(
      {Test$MultiMedia$Data$Item$Attributes$Folder$Data? data}) {
    return Test$MultiMedia$Data$Item$Attributes$Folder(data: data ?? this.data);
  }

  Test$MultiMedia$Data$Item$Attributes$Folder copyWithWrapped(
      {Wrapped<Test$MultiMedia$Data$Item$Attributes$Folder$Data?>? data}) {
    return Test$MultiMedia$Data$Item$Attributes$Folder(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$CreatedBy {
  Test$MultiMedia$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Test$MultiMedia$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$CreatedByFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data? data;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$CreatedByExtension
    on Test$MultiMedia$Data$Item$Attributes$CreatedBy {
  Test$MultiMedia$Data$Item$Attributes$CreatedBy copyWith(
      {Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data? data}) {
    return Test$MultiMedia$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$MultiMedia$Data$Item$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data?>? data}) {
    return Test$MultiMedia$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$UpdatedBy {
  Test$MultiMedia$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$MultiMedia$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedByFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data? data;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$UpdatedByExtension
    on Test$MultiMedia$Data$Item$Attributes$UpdatedBy {
  Test$MultiMedia$Data$Item$Attributes$UpdatedBy copyWith(
      {Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data? data}) {
    return Test$MultiMedia$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$MultiMedia$Data$Item$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data?>? data}) {
    return Test$MultiMedia$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$ItemExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item copyWith(
      {double? id,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
          attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?>?
          attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$CreatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$CreatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$UpdatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$UpdatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Related$Data$Item {
  Order$Photo$Data$Item$Attributes$Related$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Related$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Related$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Related$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Related$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Related$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Related$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Related$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Related$Data$Item {
  Order$Photo$Data$Item$Attributes$Related$Data$Item copyWith(
      {double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Related$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Related$Data$Item copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Related$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$DataFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data copyWith(
      {double? id,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes?>?
          attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$CreatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$CreatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$UpdatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Related$Data$Item {
  Test$Media$Data$Attributes$Related$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Related$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Related$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Related$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Related$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Related$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Related$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Related$Data$ItemExtension
    on Test$Media$Data$Attributes$Related$Data$Item {
  Test$Media$Data$Attributes$Related$Data$Item copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Related$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Related$Data$Item copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Related$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data {
  Test$Media$Data$Attributes$Folder$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$DataFromJson(json);

  static const toJsonFactory = _$Test$Media$Data$Attributes$Folder$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$DataExtension
    on Test$Media$Data$Attributes$Folder$Data {
  Test$Media$Data$Attributes$Folder$Data copyWith(
      {double? id,
      Test$Media$Data$Attributes$Folder$Data$Attributes? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes?>?
          attributes}) {
    return Test$Media$Data$Attributes$Folder$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$CreatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$CreatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$UpdatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$UpdatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$Related$Data$Item {
  Test$MultiMedia$Data$Item$Attributes$Related$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$MultiMedia$Data$Item$Attributes$Related$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$Related$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemExtension
    on Test$MultiMedia$Data$Item$Attributes$Related$Data$Item {
  Test$MultiMedia$Data$Item$Attributes$Related$Data$Item copyWith(
      {double? id, Object? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$Related$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$MultiMedia$Data$Item$Attributes$Related$Data$Item copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$Related$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$Folder$Data {
  Test$MultiMedia$Data$Item$Attributes$Folder$Data({
    this.id,
    this.attributes,
  });

  factory Test$MultiMedia$Data$Item$Attributes$Folder$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$Folder$DataFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$Folder$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$Folder$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$Folder$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$Folder$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$Folder$DataExtension
    on Test$MultiMedia$Data$Item$Attributes$Folder$Data {
  Test$MultiMedia$Data$Item$Attributes$Folder$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$Folder$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$MultiMedia$Data$Item$Attributes$Folder$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$Folder$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data {
  Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataExtension
    on Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data {
  Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data {
  Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataFromJson(json);

  static const toJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataExtension
    on Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data {
  Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes({
    this.name,
    this.code,
    this.description,
    this.users,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'users', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?
      users;
  @JsonKey(name: 'permissions', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
      permissions;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes copyWith(
      {String? name,
      String? code,
      String? description,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users? users,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
          permissions,
      DateTime? createdAt,
      DateTime? updatedAt,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
          createdBy,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        users: users ?? this.users,
        permissions: permissions ?? this.permissions,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? code,
      Wrapped<String?>? description,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?>?
          users,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?>?
          permissions,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?>?
          createdBy,
      Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?>?
          updatedBy}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        code: (code != null ? code.value : this.code),
        description:
            (description != null ? description.value : this.description),
        users: (users != null ? users.value : this.users),
        permissions:
            (permissions != null ? permissions.value : this.permissions),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes({
    this.name,
    this.pathId,
    this.parent,
    this.children,
    this.files,
    this.path,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesFromJson(json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'pathId', includeIfNull: false)
  final int? pathId;
  @JsonKey(name: 'parent', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent? parent;
  @JsonKey(name: 'children', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children?
      children;
  @JsonKey(name: 'files', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files? files;
  @JsonKey(name: 'path', includeIfNull: false, defaultValue: '')
  final String? path;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.pathId, pathId) ||
                const DeepCollectionEquality().equals(other.pathId, pathId)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(pathId) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(children) ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$AttributesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes copyWith(
      {String? name,
      int? pathId,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent? parent,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children?
          children,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files? files,
      String? path,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy?
          createdBy,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes(
        name: name ?? this.name,
        pathId: pathId ?? this.pathId,
        parent: parent ?? this.parent,
        children: children ?? this.children,
        files: files ?? this.files,
        path: path ?? this.path,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<int?>? pathId,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent?>?
          parent,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children?>?
          children,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files?>?
          files,
      Wrapped<String?>? path,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy?>?
          createdBy,
      Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy?>?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes(
        name: (name != null ? name.value : this.name),
        pathId: (pathId != null ? pathId.value : this.pathId),
        parent: (parent != null ? parent.value : this.parent),
        children: (children != null ? children.value : this.children),
        files: (files != null ? files.value : this.files),
        path: (path != null ? path.value : this.path),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes({
    this.name,
    this.pathId,
    this.parent,
    this.children,
    this.files,
    this.path,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$AttributesFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$AttributesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'pathId', includeIfNull: false)
  final int? pathId;
  @JsonKey(name: 'parent', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Parent? parent;
  @JsonKey(name: 'children', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Children? children;
  @JsonKey(name: 'files', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files? files;
  @JsonKey(name: 'path', includeIfNull: false, defaultValue: '')
  final String? path;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy? createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy? updatedBy;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.pathId, pathId) ||
                const DeepCollectionEquality().equals(other.pathId, pathId)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(pathId) ^
      const DeepCollectionEquality().hash(parent) ^
      const DeepCollectionEquality().hash(children) ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$AttributesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes copyWith(
      {String? name,
      int? pathId,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Parent? parent,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Children? children,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files? files,
      String? path,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy? createdBy,
      Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy? updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes(
        name: name ?? this.name,
        pathId: pathId ?? this.pathId,
        parent: parent ?? this.parent,
        children: children ?? this.children,
        files: files ?? this.files,
        path: path ?? this.path,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<int?>? pathId,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Parent?>?
          parent,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Children?>?
          children,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files?>? files,
      Wrapped<String?>? path,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy?>?
          createdBy,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy?>?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes(
        name: (name != null ? name.value : this.name),
        pathId: (pathId != null ? pathId.value : this.pathId),
        parent: (parent != null ? parent.value : this.parent),
        children: (children != null ? children.value : this.children),
        files: (files != null ? files.value : this.files),
        path: (path != null ? path.value : this.path),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users copyWith(
      {List<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
          data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
      copyWithWrapped(
          {Wrapped<
                  List<
                      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions copyWith(
      {List<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
          data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
      copyWithWrapped(
          {Wrapped<
                  List<
                      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy copyWith(
      {Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
          data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy copyWith(
      {Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
          data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent copyWith(
      {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent copyWithWrapped(
      {Wrapped<
              Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children copyWith(
      {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children copyWithWrapped(
      {Wrapped<
              List<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item>?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files copyWith(
      {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files copyWithWrapped(
      {Wrapped<
              List<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item>?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy copyWith(
      {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<
              Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy copyWith(
      {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<
              Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data?>?
          data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Parent {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Parent.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data? data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Parent &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$ParentExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Parent {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent copyWith(
      {Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data? data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Parent(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent copyWithWrapped(
      {Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data?>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Parent(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Children {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Children({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Children.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Children &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Children {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Children copyWith(
      {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Children(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Children copyWithWrapped(
      {Wrapped<
              List<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item>?>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Children(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesFromJson(json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$FilesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files copyWith(
      {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files copyWithWrapped(
      {Wrapped<
              List<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item>?>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data? data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy copyWith(
      {Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy copyWithWrapped(
      {Wrapped<
              Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data?>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByToJson(this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data? data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy copyWith(
      {Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy copyWithWrapped(
      {Wrapped<
              Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data?>?
          data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWith(
          {double? id,
          Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
              attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?>?
              attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data copyWith(
      {double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item copyWith(
      {double? id,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?
          attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?>?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data copyWithWrapped(
      {Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item copyWith(
      {double? id,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?
          attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item copyWithWrapped(
      {Wrapped<double?>? id,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes?>?
          attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data copyWith(
      {double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes({
    this.action,
    this.subject,
    this.properties,
    this.conditions,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'action', includeIfNull: false, defaultValue: '')
  final String? action;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String? subject;
  @JsonKey(name: 'properties', includeIfNull: false)
  final dynamic properties;
  @JsonKey(name: 'conditions', includeIfNull: false)
  final dynamic conditions;
  @JsonKey(name: 'role', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
      role;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes copyWith(
      {String? action,
      String? subject,
      dynamic properties,
      dynamic conditions,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
          role,
      DateTime? createdAt,
      DateTime? updatedAt,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
          createdBy,
      Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: action ?? this.action,
        subject: subject ?? this.subject,
        properties: properties ?? this.properties,
        conditions: conditions ?? this.conditions,
        role: role ?? this.role,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? action,
          Wrapped<String?>? subject,
          Wrapped<dynamic>? properties,
          Wrapped<dynamic>? conditions,
          Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?>?
              role,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: (action != null ? action.value : this.action),
        subject: (subject != null ? subject.value : this.subject),
        properties: (properties != null ? properties.value : this.properties),
        conditions: (conditions != null ? conditions.value : this.conditions),
        role: (role != null ? role.value : this.role),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.related,
    this.folder,
    this.folderPath,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final dynamic formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'providerMetadata', includeIfNull: false)
  final dynamic providerMetadata;
  @JsonKey(name: 'related', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?
      related;
  @JsonKey(name: 'folder', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?
      folder;
  @JsonKey(name: 'folderPath', includeIfNull: false, defaultValue: '')
  final String? folderPath;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality()
                    .equals(other.related, related)) &&
            (identical(other.folder, folder) ||
                const DeepCollectionEquality().equals(other.folder, folder)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(related) ^
      const DeepCollectionEquality().hash(folder) ^
      const DeepCollectionEquality().hash(folderPath) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes copyWith(
      {String? name,
      String? alternativeText,
      String? caption,
      int? width,
      int? height,
      dynamic formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      dynamic providerMetadata,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?
          related,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?
          folder,
      String? folderPath,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?
          createdBy,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        related: related ?? this.related,
        folder: folder ?? this.folder,
        folderPath: folderPath ?? this.folderPath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? name,
          Wrapped<String?>? alternativeText,
          Wrapped<String?>? caption,
          Wrapped<int?>? width,
          Wrapped<int?>? height,
          Wrapped<dynamic>? formats,
          Wrapped<String?>? hash,
          Wrapped<String?>? ext,
          Wrapped<String?>? mime,
          Wrapped<double?>? size,
          Wrapped<String?>? url,
          Wrapped<String?>? previewUrl,
          Wrapped<String?>? provider,
          Wrapped<dynamic>? providerMetadata,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?>?
              related,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?>?
              folder,
          Wrapped<String?>? folderPath,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        related: (related != null ? related.value : this.related),
        folder: (folder != null ? folder.value : this.folder),
        folderPath: (folderPath != null ? folderPath.value : this.folderPath),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.related,
    this.folder,
    this.folderPath,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'alternativeText', includeIfNull: false, defaultValue: '')
  final String? alternativeText;
  @JsonKey(name: 'caption', includeIfNull: false, defaultValue: '')
  final String? caption;
  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  @JsonKey(name: 'formats', includeIfNull: false)
  final dynamic formats;
  @JsonKey(name: 'hash', includeIfNull: false, defaultValue: '')
  final String? hash;
  @JsonKey(name: 'ext', includeIfNull: false, defaultValue: '')
  final String? ext;
  @JsonKey(name: 'mime', includeIfNull: false, defaultValue: '')
  final String? mime;
  @JsonKey(name: 'size', includeIfNull: false)
  final double? size;
  @JsonKey(name: 'url', includeIfNull: false, defaultValue: '')
  final String? url;
  @JsonKey(name: 'previewUrl', includeIfNull: false, defaultValue: '')
  final String? previewUrl;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'providerMetadata', includeIfNull: false)
  final dynamic providerMetadata;
  @JsonKey(name: 'related', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?
      related;
  @JsonKey(name: 'folder', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?
      folder;
  @JsonKey(name: 'folderPath', includeIfNull: false, defaultValue: '')
  final String? folderPath;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alternativeText, alternativeText) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeText, alternativeText)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.formats, formats) ||
                const DeepCollectionEquality()
                    .equals(other.formats, formats)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.ext, ext) ||
                const DeepCollectionEquality().equals(other.ext, ext)) &&
            (identical(other.mime, mime) ||
                const DeepCollectionEquality().equals(other.mime, mime)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.previewUrl, previewUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewUrl, previewUrl)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.providerMetadata, providerMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.providerMetadata, providerMetadata)) &&
            (identical(other.related, related) ||
                const DeepCollectionEquality()
                    .equals(other.related, related)) &&
            (identical(other.folder, folder) ||
                const DeepCollectionEquality().equals(other.folder, folder)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alternativeText) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(formats) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(ext) ^
      const DeepCollectionEquality().hash(mime) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(previewUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(providerMetadata) ^
      const DeepCollectionEquality().hash(related) ^
      const DeepCollectionEquality().hash(folder) ^
      const DeepCollectionEquality().hash(folderPath) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes copyWith(
      {String? name,
      String? alternativeText,
      String? caption,
      int? width,
      int? height,
      dynamic formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      String? previewUrl,
      String? provider,
      dynamic providerMetadata,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?
          related,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?
          folder,
      String? folderPath,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?
          createdBy,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
        name: name ?? this.name,
        alternativeText: alternativeText ?? this.alternativeText,
        caption: caption ?? this.caption,
        width: width ?? this.width,
        height: height ?? this.height,
        formats: formats ?? this.formats,
        hash: hash ?? this.hash,
        ext: ext ?? this.ext,
        mime: mime ?? this.mime,
        size: size ?? this.size,
        url: url ?? this.url,
        previewUrl: previewUrl ?? this.previewUrl,
        provider: provider ?? this.provider,
        providerMetadata: providerMetadata ?? this.providerMetadata,
        related: related ?? this.related,
        folder: folder ?? this.folder,
        folderPath: folderPath ?? this.folderPath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? alternativeText,
      Wrapped<String?>? caption,
      Wrapped<int?>? width,
      Wrapped<int?>? height,
      Wrapped<dynamic>? formats,
      Wrapped<String?>? hash,
      Wrapped<String?>? ext,
      Wrapped<String?>? mime,
      Wrapped<double?>? size,
      Wrapped<String?>? url,
      Wrapped<String?>? previewUrl,
      Wrapped<String?>? provider,
      Wrapped<dynamic>? providerMetadata,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related?>?
          related,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder?>?
          folder,
      Wrapped<String?>? folderPath,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy?>?
          createdBy,
      Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy?>?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        alternativeText: (alternativeText != null
            ? alternativeText.value
            : this.alternativeText),
        caption: (caption != null ? caption.value : this.caption),
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height),
        formats: (formats != null ? formats.value : this.formats),
        hash: (hash != null ? hash.value : this.hash),
        ext: (ext != null ? ext.value : this.ext),
        mime: (mime != null ? mime.value : this.mime),
        size: (size != null ? size.value : this.size),
        url: (url != null ? url.value : this.url),
        previewUrl: (previewUrl != null ? previewUrl.value : this.previewUrl),
        provider: (provider != null ? provider.value : this.provider),
        providerMetadata: (providerMetadata != null
            ? providerMetadata.value
            : this.providerMetadata),
        related: (related != null ? related.value : this.related),
        folder: (folder != null ? folder.value : this.folder),
        folderPath: (folderPath != null ? folderPath.value : this.folderPath),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWith(
          {Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWithWrapped(
          {Wrapped<
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWith(
          {Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
      copyWith(
          {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
      copyWithWrapped(
          {Wrapped<
                  List<
                      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
      copyWith(
          {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
      copyWithWrapped(
          {Wrapped<
                  List<
                      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item>?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataExtension
    on Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
      copyWith(
          {double? id,
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?>?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
      copyWith(
          {double? id,
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes?>?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes({
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.resetPasswordToken,
    this.registrationToken,
    this.isActive,
    this.roles,
    this.blocked,
    this.preferedLanguage,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson(
          this);

  @JsonKey(name: 'firstname', includeIfNull: false, defaultValue: '')
  final String? firstname;
  @JsonKey(name: 'lastname', includeIfNull: false, defaultValue: '')
  final String? lastname;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'resetPasswordToken', includeIfNull: false, defaultValue: '')
  final String? resetPasswordToken;
  @JsonKey(name: 'registrationToken', includeIfNull: false, defaultValue: '')
  final String? registrationToken;
  @JsonKey(name: 'isActive', includeIfNull: false)
  final bool? isActive;
  @JsonKey(name: 'roles', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?
      roles;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool? blocked;
  @JsonKey(name: 'preferedLanguage', includeIfNull: false, defaultValue: '')
  final String? preferedLanguage;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                const DeepCollectionEquality()
                    .equals(other.resetPasswordToken, resetPasswordToken)) &&
            (identical(other.registrationToken, registrationToken) ||
                const DeepCollectionEquality()
                    .equals(other.registrationToken, registrationToken)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.preferedLanguage, preferedLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.preferedLanguage, preferedLanguage)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(resetPasswordToken) ^
      const DeepCollectionEquality().hash(registrationToken) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(preferedLanguage) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes copyWith(
      {String? firstname,
      String? lastname,
      String? username,
      String? email,
      String? resetPasswordToken,
      String? registrationToken,
      bool? isActive,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?
          roles,
      bool? blocked,
      String? preferedLanguage,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?
          createdBy,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        username: username ?? this.username,
        email: email ?? this.email,
        resetPasswordToken: resetPasswordToken ?? this.resetPasswordToken,
        registrationToken: registrationToken ?? this.registrationToken,
        isActive: isActive ?? this.isActive,
        roles: roles ?? this.roles,
        blocked: blocked ?? this.blocked,
        preferedLanguage: preferedLanguage ?? this.preferedLanguage,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
      copyWithWrapped(
          {Wrapped<String?>? firstname,
          Wrapped<String?>? lastname,
          Wrapped<String?>? username,
          Wrapped<String?>? email,
          Wrapped<String?>? resetPasswordToken,
          Wrapped<String?>? registrationToken,
          Wrapped<bool?>? isActive,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?>?
              roles,
          Wrapped<bool?>? blocked,
          Wrapped<String?>? preferedLanguage,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        username: (username != null ? username.value : this.username),
        email: (email != null ? email.value : this.email),
        resetPasswordToken: (resetPasswordToken != null
            ? resetPasswordToken.value
            : this.resetPasswordToken),
        registrationToken: (registrationToken != null
            ? registrationToken.value
            : this.registrationToken),
        isActive: (isActive != null ? isActive.value : this.isActive),
        roles: (roles != null ? roles.value : this.roles),
        blocked: (blocked != null ? blocked.value : this.blocked),
        preferedLanguage: (preferedLanguage != null
            ? preferedLanguage.value
            : this.preferedLanguage),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes({
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.resetPasswordToken,
    this.registrationToken,
    this.isActive,
    this.roles,
    this.blocked,
    this.preferedLanguage,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson(
          this);

  @JsonKey(name: 'firstname', includeIfNull: false, defaultValue: '')
  final String? firstname;
  @JsonKey(name: 'lastname', includeIfNull: false, defaultValue: '')
  final String? lastname;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'resetPasswordToken', includeIfNull: false, defaultValue: '')
  final String? resetPasswordToken;
  @JsonKey(name: 'registrationToken', includeIfNull: false, defaultValue: '')
  final String? registrationToken;
  @JsonKey(name: 'isActive', includeIfNull: false)
  final bool? isActive;
  @JsonKey(name: 'roles', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?
      roles;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool? blocked;
  @JsonKey(name: 'preferedLanguage', includeIfNull: false, defaultValue: '')
  final String? preferedLanguage;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.resetPasswordToken, resetPasswordToken) ||
                const DeepCollectionEquality()
                    .equals(other.resetPasswordToken, resetPasswordToken)) &&
            (identical(other.registrationToken, registrationToken) ||
                const DeepCollectionEquality()
                    .equals(other.registrationToken, registrationToken)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.preferedLanguage, preferedLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.preferedLanguage, preferedLanguage)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(resetPasswordToken) ^
      const DeepCollectionEquality().hash(registrationToken) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(preferedLanguage) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes copyWith(
      {String? firstname,
      String? lastname,
      String? username,
      String? email,
      String? resetPasswordToken,
      String? registrationToken,
      bool? isActive,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?
          roles,
      bool? blocked,
      String? preferedLanguage,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?
          createdBy,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        username: username ?? this.username,
        email: email ?? this.email,
        resetPasswordToken: resetPasswordToken ?? this.resetPasswordToken,
        registrationToken: registrationToken ?? this.registrationToken,
        isActive: isActive ?? this.isActive,
        roles: roles ?? this.roles,
        blocked: blocked ?? this.blocked,
        preferedLanguage: preferedLanguage ?? this.preferedLanguage,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
      copyWithWrapped(
          {Wrapped<String?>? firstname,
          Wrapped<String?>? lastname,
          Wrapped<String?>? username,
          Wrapped<String?>? email,
          Wrapped<String?>? resetPasswordToken,
          Wrapped<String?>? registrationToken,
          Wrapped<bool?>? isActive,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles?>?
              roles,
          Wrapped<bool?>? blocked,
          Wrapped<String?>? preferedLanguage,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        username: (username != null ? username.value : this.username),
        email: (email != null ? email.value : this.email),
        resetPasswordToken: (resetPasswordToken != null
            ? resetPasswordToken.value
            : this.resetPasswordToken),
        registrationToken: (registrationToken != null
            ? registrationToken.value
            : this.registrationToken),
        isActive: (isActive != null ? isActive.value : this.isActive),
        roles: (roles != null ? roles.value : this.roles),
        blocked: (blocked != null ? blocked.value : this.blocked),
        preferedLanguage: (preferedLanguage != null
            ? preferedLanguage.value
            : this.preferedLanguage),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
      copyWith(
          {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
      copyWithWrapped(
          {Wrapped<
                  List<
                      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
      copyWith(
          {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
      copyWithWrapped(
          {Wrapped<
                  List<
                      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item>?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
      copyWith(
          {double? id,
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?>?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
      copyWith(
          {double? id,
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes?>?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes({
    this.name,
    this.code,
    this.description,
    this.users,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'users', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?
      users;
  @JsonKey(name: 'permissions', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
      permissions;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes copyWith(
      {String? name,
      String? code,
      String? description,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?
          users,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
          permissions,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
          createdBy,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        users: users ?? this.users,
        permissions: permissions ?? this.permissions,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? name,
          Wrapped<String?>? code,
          Wrapped<String?>? description,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?>?
              users,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?>?
              permissions,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        code: (code != null ? code.value : this.code),
        description:
            (description != null ? description.value : this.description),
        users: (users != null ? users.value : this.users),
        permissions:
            (permissions != null ? permissions.value : this.permissions),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes({
    this.name,
    this.code,
    this.description,
    this.users,
    this.permissions,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'users', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?
      users;
  @JsonKey(name: 'permissions', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
      permissions;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes copyWith(
      {String? name,
      String? code,
      String? description,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?
          users,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?
          permissions,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?
          createdBy,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        users: users ?? this.users,
        permissions: permissions ?? this.permissions,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? name,
          Wrapped<String?>? code,
          Wrapped<String?>? description,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users?>?
              users,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions?>?
              permissions,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
        name: (name != null ? name.value : this.name),
        code: (code != null ? code.value : this.code),
        description:
            (description != null ? description.value : this.description),
        users: (users != null ? users.value : this.users),
        permissions:
            (permissions != null ? permissions.value : this.permissions),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
      copyWith(
          {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
      copyWithWrapped(
          {Wrapped<
                  List<
                      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
      copyWith(
          {List<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
      copyWithWrapped(
          {Wrapped<
                  List<
                      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
      copyWith(
          {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
      copyWithWrapped(
          {Wrapped<
                  List<
                      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item>?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final List<
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
      copyWith(
          {List<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
      copyWithWrapped(
          {Wrapped<
                  List<
                      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item>?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWith(
          {double? id,
          Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?>?
              attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
      attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWith(
          {double? id,
          Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
      copyWithWrapped(
          {Wrapped<double?>? id,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes?>?
              attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes({
    this.action,
    this.subject,
    this.properties,
    this.conditions,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'action', includeIfNull: false, defaultValue: '')
  final String? action;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String? subject;
  @JsonKey(name: 'properties', includeIfNull: false)
  final dynamic properties;
  @JsonKey(name: 'conditions', includeIfNull: false)
  final dynamic conditions;
  @JsonKey(name: 'role', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
      role;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes copyWith(
      {String? action,
      String? subject,
      dynamic properties,
      dynamic conditions,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
          role,
      DateTime? createdAt,
      DateTime? updatedAt,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
          createdBy,
      Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: action ?? this.action,
        subject: subject ?? this.subject,
        properties: properties ?? this.properties,
        conditions: conditions ?? this.conditions,
        role: role ?? this.role,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? action,
          Wrapped<String?>? subject,
          Wrapped<dynamic>? properties,
          Wrapped<dynamic>? conditions,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?>?
              role,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: (action != null ? action.value : this.action),
        subject: (subject != null ? subject.value : this.subject),
        properties: (properties != null ? properties.value : this.properties),
        conditions: (conditions != null ? conditions.value : this.conditions),
        role: (role != null ? role.value : this.role),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes({
    this.action,
    this.subject,
    this.properties,
    this.conditions,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
          this);

  @JsonKey(name: 'action', includeIfNull: false, defaultValue: '')
  final String? action;
  @JsonKey(name: 'subject', includeIfNull: false, defaultValue: '')
  final String? subject;
  @JsonKey(name: 'properties', includeIfNull: false)
  final dynamic properties;
  @JsonKey(name: 'conditions', includeIfNull: false)
  final dynamic conditions;
  @JsonKey(name: 'role', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
      role;
  @JsonKey(name: 'createdAt', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'createdBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
      createdBy;
  @JsonKey(name: 'updatedBy', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
      updatedBy;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes copyWith(
      {String? action,
      String? subject,
      dynamic properties,
      dynamic conditions,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?
          role,
      DateTime? createdAt,
      DateTime? updatedAt,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?
          createdBy,
      Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?
          updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: action ?? this.action,
        subject: subject ?? this.subject,
        properties: properties ?? this.properties,
        conditions: conditions ?? this.conditions,
        role: role ?? this.role,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
      copyWithWrapped(
          {Wrapped<String?>? action,
          Wrapped<String?>? subject,
          Wrapped<dynamic>? properties,
          Wrapped<dynamic>? conditions,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role?>?
              role,
          Wrapped<DateTime?>? createdAt,
          Wrapped<DateTime?>? updatedAt,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy?>?
              createdBy,
          Wrapped<Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy?>?
              updatedBy}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
        action: (action != null ? action.value : this.action),
        subject: (subject != null ? subject.value : this.subject),
        properties: (properties != null ? properties.value : this.properties),
        conditions: (conditions != null ? conditions.value : this.conditions),
        role: (role != null ? role.value : this.role),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy({
    this.data,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
          this);

  @JsonKey(name: 'data', includeIfNull: false)
  final Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
      data;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWith(
          {Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: data ?? this.data);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
      copyWithWrapped(
          {Wrapped<
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data?>?
              data}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataExtension
    on Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

@JsonSerializable(explicitToJson: true)
class Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data({
    this.id,
    this.attributes,
  });

  factory Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
          json);

  static const toJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson;
  Map<String, dynamic> toJson() =>
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
          this);

  @JsonKey(name: 'id', includeIfNull: false)
  final double? id;
  @JsonKey(name: 'attributes', includeIfNull: false)
  final Object? attributes;
  static const fromJsonFactory =
      _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.attributes, attributes) ||
                const DeepCollectionEquality()
                    .equals(other.attributes, attributes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(attributes) ^
      runtimeType.hashCode;
}

extension $Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataExtension
    on Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data {
  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWith({double? id, Object? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: id ?? this.id, attributes: attributes ?? this.attributes);
  }

  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
      copyWithWrapped({Wrapped<double?>? id, Wrapped<Object?>? attributes}) {
    return Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
        id: (id != null ? id.value : this.id),
        attributes: (attributes != null ? attributes.value : this.attributes));
  }
}

String? orderRequest$DataStatusToJson(
    enums.OrderRequest$DataStatus? orderRequest$DataStatus) {
  return orderRequest$DataStatus?.value;
}

enums.OrderRequest$DataStatus orderRequest$DataStatusFromJson(
  Object? orderRequest$DataStatus, [
  enums.OrderRequest$DataStatus? defaultValue,
]) {
  return enums.OrderRequest$DataStatus.values
          .firstWhereOrNull((e) => e.value == orderRequest$DataStatus) ??
      defaultValue ??
      enums.OrderRequest$DataStatus.swaggerGeneratedUnknown;
}

List<String> orderRequest$DataStatusListToJson(
    List<enums.OrderRequest$DataStatus>? orderRequest$DataStatus) {
  if (orderRequest$DataStatus == null) {
    return [];
  }

  return orderRequest$DataStatus.map((e) => e.value!).toList();
}

List<enums.OrderRequest$DataStatus> orderRequest$DataStatusListFromJson(
  List? orderRequest$DataStatus, [
  List<enums.OrderRequest$DataStatus>? defaultValue,
]) {
  if (orderRequest$DataStatus == null) {
    return defaultValue ?? [];
  }

  return orderRequest$DataStatus
      .map((e) => orderRequest$DataStatusFromJson(e.toString()))
      .toList();
}

List<enums.OrderRequest$DataStatus>?
    orderRequest$DataStatusNullableListFromJson(
  List? orderRequest$DataStatus, [
  List<enums.OrderRequest$DataStatus>? defaultValue,
]) {
  if (orderRequest$DataStatus == null) {
    return defaultValue;
  }

  return orderRequest$DataStatus
      .map((e) => orderRequest$DataStatusFromJson(e.toString()))
      .toList();
}

String? orderStatusToJson(enums.OrderStatus? orderStatus) {
  return orderStatus?.value;
}

enums.OrderStatus orderStatusFromJson(
  Object? orderStatus, [
  enums.OrderStatus? defaultValue,
]) {
  return enums.OrderStatus.values
          .firstWhereOrNull((e) => e.value == orderStatus) ??
      defaultValue ??
      enums.OrderStatus.swaggerGeneratedUnknown;
}

List<String> orderStatusListToJson(List<enums.OrderStatus>? orderStatus) {
  if (orderStatus == null) {
    return [];
  }

  return orderStatus.map((e) => e.value!).toList();
}

List<enums.OrderStatus> orderStatusListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue ?? [];
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

List<enums.OrderStatus>? orderStatusNullableListFromJson(
  List? orderStatus, [
  List<enums.OrderStatus>? defaultValue,
]) {
  if (orderStatus == null) {
    return defaultValue;
  }

  return orderStatus.map((e) => orderStatusFromJson(e.toString())).toList();
}

String? authForgotPasswordPost$ResponseOkToJson(
    enums.AuthForgotPasswordPost$ResponseOk?
        authForgotPasswordPost$ResponseOk) {
  return authForgotPasswordPost$ResponseOk?.value;
}

enums.AuthForgotPasswordPost$ResponseOk
    authForgotPasswordPost$ResponseOkFromJson(
  Object? authForgotPasswordPost$ResponseOk, [
  enums.AuthForgotPasswordPost$ResponseOk? defaultValue,
]) {
  return enums.AuthForgotPasswordPost$ResponseOk.values.firstWhereOrNull(
          (e) => e.value == authForgotPasswordPost$ResponseOk) ??
      defaultValue ??
      enums.AuthForgotPasswordPost$ResponseOk.swaggerGeneratedUnknown;
}

List<String> authForgotPasswordPost$ResponseOkListToJson(
    List<enums.AuthForgotPasswordPost$ResponseOk>?
        authForgotPasswordPost$ResponseOk) {
  if (authForgotPasswordPost$ResponseOk == null) {
    return [];
  }

  return authForgotPasswordPost$ResponseOk.map((e) => e.value!).toList();
}

List<enums.AuthForgotPasswordPost$ResponseOk>
    authForgotPasswordPost$ResponseOkListFromJson(
  List? authForgotPasswordPost$ResponseOk, [
  List<enums.AuthForgotPasswordPost$ResponseOk>? defaultValue,
]) {
  if (authForgotPasswordPost$ResponseOk == null) {
    return defaultValue ?? [];
  }

  return authForgotPasswordPost$ResponseOk
      .map((e) => authForgotPasswordPost$ResponseOkFromJson(e.toString()))
      .toList();
}

List<enums.AuthForgotPasswordPost$ResponseOk>?
    authForgotPasswordPost$ResponseOkNullableListFromJson(
  List? authForgotPasswordPost$ResponseOk, [
  List<enums.AuthForgotPasswordPost$ResponseOk>? defaultValue,
]) {
  if (authForgotPasswordPost$ResponseOk == null) {
    return defaultValue;
  }

  return authForgotPasswordPost$ResponseOk
      .map((e) => authForgotPasswordPost$ResponseOkFromJson(e.toString()))
      .toList();
}

String? authSendEmailConfirmationPost$ResponseSentToJson(
    enums.AuthSendEmailConfirmationPost$ResponseSent?
        authSendEmailConfirmationPost$ResponseSent) {
  return authSendEmailConfirmationPost$ResponseSent?.value;
}

enums.AuthSendEmailConfirmationPost$ResponseSent
    authSendEmailConfirmationPost$ResponseSentFromJson(
  Object? authSendEmailConfirmationPost$ResponseSent, [
  enums.AuthSendEmailConfirmationPost$ResponseSent? defaultValue,
]) {
  return enums.AuthSendEmailConfirmationPost$ResponseSent.values
          .firstWhereOrNull(
              (e) => e.value == authSendEmailConfirmationPost$ResponseSent) ??
      defaultValue ??
      enums.AuthSendEmailConfirmationPost$ResponseSent.swaggerGeneratedUnknown;
}

List<String> authSendEmailConfirmationPost$ResponseSentListToJson(
    List<enums.AuthSendEmailConfirmationPost$ResponseSent>?
        authSendEmailConfirmationPost$ResponseSent) {
  if (authSendEmailConfirmationPost$ResponseSent == null) {
    return [];
  }

  return authSendEmailConfirmationPost$ResponseSent
      .map((e) => e.value!)
      .toList();
}

List<enums.AuthSendEmailConfirmationPost$ResponseSent>
    authSendEmailConfirmationPost$ResponseSentListFromJson(
  List? authSendEmailConfirmationPost$ResponseSent, [
  List<enums.AuthSendEmailConfirmationPost$ResponseSent>? defaultValue,
]) {
  if (authSendEmailConfirmationPost$ResponseSent == null) {
    return defaultValue ?? [];
  }

  return authSendEmailConfirmationPost$ResponseSent
      .map((e) =>
          authSendEmailConfirmationPost$ResponseSentFromJson(e.toString()))
      .toList();
}

List<enums.AuthSendEmailConfirmationPost$ResponseSent>?
    authSendEmailConfirmationPost$ResponseSentNullableListFromJson(
  List? authSendEmailConfirmationPost$ResponseSent, [
  List<enums.AuthSendEmailConfirmationPost$ResponseSent>? defaultValue,
]) {
  if (authSendEmailConfirmationPost$ResponseSent == null) {
    return defaultValue;
  }

  return authSendEmailConfirmationPost$ResponseSent
      .map((e) =>
          authSendEmailConfirmationPost$ResponseSentFromJson(e.toString()))
      .toList();
}

String? usersPermissionsRolesPost$ResponseOkToJson(
    enums.UsersPermissionsRolesPost$ResponseOk?
        usersPermissionsRolesPost$ResponseOk) {
  return usersPermissionsRolesPost$ResponseOk?.value;
}

enums.UsersPermissionsRolesPost$ResponseOk
    usersPermissionsRolesPost$ResponseOkFromJson(
  Object? usersPermissionsRolesPost$ResponseOk, [
  enums.UsersPermissionsRolesPost$ResponseOk? defaultValue,
]) {
  return enums.UsersPermissionsRolesPost$ResponseOk.values.firstWhereOrNull(
          (e) => e.value == usersPermissionsRolesPost$ResponseOk) ??
      defaultValue ??
      enums.UsersPermissionsRolesPost$ResponseOk.swaggerGeneratedUnknown;
}

List<String> usersPermissionsRolesPost$ResponseOkListToJson(
    List<enums.UsersPermissionsRolesPost$ResponseOk>?
        usersPermissionsRolesPost$ResponseOk) {
  if (usersPermissionsRolesPost$ResponseOk == null) {
    return [];
  }

  return usersPermissionsRolesPost$ResponseOk.map((e) => e.value!).toList();
}

List<enums.UsersPermissionsRolesPost$ResponseOk>
    usersPermissionsRolesPost$ResponseOkListFromJson(
  List? usersPermissionsRolesPost$ResponseOk, [
  List<enums.UsersPermissionsRolesPost$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesPost$ResponseOk == null) {
    return defaultValue ?? [];
  }

  return usersPermissionsRolesPost$ResponseOk
      .map((e) => usersPermissionsRolesPost$ResponseOkFromJson(e.toString()))
      .toList();
}

List<enums.UsersPermissionsRolesPost$ResponseOk>?
    usersPermissionsRolesPost$ResponseOkNullableListFromJson(
  List? usersPermissionsRolesPost$ResponseOk, [
  List<enums.UsersPermissionsRolesPost$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesPost$ResponseOk == null) {
    return defaultValue;
  }

  return usersPermissionsRolesPost$ResponseOk
      .map((e) => usersPermissionsRolesPost$ResponseOkFromJson(e.toString()))
      .toList();
}

String? usersPermissionsRolesRolePut$ResponseOkToJson(
    enums.UsersPermissionsRolesRolePut$ResponseOk?
        usersPermissionsRolesRolePut$ResponseOk) {
  return usersPermissionsRolesRolePut$ResponseOk?.value;
}

enums.UsersPermissionsRolesRolePut$ResponseOk
    usersPermissionsRolesRolePut$ResponseOkFromJson(
  Object? usersPermissionsRolesRolePut$ResponseOk, [
  enums.UsersPermissionsRolesRolePut$ResponseOk? defaultValue,
]) {
  return enums.UsersPermissionsRolesRolePut$ResponseOk.values.firstWhereOrNull(
          (e) => e.value == usersPermissionsRolesRolePut$ResponseOk) ??
      defaultValue ??
      enums.UsersPermissionsRolesRolePut$ResponseOk.swaggerGeneratedUnknown;
}

List<String> usersPermissionsRolesRolePut$ResponseOkListToJson(
    List<enums.UsersPermissionsRolesRolePut$ResponseOk>?
        usersPermissionsRolesRolePut$ResponseOk) {
  if (usersPermissionsRolesRolePut$ResponseOk == null) {
    return [];
  }

  return usersPermissionsRolesRolePut$ResponseOk.map((e) => e.value!).toList();
}

List<enums.UsersPermissionsRolesRolePut$ResponseOk>
    usersPermissionsRolesRolePut$ResponseOkListFromJson(
  List? usersPermissionsRolesRolePut$ResponseOk, [
  List<enums.UsersPermissionsRolesRolePut$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesRolePut$ResponseOk == null) {
    return defaultValue ?? [];
  }

  return usersPermissionsRolesRolePut$ResponseOk
      .map((e) => usersPermissionsRolesRolePut$ResponseOkFromJson(e.toString()))
      .toList();
}

List<enums.UsersPermissionsRolesRolePut$ResponseOk>?
    usersPermissionsRolesRolePut$ResponseOkNullableListFromJson(
  List? usersPermissionsRolesRolePut$ResponseOk, [
  List<enums.UsersPermissionsRolesRolePut$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesRolePut$ResponseOk == null) {
    return defaultValue;
  }

  return usersPermissionsRolesRolePut$ResponseOk
      .map((e) => usersPermissionsRolesRolePut$ResponseOkFromJson(e.toString()))
      .toList();
}

String? usersPermissionsRolesRoleDelete$ResponseOkToJson(
    enums.UsersPermissionsRolesRoleDelete$ResponseOk?
        usersPermissionsRolesRoleDelete$ResponseOk) {
  return usersPermissionsRolesRoleDelete$ResponseOk?.value;
}

enums.UsersPermissionsRolesRoleDelete$ResponseOk
    usersPermissionsRolesRoleDelete$ResponseOkFromJson(
  Object? usersPermissionsRolesRoleDelete$ResponseOk, [
  enums.UsersPermissionsRolesRoleDelete$ResponseOk? defaultValue,
]) {
  return enums.UsersPermissionsRolesRoleDelete$ResponseOk.values
          .firstWhereOrNull(
              (e) => e.value == usersPermissionsRolesRoleDelete$ResponseOk) ??
      defaultValue ??
      enums.UsersPermissionsRolesRoleDelete$ResponseOk.swaggerGeneratedUnknown;
}

List<String> usersPermissionsRolesRoleDelete$ResponseOkListToJson(
    List<enums.UsersPermissionsRolesRoleDelete$ResponseOk>?
        usersPermissionsRolesRoleDelete$ResponseOk) {
  if (usersPermissionsRolesRoleDelete$ResponseOk == null) {
    return [];
  }

  return usersPermissionsRolesRoleDelete$ResponseOk
      .map((e) => e.value!)
      .toList();
}

List<enums.UsersPermissionsRolesRoleDelete$ResponseOk>
    usersPermissionsRolesRoleDelete$ResponseOkListFromJson(
  List? usersPermissionsRolesRoleDelete$ResponseOk, [
  List<enums.UsersPermissionsRolesRoleDelete$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesRoleDelete$ResponseOk == null) {
    return defaultValue ?? [];
  }

  return usersPermissionsRolesRoleDelete$ResponseOk
      .map((e) =>
          usersPermissionsRolesRoleDelete$ResponseOkFromJson(e.toString()))
      .toList();
}

List<enums.UsersPermissionsRolesRoleDelete$ResponseOk>?
    usersPermissionsRolesRoleDelete$ResponseOkNullableListFromJson(
  List? usersPermissionsRolesRoleDelete$ResponseOk, [
  List<enums.UsersPermissionsRolesRoleDelete$ResponseOk>? defaultValue,
]) {
  if (usersPermissionsRolesRoleDelete$ResponseOk == null) {
    return defaultValue;
  }

  return usersPermissionsRolesRoleDelete$ResponseOk
      .map((e) =>
          usersPermissionsRolesRoleDelete$ResponseOkFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
