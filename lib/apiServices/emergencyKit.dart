class EmergencyKit {
  final String userId;
  final String details;
  final int localType;
  final String contact;
  final String name;
  String? emergencyKitId; // Optional for the create operation

  EmergencyKit({
    required this.userId,
    required this.details,
    required this.localType,
    required this.contact,
    required this.name,
    this.emergencyKitId,
  });

  Map<String, dynamic> toJson() {
    final map = {
      'userId': userId,
      'details': details,
      'localType': localType,
      'contact': contact,
      'name': name,
    };

    if (emergencyKitId != null) {
      map['emergencyKitId'] = emergencyKitId.toString();
    }

    return map;
  }
}

class EmergencyKitListRequest {
  final int sortType;
  final int sortOrder;
  final List<int> statusArray;
  final List<int> screenType;
  final List<String> emergencyKitIds;
  final List<String> userIds;
  final int limit;
  final int skip;
  final String searchingText;

  EmergencyKitListRequest({
    required this.sortType,
    required this.sortOrder,
    required this.statusArray,
    required this.screenType,
    required this.emergencyKitIds,
    required this.userIds,
    required this.limit,
    required this.skip,
    required this.searchingText,
  });

  Map<String, dynamic> toJson() {
    return {
      'sortType': sortType,
      'sortOrder': sortOrder,
      'statusArray': statusArray,
      'screenType': screenType,
      'emergencyKitIds': emergencyKitIds,
      'userIds': userIds,
      'limit': limit,
      'skip': skip,
      'searchingText': searchingText,
    };
  }
}
