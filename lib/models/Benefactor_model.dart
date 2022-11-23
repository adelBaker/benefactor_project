
class BenefactorModel
{

 late var benefactorID;
 late var userID;
 late var first_name;
 late var family_name;
 late var phone;
 late var address;


 BenefactorModel(
     this.benefactorID,
     this.userID,
     this.first_name,
     this.family_name,
     this.phone,
     this.address
     );

 BenefactorModel.fromJson(Map<String,dynamic> json)
 {
   benefactorID=json['benefactorID'];
   userID=json['userID'];
   first_name=json['first_name'];
   family_name=json['family_name'];
   phone=json['phone'];
   address=json['address'];

 }

Map<String,dynamic> toJson()
{
  final Map<String,dynamic> data=<String,dynamic>{};
  data['benefactorID']=benefactorID;
  data['userID']=userID;
  data['first_name']=first_name;
  data['family_name']=family_name;
  data['phone']=phone;
  data['address']=address;

  return data;

}



}