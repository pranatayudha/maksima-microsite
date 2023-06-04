import 'application/enums/flavor_type.dart';

class F {
  static FlavorType? appFlavor;

  static final sharedMap = {
    'ipAddress': '127.0.0.1',
    'username': 'username',
    'password': 'password',
    'googleAPIKey': 'googleAPIKey',
  };

  static final devMap = {
    'title': '[DEV] Pinang Maksima Microsite',
    'maksimaURL': 'https://api-be.pinang-ritel.dev.rayain.net/v1',
    'maksimaTokenBasicAuth': 'maksimaTokenBasicAuth',
    'encodedSHA256Fingerprint':
        'NjggREIgMkUgMDUgMjMgRjcgQzEgMzYgQzEgMTUgMTYgRTEgMUUgRkQgNDEgODAgOUYgNjAgNEYgMzggQjAgOTQgMTAgQjIgRUQgMTQgMDkgNkQgM0UgNjQgQ0UgMDI=',
    ...sharedMap,
  };

  static final stageMap = {
    'title': '[STAGE] Pinang Maksima Microsite',
    'maksimaURL': 'https://api.pinang-ritel.staging.rayain.net/api/v1',
    'maksimaTokenBasicAuth': 'maksimaTokenBasicAuth',
    'encodedSHA256Fingerprint':
        'NjcgNDcgREIgMjMgMUEgMDcgRjMgQjEgNEMgNDAgQTQgNjkgRDEgNEIgMTkgMjkgNkIgMUYgQkUgNzUgQUQgNTYgMUMgQzAgNDkgOTAgRTkgMTEgNTUgRkQgRDYgM0E=',
    ...sharedMap,
  };

  static final prodMap = {
    'title': 'Pinang Maksima Microsite',
    'maksimaURL': 'https://api.pinang-ritel.bankraya.co.id/api/v1',
    'maksimaTokenBasicAuth': 'maksimaTokenBasicAuth',
    'encodedSHA256Fingerprint':
        'NTMgMzQgRDIgMjAgM0QgOEMgQzIgMzYgQjEgNzcgNUMgREIgNkMgQ0IgNzMgQjggMTQgNTggREUgRTEgRUYgODUgRjUgQ0UgOTEgQkQgNkUgRTMgRjEgRTggQzIgMzM=',
    ...sharedMap,
  };

  static Map<String, dynamic> get variables {
    switch (appFlavor) {
      case FlavorType.dev:
        return devMap;
      case FlavorType.stage:
        return stageMap;
      case FlavorType.prod:
        return prodMap;
      default:
        return devMap;
    }
  }
}
