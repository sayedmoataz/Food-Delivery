class LoginModel {
  LoginModel({
    required this.status,
    required this.code,
    required this.msg,
    required this.data,
  });
  late final bool status;
  late final int code;
  late final String msg;
  late final Data data;
  
  LoginModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final Data = <String, dynamic>{};
    Data['status'] = status;
    Data['code'] = code;
    Data['msg'] = msg;
    Data['data'] = data.toJson();
    return Data;
  }
}

class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.lat,
    this.long,
    required this.email,
    required this.phone,
    required this.emailVerifiedAt,
    required this.isActive,
    this.verifyCode,
    this.deviceToken,
    required this.photo,
    required this.address1,
    this.address2,
    required this.stateId,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.token,
    required this.resourceUrl,
    required this.media,
  });
  late final int id;
  late final String firstName;
  late final String lastName;
  late final dynamic lat;
  late final dynamic long;
  late final String email;
  late final String phone;
  late final String emailVerifiedAt;
  late final int isActive;
  late final dynamic verifyCode;
  late final dynamic deviceToken;
  late final String photo;
  late final String address1;
  late final dynamic address2;
  late final int stateId;
  late final String createdAt;
  late final String updatedAt;
  late final dynamic deletedAt;
  late final String token;
  late final String resourceUrl;
  late final List<dynamic> media;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    lat = json['lat'];
    long = json['lonh'];
    email = json['email'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    isActive = json['is_active'];
    verifyCode = json['verify_code'];
    deviceToken = json['device_token'];
    photo = json['photo'];
    address1 = json['address1'];
    address2 = json['address2'];
    stateId = json['state_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    token = json['token'];
    resourceUrl = json['resource_url'];
    media = List.castFrom<dynamic, dynamic>(json['media']);
  }

  Map<String, dynamic> toJson() {
    final mediaData = <String, dynamic>{};
    mediaData['id'] = id;
    mediaData['first_name'] = firstName;
    mediaData['last_name'] = lastName;
    mediaData['lat'] = lat;
    mediaData['long'] = long;
    mediaData['email'] = email;
    mediaData['phone'] = phone;
    mediaData['email_verified_at'] = emailVerifiedAt;
    mediaData['is_active'] = isActive;
    mediaData['verify_code'] = verifyCode;
    mediaData['device_token'] = deviceToken;
    mediaData['photo'] = photo;
    mediaData['address1'] = address1;
    mediaData['address2'] = address2;
    mediaData['state_id'] = stateId;
    mediaData['created_at'] = createdAt;
    mediaData['updated_at'] = updatedAt;
    mediaData['deleted_at'] = deletedAt;
    mediaData['token'] = token;
    mediaData['resource_url'] = resourceUrl;
    mediaData['media'] = media;
    return mediaData;
  }
}