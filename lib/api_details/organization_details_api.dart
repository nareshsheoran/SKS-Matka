class OrganizationDetails {
  late Organisation organisation;
  late BettingSetting bettingSetting;
  late BidSetting bidSetting;
  late MessageSetting messageSetting;
  late WithdrawlSetting withdrawlSetting;
  late MaintainanceSetting maintainanceSetting;

  OrganizationDetails(
      {required this.organisation,
        required this.bettingSetting,
        required this.bidSetting,
        required this.messageSetting,
        required this.withdrawlSetting,
        required this.maintainanceSetting});

  OrganizationDetails.fromJson(Map<String, dynamic> json) {
    organisation = (json['organisation'] != null
        ? new Organisation.fromJson(json['organisation'])
        : null)!;
    bettingSetting = (json['betting_setting'] != null
        ? new BettingSetting.fromJson(json['betting_setting'])
        : null)!;
    bidSetting = (json['bid_setting'] != null
        ? new BidSetting.fromJson(json['bid_setting'])
        : null)!;
    messageSetting = (json['message_setting'] != null
        ? new MessageSetting.fromJson(json['message_setting'])
        : null)!;
    withdrawlSetting = (json['withdrawl_setting'] != null
        ? new WithdrawlSetting.fromJson(json['withdrawl_setting'])
        : null)!;
    maintainanceSetting = (json['maintainance_setting'] != null
        ? new MaintainanceSetting.fromJson(json['maintainance_setting'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.organisation != null) {
      data['organisation'] = this.organisation.toJson();
    }
    if (this.bettingSetting != null) {
      data['betting_setting'] = this.bettingSetting.toJson();
    }
    if (this.bidSetting != null) {
      data['bid_setting'] = this.bidSetting.toJson();
    }
    if (this.messageSetting != null) {
      data['message_setting'] = this.messageSetting.toJson();
    }
    if (this.withdrawlSetting != null) {
      data['withdrawl_setting'] = this.withdrawlSetting.toJson();
    }
    if (this.maintainanceSetting != null) {
      data['maintainance_setting'] = this.maintainanceSetting.toJson();
    }
    return data;
  }
}

class Organisation {
  late String id;
  late String name;
  late String email;
  late String phone;
  late String wpNumber;
  late String address;
  late String phonePay;
  late String gPay;
  late String paytm;
  late String upi;
  late Null createdAt;
  late String updatedAt;

  Organisation(
      {required this.id,
        required this.name,
        required this.email,
        required this.phone,
        required this.wpNumber,
        required this.address,
        required this.phonePay,
        required this.gPay,
        required this.paytm,
        required this.upi,
        required this.createdAt,
        required this.updatedAt});

  Organisation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    wpNumber = json['wp_number'];
    address = json['address'];
    phonePay = json['phone_pay'];
    gPay = json['g_pay'];
    paytm = json['paytm'];
    upi = json['upi'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['wp_number'] = this.wpNumber;
    data['address'] = this.address;
    data['phone_pay'] = this.phonePay;
    data['g_pay'] = this.gPay;
    data['paytm'] = this.paytm;
    data['upi'] = this.upi;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class BettingSetting {
  late String bettingStatus;
  late String bettingPointPerPrice;
  late String bettingMinimumBidPoint;
  late Null createdAt;
  late String updatedAt;

  BettingSetting(
      {required this.bettingStatus,
        required this.bettingPointPerPrice,
        required this.bettingMinimumBidPoint,
        required this.createdAt,
        required this.updatedAt});

  BettingSetting.fromJson(Map<String, dynamic> json) {
    bettingStatus = json['betting_status'];
    bettingPointPerPrice = json['betting_point_per_price'];
    bettingMinimumBidPoint = json['betting_minimum_bid_point'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['betting_status'] = this.bettingStatus;
    data['betting_point_per_price'] = this.bettingPointPerPrice;
    data['betting_minimum_bid_point'] = this.bettingMinimumBidPoint;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class BidSetting {
  late String id;
  late Null singleDigitsPerPoint;
  late String jodiDigitsPerPoint;
  late String singlePanaPerPoint;
  late String doublePanaPerPoint;
  late String triplePanaPerPoint;
  late String halfSangamPerPoint;
  late String fullSangamPerPoint;
  late String redBracketPerPoint;
  late String marketOneName;
  late String marketOneDigitPerPoint;
  late String marketOneSinglePanaPerPoint;
  late String marketOneDoublePanaPerPoint;
  late String marketOneTripplePanaPerPoint;
  late String galiDesawarLeftDigitPerPoint;
  late String galiDesawarRightDigitPerPoint;
  late String galiDesawarJodiDigitPerPoint;
  late Null createdAt;
  late String updatedAt;

  BidSetting(
      {required this.id,
        required this.singleDigitsPerPoint,
        required this.jodiDigitsPerPoint,
        required this.singlePanaPerPoint,
        required this.doublePanaPerPoint,
        required this.triplePanaPerPoint,
        required this.halfSangamPerPoint,
        required this.fullSangamPerPoint,
        required this.redBracketPerPoint,
        required this.marketOneName,
        required this.marketOneDigitPerPoint,
        required this.marketOneSinglePanaPerPoint,
        required this.marketOneDoublePanaPerPoint,
        required this.marketOneTripplePanaPerPoint,
        required this.galiDesawarLeftDigitPerPoint,
        required this.galiDesawarRightDigitPerPoint,
        required this.galiDesawarJodiDigitPerPoint,
        required this.createdAt,
        required this.updatedAt});

  BidSetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    singleDigitsPerPoint = json['single_digits_per_point'];
    jodiDigitsPerPoint = json['jodi_digits_per_point'];
    singlePanaPerPoint = json['single_pana_per_point'];
    doublePanaPerPoint = json['double_pana_per_point'];
    triplePanaPerPoint = json['triple_pana_per_point'];
    halfSangamPerPoint = json['half_sangam_per_point'];
    fullSangamPerPoint = json['full_sangam_per_point'];
    redBracketPerPoint = json['red_bracket_per_point'];
    marketOneName = json['market_one_name'];
    marketOneDigitPerPoint = json['market_one_digit_per_point'];
    marketOneSinglePanaPerPoint = json['market_one_single_pana_per_point'];
    marketOneDoublePanaPerPoint = json['market_one_double_pana_per_point'];
    marketOneTripplePanaPerPoint = json['market_one_tripple_pana_per_point'];
    galiDesawarLeftDigitPerPoint = json['gali_desawar_left_digit_per_point'];
    galiDesawarRightDigitPerPoint = json['gali_desawar_right_digit_per_point'];
    galiDesawarJodiDigitPerPoint = json['gali_desawar_jodi_digit_per_point'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['single_digits_per_point'] = this.singleDigitsPerPoint;
    data['jodi_digits_per_point'] = this.jodiDigitsPerPoint;
    data['single_pana_per_point'] = this.singlePanaPerPoint;
    data['double_pana_per_point'] = this.doublePanaPerPoint;
    data['triple_pana_per_point'] = this.triplePanaPerPoint;
    data['half_sangam_per_point'] = this.halfSangamPerPoint;
    data['full_sangam_per_point'] = this.fullSangamPerPoint;
    data['red_bracket_per_point'] = this.redBracketPerPoint;
    data['market_one_name'] = this.marketOneName;
    data['market_one_digit_per_point'] = this.marketOneDigitPerPoint;
    data['market_one_single_pana_per_point'] = this.marketOneSinglePanaPerPoint;
    data['market_one_double_pana_per_point'] = this.marketOneDoublePanaPerPoint;
    data['market_one_tripple_pana_per_point'] =
        this.marketOneTripplePanaPerPoint;
    data['gali_desawar_left_digit_per_point'] =
        this.galiDesawarLeftDigitPerPoint;
    data['gali_desawar_right_digit_per_point'] =
        this.galiDesawarRightDigitPerPoint;
    data['gali_desawar_jodi_digit_per_point'] =
        this.galiDesawarJodiDigitPerPoint;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class MessageSetting {
  late Null registerMessageStatus;
  late String registerMessage;
  late Null firstMessageStatus;
  late String firstMessage;
  late String updatedAt;
  late String createdAt;

  MessageSetting(
      {this.registerMessageStatus,
        required this.registerMessage,
        this.firstMessageStatus,
        required this.firstMessage,
        required this.updatedAt,
        required this.createdAt});

  MessageSetting.fromJson(Map<String, dynamic> json) {
    registerMessageStatus = json['register_message_status'];
    registerMessage = json['register_message'];
    firstMessageStatus = json['first_message_status'];
    firstMessage = json['first_message'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['register_message_status'] = this.registerMessageStatus;
    data['register_message'] = this.registerMessage;
    data['first_message_status'] = this.firstMessageStatus;
    data['first_message'] = this.firstMessage;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class WithdrawlSetting {
  late String id;
  late String minimumWithdrawal;
  late String minimumDeposit;
  late String withdrawOpenTime;
  late String withdrawCloseTime;
  late String createdAt;
  late String updatedAt;

  WithdrawlSetting(
      {required this.id,
        required this.minimumWithdrawal,
        required this.minimumDeposit,
        required this.withdrawOpenTime,
        required this.withdrawCloseTime,
        required this.createdAt,
        required this.updatedAt});

  WithdrawlSetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    minimumWithdrawal = json['minimum_withdrawal'];
    minimumDeposit = json['minimum_deposit'];
    withdrawOpenTime = json['withdraw_open_time'];
    withdrawCloseTime = json['withdraw_close_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['minimum_withdrawal'] = this.minimumWithdrawal;
    data['minimum_deposit'] = this.minimumDeposit;
    data['withdraw_open_time'] = this.withdrawOpenTime;
    data['withdraw_close_time'] = this.withdrawCloseTime;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class MaintainanceSetting {
  late String id;
  late String version;
  late Null mandatory;
  late Null status;
  late String type;
  late String content;
  late String maintainanceStartDate;
  late String maintainanceStartTime;
  late String maintainanceEndTime;
  late String maintainanceEndDate;
  late String maintenanceDescription;
  late String createdAt;
  late String updatedAt;

  MaintainanceSetting(
      {required this.id,
        required this.version,
        required this.mandatory,
        required this.status,
        required this.type,
        required this.content,
        required this.maintainanceStartDate,
        required this.maintainanceStartTime,
        required this.maintainanceEndTime,
        required this.maintainanceEndDate,
        required this.maintenanceDescription,
        required this.createdAt,
        required this.updatedAt});

  MaintainanceSetting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    mandatory = json['mandatory'];
    status = json['status'];
    type = json['type'];
    content = json['content'];
    maintainanceStartDate = json['maintainance_start_date'];
    maintainanceStartTime = json['maintainance_start_time'];
    maintainanceEndTime = json['maintainance_end_time'];
    maintainanceEndDate = json['maintainance_end_date'];
    maintenanceDescription = json['maintenance_description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['mandatory'] = this.mandatory;
    data['status'] = this.status;
    data['type'] = this.type;
    data['content'] = this.content;
    data['maintainance_start_date'] = this.maintainanceStartDate;
    data['maintainance_start_time'] = this.maintainanceStartTime;
    data['maintainance_end_time'] = this.maintainanceEndTime;
    data['maintainance_end_date'] = this.maintainanceEndDate;
    data['maintenance_description'] = this.maintenanceDescription;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
