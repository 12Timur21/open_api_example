// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_documentation.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      data: json['data'],
      error: Error$Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['error'] = instance.error.toJson();
  return val;
}

ExampleRequest _$ExampleRequestFromJson(Map<String, dynamic> json) =>
    ExampleRequest(
      data: ExampleRequest$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleRequestToJson(ExampleRequest instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

Example _$ExampleFromJson(Map<String, dynamic> json) => Example(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Example$CreatedBy.fromJson(
              json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Example$UpdatedBy.fromJson(
              json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleToJson(Example instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('publishedAt', instance.publishedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

ExampleResponseDataObject _$ExampleResponseDataObjectFromJson(
        Map<String, dynamic> json) =>
    ExampleResponseDataObject(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Example.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExampleResponseDataObjectToJson(
    ExampleResponseDataObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

ExampleResponse _$ExampleResponseFromJson(Map<String, dynamic> json) =>
    ExampleResponse(
      data: json['data'] == null
          ? null
          : ExampleResponseDataObject.fromJson(
              json['data'] as Map<String, dynamic>),
      meta: json['meta'],
    );

Map<String, dynamic> _$ExampleResponseToJson(ExampleResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('meta', instance.meta);
  return val;
}

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) => OrderRequest(
      data: OrderRequest$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRequestToJson(OrderRequest instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

OrderListResponseDataItem _$OrderListResponseDataItemFromJson(
        Map<String, dynamic> json) =>
    OrderListResponseDataItem(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Order.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListResponseDataItemToJson(
    OrderListResponseDataItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

OrderListResponse _$OrderListResponseFromJson(Map<String, dynamic> json) =>
    OrderListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  OrderListResponseDataItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      meta: json['meta'] == null
          ? null
          : OrderListResponse$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListResponseToJson(OrderListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble(),
      isHidden: json['isHidden'] as bool?,
      photo: json['photo'] == null
          ? null
          : Order$Photo.fromJson(json['photo'] as Map<String, dynamic>),
      status: orderStatusFromJson(json['status']),
      uuid: json['uuid'] as String? ?? '',
      location: json['location'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Order$CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Order$UpdatedBy.fromJson(json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('price', instance.price);
  writeNotNull('isHidden', instance.isHidden);
  writeNotNull('photo', instance.photo?.toJson());
  writeNotNull('status', orderStatusToJson(instance.status));
  writeNotNull('uuid', instance.uuid);
  writeNotNull('location', instance.location);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('publishedAt', instance.publishedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

OrderResponseDataObject _$OrderResponseDataObjectFromJson(
        Map<String, dynamic> json) =>
    OrderResponseDataObject(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Order.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderResponseDataObjectToJson(
    OrderResponseDataObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      data: json['data'] == null
          ? null
          : OrderResponseDataObject.fromJson(
              json['data'] as Map<String, dynamic>),
      meta: json['meta'],
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('meta', instance.meta);
  return val;
}

TestRequest _$TestRequestFromJson(Map<String, dynamic> json) => TestRequest(
      data: TestRequest$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestRequestToJson(TestRequest instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

TestListResponseDataItem _$TestListResponseDataItemFromJson(
        Map<String, dynamic> json) =>
    TestListResponseDataItem(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Test.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestListResponseDataItemToJson(
    TestListResponseDataItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

TestListResponse _$TestListResponseFromJson(Map<String, dynamic> json) =>
    TestListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  TestListResponseDataItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      meta: json['meta'] == null
          ? null
          : TestListResponse$Meta.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestListResponseToJson(TestListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}

Test _$TestFromJson(Map<String, dynamic> json) => Test(
      media: Test$Media.fromJson(json['Media'] as Map<String, dynamic>),
      multiMedia:
          Test$MultiMedia.fromJson(json['MultiMedia'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Test$CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Test$UpdatedBy.fromJson(json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestToJson(Test instance) {
  final val = <String, dynamic>{
    'Media': instance.media.toJson(),
    'MultiMedia': instance.multiMedia.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('publishedAt', instance.publishedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

TestResponseDataObject _$TestResponseDataObjectFromJson(
        Map<String, dynamic> json) =>
    TestResponseDataObject(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Test.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestResponseDataObjectToJson(
    TestResponseDataObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

TestResponse _$TestResponseFromJson(Map<String, dynamic> json) => TestResponse(
      data: json['data'] == null
          ? null
          : TestResponseDataObject.fromJson(
              json['data'] as Map<String, dynamic>),
      meta: json['meta'],
    );

Map<String, dynamic> _$TestResponseToJson(TestResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  writeNotNull('meta', instance.meta);
  return val;
}

UploadFile _$UploadFileFromJson(Map<String, dynamic> json) => UploadFile(
      id: (json['id'] as num?)?.toDouble(),
      name: json['name'] as String? ?? '',
      alternativeText: json['alternativeText'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      formats: (json['formats'] as num?)?.toDouble(),
      hash: json['hash'] as String? ?? '',
      ext: json['ext'] as String? ?? '',
      mime: json['mime'] as String? ?? '',
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      providerMetadata: json['provider_metadata'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UploadFileToJson(UploadFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('provider_metadata', instance.providerMetadata);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

UsersPermissionsRole _$UsersPermissionsRoleFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsRole(
      id: (json['id'] as num?)?.toDouble(),
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UsersPermissionsRoleToJson(
    UsersPermissionsRole instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

UsersPermissionsUser _$UsersPermissionsUserFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsUser(
      id: (json['id'] as num?)?.toDouble(),
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UsersPermissionsUserToJson(
    UsersPermissionsUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('provider', instance.provider);
  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('blocked', instance.blocked);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

UsersPermissionsUserRegistration _$UsersPermissionsUserRegistrationFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsUserRegistration(
      jwt: json['jwt'] as String? ?? '',
      user: json['user'] == null
          ? null
          : UsersPermissionsUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersPermissionsUserRegistrationToJson(
    UsersPermissionsUserRegistration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jwt', instance.jwt);
  writeNotNull('user', instance.user?.toJson());
  return val;
}

UsersPermissionsPermissionsTree _$UsersPermissionsPermissionsTreeFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsPermissionsTree();

Map<String, dynamic> _$UsersPermissionsPermissionsTreeToJson(
        UsersPermissionsPermissionsTree instance) =>
    <String, dynamic>{};

UsersPermissionsRoleRequest$RequestBody
    _$UsersPermissionsRoleRequest$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        UsersPermissionsRoleRequest$RequestBody(
          name: json['name'] as String? ?? '',
          description: json['description'] as String? ?? '',
          type: json['type'] as String? ?? '',
          permissions: json['permissions'] == null
              ? null
              : UsersPermissionsPermissionsTree.fromJson(
                  json['permissions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersPermissionsRoleRequest$RequestBodyToJson(
    UsersPermissionsRoleRequest$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('permissions', instance.permissions?.toJson());
  return val;
}

UploadPost$RequestBody _$UploadPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    UploadPost$RequestBody(
      path: json['path'] as String? ?? '',
      refId: json['refId'] as String? ?? '',
      ref: json['ref'] as String? ?? '',
      field: json['field'] as String? ?? '',
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$UploadPost$RequestBodyToJson(
    UploadPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('refId', instance.refId);
  writeNotNull('ref', instance.ref);
  writeNotNull('field', instance.field);
  val['files'] = instance.files;
  return val;
}

UploadIdIdPost$RequestBody _$UploadIdIdPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    UploadIdIdPost$RequestBody(
      fileInfo: json['fileInfo'] == null
          ? null
          : UploadIdIdPost$RequestBody$FileInfo.fromJson(
              json['fileInfo'] as Map<String, dynamic>),
      files: json['files'] as String? ?? '',
    );

Map<String, dynamic> _$UploadIdIdPost$RequestBodyToJson(
    UploadIdIdPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fileInfo', instance.fileInfo?.toJson());
  writeNotNull('files', instance.files);
  return val;
}

AuthLocalPost$RequestBody _$AuthLocalPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AuthLocalPost$RequestBody(
      identifier: json['identifier'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$AuthLocalPost$RequestBodyToJson(
    AuthLocalPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identifier', instance.identifier);
  writeNotNull('password', instance.password);
  return val;
}

AuthLocalRegisterPost$RequestBody _$AuthLocalRegisterPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AuthLocalRegisterPost$RequestBody(
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$AuthLocalRegisterPost$RequestBodyToJson(
    AuthLocalRegisterPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}

AuthForgotPasswordPost$RequestBody _$AuthForgotPasswordPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AuthForgotPasswordPost$RequestBody(
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$AuthForgotPasswordPost$RequestBodyToJson(
    AuthForgotPasswordPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  return val;
}

AuthResetPasswordPost$RequestBody _$AuthResetPasswordPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AuthResetPasswordPost$RequestBody(
      password: json['password'] as String? ?? '',
      passwordConfirmation: json['passwordConfirmation'] as String? ?? '',
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$AuthResetPasswordPost$RequestBodyToJson(
    AuthResetPasswordPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  writeNotNull('passwordConfirmation', instance.passwordConfirmation);
  writeNotNull('code', instance.code);
  return val;
}

AuthChangePasswordPost$RequestBody _$AuthChangePasswordPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    AuthChangePasswordPost$RequestBody(
      password: json['password'] as String? ?? '',
      currentPassword: json['currentPassword'] as String? ?? '',
      passwordConfirmation: json['passwordConfirmation'] as String? ?? '',
    );

Map<String, dynamic> _$AuthChangePasswordPost$RequestBodyToJson(
        AuthChangePasswordPost$RequestBody instance) =>
    <String, dynamic>{
      'password': instance.password,
      'currentPassword': instance.currentPassword,
      'passwordConfirmation': instance.passwordConfirmation,
    };

AuthSendEmailConfirmationPost$RequestBody
    _$AuthSendEmailConfirmationPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        AuthSendEmailConfirmationPost$RequestBody(
          email: json['email'] as String? ?? '',
        );

Map<String, dynamic> _$AuthSendEmailConfirmationPost$RequestBodyToJson(
    AuthSendEmailConfirmationPost$RequestBody instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  return val;
}

UsersPost$RequestBody _$UsersPost$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    UsersPost$RequestBody(
      email: json['email'] as String? ?? '',
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$UsersPost$RequestBodyToJson(
        UsersPost$RequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };

UsersIdPut$RequestBody _$UsersIdPut$RequestBodyFromJson(
        Map<String, dynamic> json) =>
    UsersIdPut$RequestBody(
      email: json['email'] as String? ?? '',
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$UsersIdPut$RequestBodyToJson(
        UsersIdPut$RequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };

AuthForgotPasswordPost$Response _$AuthForgotPasswordPost$ResponseFromJson(
        Map<String, dynamic> json) =>
    AuthForgotPasswordPost$Response(
      ok: authForgotPasswordPost$ResponseOkFromJson(json['ok']),
    );

Map<String, dynamic> _$AuthForgotPasswordPost$ResponseToJson(
    AuthForgotPasswordPost$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ok', authForgotPasswordPost$ResponseOkToJson(instance.ok));
  return val;
}

AuthSendEmailConfirmationPost$Response
    _$AuthSendEmailConfirmationPost$ResponseFromJson(
            Map<String, dynamic> json) =>
        AuthSendEmailConfirmationPost$Response(
          email: json['email'] as String? ?? '',
          sent:
              authSendEmailConfirmationPost$ResponseSentFromJson(json['sent']),
        );

Map<String, dynamic> _$AuthSendEmailConfirmationPost$ResponseToJson(
    AuthSendEmailConfirmationPost$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull(
      'sent', authSendEmailConfirmationPost$ResponseSentToJson(instance.sent));
  return val;
}

UsersPermissionsPermissionsGet$Response
    _$UsersPermissionsPermissionsGet$ResponseFromJson(
            Map<String, dynamic> json) =>
        UsersPermissionsPermissionsGet$Response(
          permissions: json['permissions'] == null
              ? null
              : UsersPermissionsPermissionsTree.fromJson(
                  json['permissions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersPermissionsPermissionsGet$ResponseToJson(
    UsersPermissionsPermissionsGet$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('permissions', instance.permissions?.toJson());
  return val;
}

UsersPermissionsRolesGet$Response _$UsersPermissionsRolesGet$ResponseFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsRolesGet$Response(
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
    );

Map<String, dynamic> _$UsersPermissionsRolesGet$ResponseToJson(
    UsersPermissionsRolesGet$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('roles', instance.roles);
  return val;
}

UsersPermissionsRolesPost$Response _$UsersPermissionsRolesPost$ResponseFromJson(
        Map<String, dynamic> json) =>
    UsersPermissionsRolesPost$Response(
      ok: usersPermissionsRolesPost$ResponseOkFromJson(json['ok']),
    );

Map<String, dynamic> _$UsersPermissionsRolesPost$ResponseToJson(
    UsersPermissionsRolesPost$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ok', usersPermissionsRolesPost$ResponseOkToJson(instance.ok));
  return val;
}

UsersPermissionsRolesIdGet$Response
    _$UsersPermissionsRolesIdGet$ResponseFromJson(Map<String, dynamic> json) =>
        UsersPermissionsRolesIdGet$Response(
          role: json['role'] == null
              ? null
              : UsersPermissionsRole.fromJson(
                  json['role'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersPermissionsRolesIdGet$ResponseToJson(
    UsersPermissionsRolesIdGet$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', instance.role?.toJson());
  return val;
}

UsersPermissionsRolesRolePut$Response
    _$UsersPermissionsRolesRolePut$ResponseFromJson(
            Map<String, dynamic> json) =>
        UsersPermissionsRolesRolePut$Response(
          ok: usersPermissionsRolesRolePut$ResponseOkFromJson(json['ok']),
        );

Map<String, dynamic> _$UsersPermissionsRolesRolePut$ResponseToJson(
    UsersPermissionsRolesRolePut$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'ok', usersPermissionsRolesRolePut$ResponseOkToJson(instance.ok));
  return val;
}

UsersPermissionsRolesRoleDelete$Response
    _$UsersPermissionsRolesRoleDelete$ResponseFromJson(
            Map<String, dynamic> json) =>
        UsersPermissionsRolesRoleDelete$Response(
          ok: usersPermissionsRolesRoleDelete$ResponseOkFromJson(json['ok']),
        );

Map<String, dynamic> _$UsersPermissionsRolesRoleDelete$ResponseToJson(
    UsersPermissionsRolesRoleDelete$Response instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'ok', usersPermissionsRolesRoleDelete$ResponseOkToJson(instance.ok));
  return val;
}

Error$Error _$Error$ErrorFromJson(Map<String, dynamic> json) => Error$Error(
      status: json['status'] as int?,
      name: json['name'] as String? ?? '',
      message: json['message'] as String? ?? '',
      details: json['details'],
    );

Map<String, dynamic> _$Error$ErrorToJson(Error$Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('name', instance.name);
  writeNotNull('message', instance.message);
  writeNotNull('details', instance.details);
  return val;
}

ExampleRequest$Data _$ExampleRequest$DataFromJson(Map<String, dynamic> json) =>
    ExampleRequest$Data(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$ExampleRequest$DataToJson(ExampleRequest$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  return val;
}

Example$CreatedBy _$Example$CreatedByFromJson(Map<String, dynamic> json) =>
    Example$CreatedBy(
      data: json['data'] == null
          ? null
          : Example$CreatedBy$Data.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Example$CreatedByToJson(Example$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$UpdatedBy _$Example$UpdatedByFromJson(Map<String, dynamic> json) =>
    Example$UpdatedBy(
      data: json['data'] == null
          ? null
          : Example$UpdatedBy$Data.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Example$UpdatedByToJson(Example$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

OrderRequest$Data _$OrderRequest$DataFromJson(Map<String, dynamic> json) =>
    OrderRequest$Data(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble(),
      isHidden: json['isHidden'] as bool?,
      photo:
          (json['photo'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      status: orderRequest$DataStatusFromJson(json['status']),
      uuid: json['uuid'] as String? ?? '',
      location: json['location'],
    );

Map<String, dynamic> _$OrderRequest$DataToJson(OrderRequest$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('price', instance.price);
  writeNotNull('isHidden', instance.isHidden);
  writeNotNull('photo', instance.photo);
  writeNotNull('status', orderRequest$DataStatusToJson(instance.status));
  writeNotNull('uuid', instance.uuid);
  writeNotNull('location', instance.location);
  return val;
}

OrderListResponse$Meta _$OrderListResponse$MetaFromJson(
        Map<String, dynamic> json) =>
    OrderListResponse$Meta(
      pagination: json['pagination'] == null
          ? null
          : OrderListResponse$Meta$Pagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderListResponse$MetaToJson(
    OrderListResponse$Meta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

Order$Photo _$Order$PhotoFromJson(Map<String, dynamic> json) => Order$Photo(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => Order$Photo$Data$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Order$PhotoToJson(Order$Photo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$CreatedBy _$Order$CreatedByFromJson(Map<String, dynamic> json) =>
    Order$CreatedBy(
      data: json['data'] == null
          ? null
          : Order$CreatedBy$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Order$CreatedByToJson(Order$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$UpdatedBy _$Order$UpdatedByFromJson(Map<String, dynamic> json) =>
    Order$UpdatedBy(
      data: json['data'] == null
          ? null
          : Order$UpdatedBy$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Order$UpdatedByToJson(Order$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

TestRequest$Data _$TestRequest$DataFromJson(Map<String, dynamic> json) =>
    TestRequest$Data(
      media: json['media'],
      multiMedia: (json['MultiMedia'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TestRequest$DataToJson(TestRequest$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('media', instance.media);
  val['MultiMedia'] = instance.multiMedia;
  return val;
}

TestListResponse$Meta _$TestListResponse$MetaFromJson(
        Map<String, dynamic> json) =>
    TestListResponse$Meta(
      pagination: json['pagination'] == null
          ? null
          : TestListResponse$Meta$Pagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestListResponse$MetaToJson(
    TestListResponse$Meta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}

Test$Media _$Test$MediaFromJson(Map<String, dynamic> json) => Test$Media(
      data: json['data'] == null
          ? null
          : Test$Media$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$MediaToJson(Test$Media instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$MultiMedia _$Test$MultiMediaFromJson(Map<String, dynamic> json) =>
    Test$MultiMedia(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              Test$MultiMedia$Data$Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Test$MultiMediaToJson(Test$MultiMedia instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$CreatedBy _$Test$CreatedByFromJson(Map<String, dynamic> json) =>
    Test$CreatedBy(
      data: json['data'] == null
          ? null
          : Test$CreatedBy$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$CreatedByToJson(Test$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$UpdatedBy _$Test$UpdatedByFromJson(Map<String, dynamic> json) =>
    Test$UpdatedBy(
      data: json['data'] == null
          ? null
          : Test$UpdatedBy$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$UpdatedByToJson(Test$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

UploadIdIdPost$RequestBody$FileInfo
    _$UploadIdIdPost$RequestBody$FileInfoFromJson(Map<String, dynamic> json) =>
        UploadIdIdPost$RequestBody$FileInfo(
          name: json['name'] as String? ?? '',
          alternativeText: json['alternativeText'] as String? ?? '',
          caption: json['caption'] as String? ?? '',
        );

Map<String, dynamic> _$UploadIdIdPost$RequestBody$FileInfoToJson(
    UploadIdIdPost$RequestBody$FileInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  return val;
}

Example$CreatedBy$Data _$Example$CreatedBy$DataFromJson(
        Map<String, dynamic> json) =>
    Example$CreatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Example$CreatedBy$Data$Attributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Example$CreatedBy$DataToJson(
    Example$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Example$UpdatedBy$Data _$Example$UpdatedBy$DataFromJson(
        Map<String, dynamic> json) =>
    Example$UpdatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'],
    );

Map<String, dynamic> _$Example$UpdatedBy$DataToJson(
    Example$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

OrderListResponse$Meta$Pagination _$OrderListResponse$Meta$PaginationFromJson(
        Map<String, dynamic> json) =>
    OrderListResponse$Meta$Pagination(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      pageCount: json['pageCount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$OrderListResponse$Meta$PaginationToJson(
    OrderListResponse$Meta$Pagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('pageCount', instance.pageCount);
  writeNotNull('total', instance.total);
  return val;
}

Order$Photo$Data$Item _$Order$Photo$Data$ItemFromJson(
        Map<String, dynamic> json) =>
    Order$Photo$Data$Item(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Order$Photo$Data$Item$Attributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Order$Photo$Data$ItemToJson(
    Order$Photo$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$CreatedBy$Data _$Order$CreatedBy$DataFromJson(
        Map<String, dynamic> json) =>
    Order$CreatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'],
    );

Map<String, dynamic> _$Order$CreatedBy$DataToJson(
    Order$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$UpdatedBy$Data _$Order$UpdatedBy$DataFromJson(
        Map<String, dynamic> json) =>
    Order$UpdatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'],
    );

Map<String, dynamic> _$Order$UpdatedBy$DataToJson(
    Order$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

TestListResponse$Meta$Pagination _$TestListResponse$Meta$PaginationFromJson(
        Map<String, dynamic> json) =>
    TestListResponse$Meta$Pagination(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      pageCount: json['pageCount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$TestListResponse$Meta$PaginationToJson(
    TestListResponse$Meta$Pagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('pageCount', instance.pageCount);
  writeNotNull('total', instance.total);
  return val;
}

Test$Media$Data _$Test$Media$DataFromJson(Map<String, dynamic> json) =>
    Test$Media$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Test$Media$Data$Attributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$Media$DataToJson(Test$Media$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$MultiMedia$Data$Item _$Test$MultiMedia$Data$ItemFromJson(
        Map<String, dynamic> json) =>
    Test$MultiMedia$Data$Item(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'] == null
          ? null
          : Test$MultiMedia$Data$Item$Attributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$MultiMedia$Data$ItemToJson(
    Test$MultiMedia$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$CreatedBy$Data _$Test$CreatedBy$DataFromJson(Map<String, dynamic> json) =>
    Test$CreatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'],
    );

Map<String, dynamic> _$Test$CreatedBy$DataToJson(Test$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$UpdatedBy$Data _$Test$UpdatedBy$DataFromJson(Map<String, dynamic> json) =>
    Test$UpdatedBy$Data(
      id: (json['id'] as num?)?.toDouble(),
      attributes: json['attributes'],
    );

Map<String, dynamic> _$Test$UpdatedBy$DataToJson(Test$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes _$Example$CreatedBy$Data$AttributesFromJson(
        Map<String, dynamic> json) =>
    Example$CreatedBy$Data$Attributes(
      firstname: json['firstname'] as String? ?? '',
      lastname: json['lastname'] as String? ?? '',
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      resetPasswordToken: json['resetPasswordToken'] as String? ?? '',
      registrationToken: json['registrationToken'] as String? ?? '',
      isActive: json['isActive'] as bool?,
      roles: json['roles'] == null
          ? null
          : Example$CreatedBy$Data$Attributes$Roles.fromJson(
              json['roles'] as Map<String, dynamic>),
      blocked: json['blocked'] as bool?,
      preferedLanguage: json['preferedLanguage'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Example$CreatedBy$Data$Attributes$CreatedBy.fromJson(
              json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Example$CreatedBy$Data$Attributes$UpdatedBy.fromJson(
              json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Example$CreatedBy$Data$AttributesToJson(
    Example$CreatedBy$Data$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('resetPasswordToken', instance.resetPasswordToken);
  writeNotNull('registrationToken', instance.registrationToken);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('roles', instance.roles?.toJson());
  writeNotNull('blocked', instance.blocked);
  writeNotNull('preferedLanguage', instance.preferedLanguage);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes _$Order$Photo$Data$Item$AttributesFromJson(
        Map<String, dynamic> json) =>
    Order$Photo$Data$Item$Attributes(
      name: json['name'] as String? ?? '',
      alternativeText: json['alternativeText'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      width: json['width'] as int?,
      height: json['height'] as int?,
      formats: json['formats'],
      hash: json['hash'] as String? ?? '',
      ext: json['ext'] as String? ?? '',
      mime: json['mime'] as String? ?? '',
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      providerMetadata: json['providerMetadata'],
      related: json['related'] == null
          ? null
          : Order$Photo$Data$Item$Attributes$Related.fromJson(
              json['related'] as Map<String, dynamic>),
      folder: json['folder'] == null
          ? null
          : Order$Photo$Data$Item$Attributes$Folder.fromJson(
              json['folder'] as Map<String, dynamic>),
      folderPath: json['folderPath'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Order$Photo$Data$Item$Attributes$CreatedBy.fromJson(
              json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Order$Photo$Data$Item$Attributes$UpdatedBy.fromJson(
              json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Order$Photo$Data$Item$AttributesToJson(
    Order$Photo$Data$Item$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('providerMetadata', instance.providerMetadata);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('folder', instance.folder?.toJson());
  writeNotNull('folderPath', instance.folderPath);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes _$Test$Media$Data$AttributesFromJson(
        Map<String, dynamic> json) =>
    Test$Media$Data$Attributes(
      name: json['name'] as String? ?? '',
      alternativeText: json['alternativeText'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      width: json['width'] as int?,
      height: json['height'] as int?,
      formats: json['formats'],
      hash: json['hash'] as String? ?? '',
      ext: json['ext'] as String? ?? '',
      mime: json['mime'] as String? ?? '',
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String? ?? '',
      previewUrl: json['previewUrl'] as String? ?? '',
      provider: json['provider'] as String? ?? '',
      providerMetadata: json['providerMetadata'],
      related: json['related'] == null
          ? null
          : Test$Media$Data$Attributes$Related.fromJson(
              json['related'] as Map<String, dynamic>),
      folder: json['folder'] == null
          ? null
          : Test$Media$Data$Attributes$Folder.fromJson(
              json['folder'] as Map<String, dynamic>),
      folderPath: json['folderPath'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : Test$Media$Data$Attributes$CreatedBy.fromJson(
              json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : Test$Media$Data$Attributes$UpdatedBy.fromJson(
              json['updatedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$Media$Data$AttributesToJson(
    Test$Media$Data$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('providerMetadata', instance.providerMetadata);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('folder', instance.folder?.toJson());
  writeNotNull('folderPath', instance.folderPath);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$MultiMedia$Data$Item$Attributes
    _$Test$MultiMedia$Data$Item$AttributesFromJson(Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          alternativeText: json['alternativeText'] as String? ?? '',
          caption: json['caption'] as String? ?? '',
          width: json['width'] as int?,
          height: json['height'] as int?,
          formats: json['formats'],
          hash: json['hash'] as String? ?? '',
          ext: json['ext'] as String? ?? '',
          mime: json['mime'] as String? ?? '',
          size: (json['size'] as num?)?.toDouble(),
          url: json['url'] as String? ?? '',
          previewUrl: json['previewUrl'] as String? ?? '',
          provider: json['provider'] as String? ?? '',
          providerMetadata: json['providerMetadata'],
          related: json['related'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$Related.fromJson(
                  json['related'] as Map<String, dynamic>),
          folder: json['folder'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$Folder.fromJson(
                  json['folder'] as Map<String, dynamic>),
          folderPath: json['folderPath'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$CreatedBy.fromJson(
                  json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$UpdatedBy.fromJson(
                  json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$AttributesToJson(
    Test$MultiMedia$Data$Item$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('providerMetadata', instance.providerMetadata);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('folder', instance.folder?.toJson());
  writeNotNull('folderPath', instance.folderPath);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles
    _$Example$CreatedBy$Data$Attributes$RolesFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$RolesToJson(
    Example$CreatedBy$Data$Attributes$Roles instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Example$CreatedBy$Data$Attributes$CreatedBy
    _$Example$CreatedBy$Data$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$CreatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$CreatedByToJson(
    Example$CreatedBy$Data$Attributes$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$UpdatedBy
    _$Example$CreatedBy$Data$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$UpdatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$UpdatedByToJson(
    Example$CreatedBy$Data$Attributes$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Related
    _$Order$Photo$Data$Item$Attributes$RelatedFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Related(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Related$Data$Item.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$RelatedToJson(
    Order$Photo$Data$Item$Attributes$Related instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder
    _$Order$Photo$Data$Item$Attributes$FolderFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$FolderToJson(
    Order$Photo$Data$Item$Attributes$Folder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$CreatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$CreatedByToJson(
    Order$Photo$Data$Item$Attributes$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$UpdatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$UpdatedByToJson(
    Order$Photo$Data$Item$Attributes$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Related _$Test$Media$Data$Attributes$RelatedFromJson(
        Map<String, dynamic> json) =>
    Test$Media$Data$Attributes$Related(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Test$Media$Data$Attributes$Related$Data$Item.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Test$Media$Data$Attributes$RelatedToJson(
    Test$Media$Data$Attributes$Related instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder _$Test$Media$Data$Attributes$FolderFromJson(
        Map<String, dynamic> json) =>
    Test$Media$Data$Attributes$Folder(
      data: json['data'] == null
          ? null
          : Test$Media$Data$Attributes$Folder$Data.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test$Media$Data$Attributes$FolderToJson(
    Test$Media$Data$Attributes$Folder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$CreatedByFromJson(Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$CreatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$CreatedByToJson(
    Test$Media$Data$Attributes$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$UpdatedByFromJson(Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$UpdatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$UpdatedByToJson(
    Test$Media$Data$Attributes$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$MultiMedia$Data$Item$Attributes$Related
    _$Test$MultiMedia$Data$Item$Attributes$RelatedFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$Related(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$MultiMedia$Data$Item$Attributes$Related$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$Attributes$RelatedToJson(
    Test$MultiMedia$Data$Item$Attributes$Related instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$MultiMedia$Data$Item$Attributes$Folder
    _$Test$MultiMedia$Data$Item$Attributes$FolderFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$Folder(
          data: json['data'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$Folder$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$Attributes$FolderToJson(
    Test$MultiMedia$Data$Item$Attributes$Folder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$MultiMedia$Data$Item$Attributes$CreatedBy
    _$Test$MultiMedia$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$Attributes$CreatedByToJson(
    Test$MultiMedia$Data$Item$Attributes$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$MultiMedia$Data$Item$Attributes$UpdatedBy
    _$Test$MultiMedia$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$Attributes$UpdatedByToJson(
    Test$MultiMedia$Data$Item$Attributes$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item
    _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(
    Example$CreatedBy$Data$Attributes$Roles$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$CreatedBy$Data
    _$Example$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$CreatedBy$DataToJson(
    Example$CreatedBy$Data$Attributes$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$UpdatedBy$Data
    _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Example$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(
    Example$CreatedBy$Data$Attributes$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Related$Data$Item
    _$Order$Photo$Data$Item$Attributes$Related$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Related$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$Related$Data$ItemToJson(
    Order$Photo$Data$Item$Attributes$Related$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data
    _$Order$Photo$Data$Item$Attributes$Folder$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$Folder$DataToJson(
    Order$Photo$Data$Item$Attributes$Folder$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$CreatedBy$DataToJson(
    Order$Photo$Data$Item$Attributes$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Order$Photo$Data$Item$Attributes$UpdatedBy$DataToJson(
    Order$Photo$Data$Item$Attributes$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Related$Data$Item
    _$Test$Media$Data$Attributes$Related$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Related$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$Related$Data$ItemToJson(
    Test$Media$Data$Attributes$Related$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data
    _$Test$Media$Data$Attributes$Folder$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes.fromJson(
                  json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$Folder$DataToJson(
    Test$Media$Data$Attributes$Folder$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$Media$Data$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$CreatedBy$DataToJson(
    Test$Media$Data$Attributes$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$UpdatedBy$DataToJson(
    Test$Media$Data$Attributes$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$MultiMedia$Data$Item$Attributes$Related$Data$Item
    _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$Related$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$MultiMedia$Data$Item$Attributes$Related$Data$ItemToJson(
        Test$MultiMedia$Data$Item$Attributes$Related$Data$Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$MultiMedia$Data$Item$Attributes$Folder$Data
    _$Test$MultiMedia$Data$Item$Attributes$Folder$DataFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$Folder$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic> _$Test$MultiMedia$Data$Item$Attributes$Folder$DataToJson(
    Test$MultiMedia$Data$Item$Attributes$Folder$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data
    _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$MultiMedia$Data$Item$Attributes$CreatedBy$DataToJson(
        Test$MultiMedia$Data$Item$Attributes$CreatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data
    _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$MultiMedia$Data$Item$Attributes$UpdatedBy$DataToJson(
        Test$MultiMedia$Data$Item$Attributes$UpdatedBy$Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          code: json['code'] as String? ?? '',
          description: json['description'] as String? ?? '',
          users: json['users'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
                  .fromJson(json['users'] as Map<String, dynamic>),
          permissions: json['permissions'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
                  .fromJson(json['permissions'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  writeNotNull('users', instance.users?.toJson());
  writeNotNull('permissions', instance.permissions?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes
    _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes(
          name: json['name'] as String? ?? '',
          pathId: json['pathId'] as int?,
          parent: json['parent'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent
                  .fromJson(json['parent'] as Map<String, dynamic>),
          children: json['children'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children
                  .fromJson(json['children'] as Map<String, dynamic>),
          files: json['files'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files
                  .fromJson(json['files'] as Map<String, dynamic>),
          path: json['path'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$AttributesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('pathId', instance.pathId);
  writeNotNull('parent', instance.parent?.toJson());
  writeNotNull('children', instance.children?.toJson());
  writeNotNull('files', instance.files?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes
    _$Test$Media$Data$Attributes$Folder$Data$AttributesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes(
          name: json['name'] as String? ?? '',
          pathId: json['pathId'] as int?,
          parent: json['parent'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Parent
                  .fromJson(json['parent'] as Map<String, dynamic>),
          children: json['children'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Children
                  .fromJson(json['children'] as Map<String, dynamic>),
          files: json['files'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files
                  .fromJson(json['files'] as Map<String, dynamic>),
          path: json['path'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Test$Media$Data$Attributes$Folder$Data$AttributesToJson(
    Test$Media$Data$Attributes$Folder$Data$Attributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('pathId', instance.pathId);
  writeNotNull('parent', instance.parent?.toJson());
  writeNotNull('children', instance.children?.toJson());
  writeNotNull('files', instance.files?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ParentToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$ChildrenToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$FilesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Parent
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Parent(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$ParentToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Parent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Children
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Children(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$ChildrenToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Children instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$FilesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Parent$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Children$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Parent$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Children$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
          action: json['action'] as String? ?? '',
          subject: json['subject'] as String? ?? '',
          properties: json['properties'],
          conditions: json['conditions'],
          role: json['role'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
                  .fromJson(json['role'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('subject', instance.subject);
  writeNotNull('properties', instance.properties);
  writeNotNull('conditions', instance.conditions);
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          alternativeText: json['alternativeText'] as String? ?? '',
          caption: json['caption'] as String? ?? '',
          width: json['width'] as int?,
          height: json['height'] as int?,
          formats: json['formats'],
          hash: json['hash'] as String? ?? '',
          ext: json['ext'] as String? ?? '',
          mime: json['mime'] as String? ?? '',
          size: (json['size'] as num?)?.toDouble(),
          url: json['url'] as String? ?? '',
          previewUrl: json['previewUrl'] as String? ?? '',
          provider: json['provider'] as String? ?? '',
          providerMetadata: json['providerMetadata'],
          related: json['related'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
                  .fromJson(json['related'] as Map<String, dynamic>),
          folder: json['folder'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
                  .fromJson(json['folder'] as Map<String, dynamic>),
          folderPath: json['folderPath'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('providerMetadata', instance.providerMetadata);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('folder', instance.folder?.toJson());
  writeNotNull('folderPath', instance.folderPath);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          alternativeText: json['alternativeText'] as String? ?? '',
          caption: json['caption'] as String? ?? '',
          width: json['width'] as int?,
          height: json['height'] as int?,
          formats: json['formats'],
          hash: json['hash'] as String? ?? '',
          ext: json['ext'] as String? ?? '',
          mime: json['mime'] as String? ?? '',
          size: (json['size'] as num?)?.toDouble(),
          url: json['url'] as String? ?? '',
          previewUrl: json['previewUrl'] as String? ?? '',
          provider: json['provider'] as String? ?? '',
          providerMetadata: json['providerMetadata'],
          related: json['related'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
                  .fromJson(json['related'] as Map<String, dynamic>),
          folder: json['folder'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
                  .fromJson(json['folder'] as Map<String, dynamic>),
          folderPath: json['folderPath'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$AttributesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('alternativeText', instance.alternativeText);
  writeNotNull('caption', instance.caption);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('formats', instance.formats);
  writeNotNull('hash', instance.hash);
  writeNotNull('ext', instance.ext);
  writeNotNull('mime', instance.mime);
  writeNotNull('size', instance.size);
  writeNotNull('url', instance.url);
  writeNotNull('previewUrl', instance.previewUrl);
  writeNotNull('provider', instance.provider);
  writeNotNull('providerMetadata', instance.providerMetadata);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('folder', instance.folder?.toJson());
  writeNotNull('folderPath', instance.folderPath);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$RelatedToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$FolderToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
        Example$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Related$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$Folder$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
          firstname: json['firstname'] as String? ?? '',
          lastname: json['lastname'] as String? ?? '',
          username: json['username'] as String? ?? '',
          email: json['email'] as String? ?? '',
          resetPasswordToken: json['resetPasswordToken'] as String? ?? '',
          registrationToken: json['registrationToken'] as String? ?? '',
          isActive: json['isActive'] as bool?,
          roles: json['roles'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
                  .fromJson(json['roles'] as Map<String, dynamic>),
          blocked: json['blocked'] as bool?,
          preferedLanguage: json['preferedLanguage'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('resetPasswordToken', instance.resetPasswordToken);
  writeNotNull('registrationToken', instance.registrationToken);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('roles', instance.roles?.toJson());
  writeNotNull('blocked', instance.blocked);
  writeNotNull('preferedLanguage', instance.preferedLanguage);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes(
          firstname: json['firstname'] as String? ?? '',
          lastname: json['lastname'] as String? ?? '',
          username: json['username'] as String? ?? '',
          email: json['email'] as String? ?? '',
          resetPasswordToken: json['resetPasswordToken'] as String? ?? '',
          registrationToken: json['registrationToken'] as String? ?? '',
          isActive: json['isActive'] as bool?,
          roles: json['roles'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
                  .fromJson(json['roles'] as Map<String, dynamic>),
          blocked: json['blocked'] as bool?,
          preferedLanguage: json['preferedLanguage'] as String? ?? '',
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$AttributesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('resetPasswordToken', instance.resetPasswordToken);
  writeNotNull('registrationToken', instance.registrationToken);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('roles', instance.roles?.toJson());
  writeNotNull('blocked', instance.blocked);
  writeNotNull('preferedLanguage', instance.preferedLanguage);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$RolesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          code: json['code'] as String? ?? '',
          description: json['description'] as String? ?? '',
          users: json['users'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
                  .fromJson(json['users'] as Map<String, dynamic>),
          permissions: json['permissions'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
                  .fromJson(json['permissions'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  writeNotNull('users', instance.users?.toJson());
  writeNotNull('permissions', instance.permissions?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes(
          name: json['name'] as String? ?? '',
          code: json['code'] as String? ?? '',
          description: json['description'] as String? ?? '',
          users: json['users'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
                  .fromJson(json['users'] as Map<String, dynamic>),
          permissions: json['permissions'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
                  .fromJson(json['permissions'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$AttributesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  writeNotNull('users', instance.users?.toJson());
  writeNotNull('permissions', instance.permissions?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UsersToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$PermissionsToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Users$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
                  .fromJson(json['attributes'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$ItemToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
          action: json['action'] as String? ?? '',
          subject: json['subject'] as String? ?? '',
          properties: json['properties'],
          conditions: json['conditions'],
          role: json['role'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
                  .fromJson(json['role'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('subject', instance.subject);
  writeNotNull('properties', instance.properties);
  writeNotNull('conditions', instance.conditions);
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes(
          action: json['action'] as String? ?? '',
          subject: json['subject'] as String? ?? '',
          properties: json['properties'],
          conditions: json['conditions'],
          role: json['role'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
                  .fromJson(json['role'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          createdBy: json['createdBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
                  .fromJson(json['createdBy'] as Map<String, dynamic>),
          updatedBy: json['updatedBy'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
                  .fromJson(json['updatedBy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$AttributesToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('subject', instance.subject);
  writeNotNull('properties', instance.properties);
  writeNotNull('conditions', instance.conditions);
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy?.toJson());
  writeNotNull('updatedBy', instance.updatedBy?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$RoleToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy(
          data: json['data'] == null
              ? null
              : Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
                  .fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedByToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
        Order$Photo$Data$Item$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$Role$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$CreatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}

Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataFromJson(
            Map<String, dynamic> json) =>
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data(
          id: (json['id'] as num?)?.toDouble(),
          attributes: json['attributes'],
        );

Map<String, dynamic>
    _$Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$DataToJson(
        Test$Media$Data$Attributes$Folder$Data$Attributes$Files$Data$Item$Attributes$CreatedBy$Data$Attributes$Roles$Data$Item$Attributes$Permissions$Data$Item$Attributes$UpdatedBy$Data
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes);
  return val;
}
