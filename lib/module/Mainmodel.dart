/// data : {"result":null,"status":null,"loginDetails":[{"status":1,"statusMsg":"Valid Domain Name","companyid":1}],"branchDetails":null,"depositBankDetails":null,"parameters":null,"getMenu":null}
/// errorList : null

class Mainmodel {
  Mainmodel({
      Data? data, 
      dynamic errorList,}){
    _data = data;
    _errorList = errorList;
}

  Mainmodel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _errorList = json['errorList'];
  }
  Data? _data;
  dynamic _errorList;
Mainmodel copyWith({  Data? data,
  dynamic errorList,
}) => Mainmodel(  data: data ?? _data,
  errorList: errorList ?? _errorList,
);
  Data? get data => _data;
  dynamic get errorList => _errorList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['errorList'] = _errorList;
    return map;
  }

}

/// result : null
/// status : null
/// loginDetails : [{"status":1,"statusMsg":"Valid Domain Name","companyid":1}]
/// branchDetails : null
/// depositBankDetails : null
/// parameters : null
/// getMenu : null

class Data {
  Data({
      dynamic result, 
      dynamic status, 
      List<LoginDetails>? loginDetails, 
      dynamic branchDetails, 
      dynamic depositBankDetails, 
      dynamic parameters, 
      dynamic getMenu,}){
    _result = result;
    _status = status;
    _loginDetails = loginDetails;
    _branchDetails = branchDetails;
    _depositBankDetails = depositBankDetails;
    _parameters = parameters;
    _getMenu = getMenu;
}

  Data.fromJson(dynamic json) {
    _result = json['result'];
    _status = json['status'];
    if (json['loginDetails'] != null) {
      _loginDetails = [];
      json['loginDetails'].forEach((v) {
        _loginDetails?.add(LoginDetails.fromJson(v));
      });
    }
    _branchDetails = json['branchDetails'];
    _depositBankDetails = json['depositBankDetails'];
    _parameters = json['parameters'];
    _getMenu = json['getMenu'];
  }
  dynamic _result;
  dynamic _status;
  List<LoginDetails>? _loginDetails;
  dynamic _branchDetails;
  dynamic _depositBankDetails;
  dynamic _parameters;
  dynamic _getMenu;
Data copyWith({  dynamic result,
  dynamic status,
  List<LoginDetails>? loginDetails,
  dynamic branchDetails,
  dynamic depositBankDetails,
  dynamic parameters,
  dynamic getMenu,
}) => Data(  result: result ?? _result,
  status: status ?? _status,
  loginDetails: loginDetails ?? _loginDetails,
  branchDetails: branchDetails ?? _branchDetails,
  depositBankDetails: depositBankDetails ?? _depositBankDetails,
  parameters: parameters ?? _parameters,
  getMenu: getMenu ?? _getMenu,
);
  dynamic get result => _result;
  dynamic get status => _status;
  List<LoginDetails>? get loginDetails => _loginDetails;
  dynamic get branchDetails => _branchDetails;
  dynamic get depositBankDetails => _depositBankDetails;
  dynamic get parameters => _parameters;
  dynamic get getMenu => _getMenu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = _result;
    map['status'] = _status;
    if (_loginDetails != null) {
      map['loginDetails'] = _loginDetails?.map((v) => v.toJson()).toList();
    }
    map['branchDetails'] = _branchDetails;
    map['depositBankDetails'] = _depositBankDetails;
    map['parameters'] = _parameters;
    map['getMenu'] = _getMenu;
    return map;
  }

}

/// status : 1
/// statusMsg : "Valid Domain Name"
/// companyid : 1

class LoginDetails {
  LoginDetails({
      num? status, 
      String? statusMsg, 
      num? companyid,}){
    _status = status;
    _statusMsg = statusMsg;
    _companyid = companyid;
}

  LoginDetails.fromJson(dynamic json) {
    _status = json['status'];
    _statusMsg = json['statusMsg'];
    _companyid = json['companyid'];
  }
  num? _status;
  String? _statusMsg;
  num? _companyid;
LoginDetails copyWith({  num? status,
  String? statusMsg,
  num? companyid,
}) => LoginDetails(  status: status ?? _status,
  statusMsg: statusMsg ?? _statusMsg,
  companyid: companyid ?? _companyid,
);
  num? get status => _status;
  String? get statusMsg => _statusMsg;
  num? get companyid => _companyid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['statusMsg'] = _statusMsg;
    map['companyid'] = _companyid;
    return map;
  }

}