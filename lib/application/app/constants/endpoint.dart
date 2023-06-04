class Endpoint {
  static const postalCode = '/microsite/areas/postal-code/first?postalCode=';
  static const province = '/microsite/areas/province?name=';
  static const city = '/microsite/areas/city?provinceCode=';
  static const district = '/microsite/areas/district?provinceCode=';
  static const village = '/microsite/areas/village?provinceCode=';
  static const placeOfBirth = '/microsite/areas/district/place-of-birth?name=';
  static const communityBranch = '/microsite/community-branch?name=';
  static const publicFile = '/microsite/private-files?fileURL=';
  static const uploadFile = '/microsite/upload';

  static const getUserPari = '/microsite/user-pari';

  static const login = '/microsite/login/phone';

  static const addInformasiDataDiri = '/microsite/individual/pipeline/add';
  static const addInformasiUsaha = '/microsite/individual/business/add';
  static const updateInformasiDataDiri =
      '/microsite/individual/pipeline/update';
  static const updateInformasiUsaha = '/microsite/individual/business/update';
  static const updateInformasiLainnya =
      '/microsite/individual/more-info/update';

  static const getInformasiDataDiri =
      '/microsite/individual/pipeline?pipelineId=';
  static const getInformasiUsaha = '/microsite/individual/business?pipelineId=';
  static const getInformasiLainnya =
      '/microsite/individual/more-info?pipelineId=';
  static const referralAO = '/microsite/referral-ao/list?branchCode=';

  static const delete = '/microsite/individual/delete?pipelineId=';
}
