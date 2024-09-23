class PaymentListModels {
  String name;
  String iconUrl;
  PaymentListModels({
    required this.name,
    required this.iconUrl,
  });
}

List<PaymentListModels> paymentList = [
  PaymentListModels(name: 'Internet', iconUrl: 'assets/icons/wifi.png'),
  PaymentListModels(
      name: 'Electricity', iconUrl: 'assets/icons/electricity.png'),
  PaymentListModels(name: 'Voucher', iconUrl: 'assets/icons/voucher.png'),
  PaymentListModels(name: 'Assurance', iconUrl: 'assets/icons/assurance.png'),
  PaymentListModels(name: 'Credit', iconUrl: 'assets/icons/credit.png'),
  PaymentListModels(name: 'Bill', iconUrl: 'assets/icons/bill.png'),
  PaymentListModels(name: 'Merchant', iconUrl: 'assets/icons/merchants.png'),
  PaymentListModels(name: 'More', iconUrl: 'assets/icons/more-menu.png'),
];
