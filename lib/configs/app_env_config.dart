enum Environment {
  dev,
  stg,
  prod,
}

extension EnvironmentExt on Environment {
  String get envName {
    switch (this) {
      case Environment.dev:
        return 'LOCAL';
      case Environment.stg:
        return 'STAGING';
      case Environment.prod:
        return 'PROD';
    }
  }

  String get baseUrl {
    switch (this) {
      case Environment.dev:
        return "http://ec2-3-115-5-1.ap-northeast-1.compute.amazonaws.com/";
      case Environment.stg:
        return "https://api.themoviedb.org";
      case Environment.prod:
        return "https://api.themoviedb.org";
    }
  }
}
