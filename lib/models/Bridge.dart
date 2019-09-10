class Bridge {
  final int id;
  final String name;
  final int opened;
  final String latitude;
  final String longitude;
  final int sort;
  final DateTime updated;
  final String lastUpdate;

  Bridge({
    this.id,
    this.name,
    this.opened,
    this.latitude,
    this.longitude,
    this.sort,
    this.updated,
    this.lastUpdate,
  });


  factory Bridge.fromJson(Map<String, dynamic> data) {
    data = data ?? {};
    return Bridge(
      id: data['id'] ?? 0,
      name: data['name'] ?? '',
      opened: data['opened'] ?? 0,
      latitude: data['latitude'] ?? '',
      longitude: data['longitude'] ?? '',
      sort: data['sort'] ?? 0,
      updated: data['updated'] ?? DateTime.now(),
      lastUpdate: data['last_update'] ?? '',
    );
  }

}
