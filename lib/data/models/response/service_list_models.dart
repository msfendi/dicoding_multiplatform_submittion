class ServiceListModels {
  String name;
  String iconUrl;
  ServiceListModels({
    required this.name,
    required this.iconUrl,
  });
}

List<ServiceListModels> serviceList = [
  ServiceListModels(name: 'Top up', iconUrl: 'assets/icons/top-up.png'),
  ServiceListModels(name: 'Transfer', iconUrl: 'assets/icons/transfer.png'),
  ServiceListModels(name: 'Request', iconUrl: 'assets/icons/request.png'),
  ServiceListModels(name: 'History', iconUrl: 'assets/icons/history.png'),
];
