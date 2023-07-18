class User {
  Name name;
  Location location;
  Login login;
  Dob dob;
  Dob registered;
  String gender;
  String email;
  String phone;
  String cell;
  String nat;
  Id id;
  Picture picture;

  User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    print('ok1');
    print(json.keys);
    return User(
      gender: json["gender"],
      email: json["email"],
      phone: json["phone"],
      cell: json["cell"],
      nat: json["nat"],
      name: Name.fromJson(json["name"]),
      location: Location.fromJson(json["location"]),
      login: Login.fromJson(json["login"]),
      dob: Dob.fromJson(json["dob"]),
      registered: Dob.fromJson(json["registered"]),
      id: Id.fromJson(json["id"]),
      picture: Picture.fromJson(json["picture"]),
    );
  }
}

class Dob {
  String date;
  int age;

  Dob({
    required this.date,
    required this.age,
  });

  factory Dob.fromJson(Map<String, dynamic> json) {
    print('ok2');
    return Dob(
      date: json["date"],
      age: json["age"],
    );
  }
}

class Id {
  String name;
  String value;

  Id({
    required this.name,
    required this.value,
  });

  factory Id.fromJson(Map<String, dynamic> json) {
    print('ok3');
    print(json);
    return Id(
      name: json["name"] ?? '',
      value: json["value"] ?? '',
    );
  }
}

class Location {
  Street street;
  String city;
  String state;
  String country;
  int postcode;
  Coordinates coordinates;
  Timezone timezone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    print('ok4');
    print(json);
    return Location(
      city: json["city"],
      state: json["state"],
      country: json["country"],
      postcode: json["postcode"],
      street: Street.fromJson(json["street"]),
      coordinates: Coordinates.fromJson(json["coordinates"]),
      timezone: Timezone.fromJson(json["timezone"]),
    );
  }
}

class Coordinates {
  String latitude;
  String longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    print('ok5');
    return Coordinates(
      latitude: json["latitude"],
      longitude: json["longitude"],
    );
  }
}

class Street {
  int number;
  String name;

  Street({
    required this.number,
    required this.name,
  });

  factory Street.fromJson(Map<String, dynamic> json) {
    print('ok6');
    print(json.values.map((e) => e.runtimeType));
    return Street(
      number: json["number"],
      name: json["name"],
    );
  }
}

class Timezone {
  String offset;
  String description;

  Timezone({
    required this.offset,
    required this.description,
  });

  factory Timezone.fromJson(Map<String, dynamic> json) {
    print('ok7');
    return Timezone(
      offset: json["offset"],
      description: json["description"],
    );
  }
}

class Login {
  String uuid;
  String username;
  String password;
  String salt;
  String md5;
  String sha1;
  String sha256;

  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    print('ok8');
    return Login(
      uuid: json["uuid"],
      username: json["username"],
      password: json["password"],
      salt: json["salt"],
      md5: json["md5"],
      sha1: json["sha1"],
      sha256: json["sha256"],
    );
  }
}

class Name {
  String title;
  String first;
  String last;

  Name({
    required this.title,
    required this.first,
    required this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) {
    print('ok9');
    return Name(
      title: json["title"],
      first: json["first"],
      last: json["last"],
    );
  }
}

class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory Picture.fromJson(Map<String, dynamic> json) {
    print('ok10');
    return Picture(
      large: json["large"],
      medium: json["medium"],
      thumbnail: json["thumbnail"],
    );
  }
}
