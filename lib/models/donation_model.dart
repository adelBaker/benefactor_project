class DonationModel
{
  late var donation_ID;
  late var type_ID;
  late var number;
  late var benefactor_ID;
  late var address;
  late var description;
  late var notes;
  late var expiration_date;
  late var donation_date;



  DonationModel(
      this.donation_ID,
      this.type_ID,
      this.number,
      this.benefactor_ID,
      this.address,
      this.description,
      this.notes,
      this.expiration_date,
      this.donation_date
      );


  DonationModel.fromJson(Map<String,dynamic> json)
  {
    donation_ID=json['donation_ID'];
    type_ID=json['type_ID'];
    number=json['number'];
    benefactor_ID=json['benefactor_ID'];
    address=json['address'];
    description=json['description'];
    notes=json['notes'];
    expiration_date=json['expiration_date'];
    donation_date=json['donation_date'];

  }

  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data=<String,dynamic>{};
    data['donation_ID']=donation_ID;
    data['type_ID']=type_ID;
    data['number']=number;
    data['benefactor_ID']=benefactor_ID;
    data['address']=address;
    data['description']=description;
    data['notes']=notes;
    data['expiration_date']=expiration_date;
    data['donation_date']=donation_date;

    return data;
  }







}