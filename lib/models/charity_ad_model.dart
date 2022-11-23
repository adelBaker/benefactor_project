
class CharityAdModel
{
  late int adId;
  late var adDate;
  late String adType;
  late int charityId;
  late String description;
  late String details;
  late var expirationDate;
  late var number;
  late String orderType;


  CharityAdModel(
      this.adId,
      this.adDate,
      this.adType,
      this.charityId,
      this.description,
      this.details,
      this.expirationDate,
      this.number,
      this.orderType,

      );

  CharityAdModel.fromJson(Map<String,dynamic> json)
  {
    adId=json['ad_ID'];
    adDate=json['ad_date'];
    adType=json['ad_type'];
    charityId=json['charity_ID'];
    description=json['description'];
    details=json['details'];
    expirationDate=json['expiration_date'];
    number=json['number'];
    orderType=json['order_type'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data= <String,dynamic>{};
    data['ad_ID']=adId;
    data['ad_date']=adDate;
    data['ad_type']=adType;
    data['charity_ID']=charityId;
    data['description']=description;
    data['details']=details;
    data['expiration_date']=expirationDate;
    data['number']=number;
    data['order_type']=orderType;
    return data;

  }

}