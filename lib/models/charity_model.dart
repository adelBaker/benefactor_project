
class CharityModel
{
  late var charityID;
  late var charityName;
  late var address;
  late var phone;
  late var workingHours;
  late var workingDays;
  late var userId;


  CharityModel(
      this.charityID,
      this.charityName,
      this.address,
      this.phone,
      this.workingHours,
      this.workingDays,
      this.userId
      );

  CharityModel.fromJson(Map<String,dynamic> json)
  {
    charityID=json['charity_ID'];
    charityName=json['charity_name'];
    address=json['address'];
    phone=json['phone'];
    workingHours=json['working_hours'];
    workingDays=json['working_days'];
    userId=json['user_ID'];
  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data=<String,dynamic>{};
    data['charity_ID']=charityID;
    data['charity_name']=charityName;
    data['address']=address;
    data['phone']=phone;
    data['working_hours']=workingHours;
    data['working_days']=workingDays;
    data['user_ID']=userId;
    return data;


  }




}