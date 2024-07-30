import 'package:responsive_dashboard_ui/model/activity_model.dart';

class ActivityData {
  final data = const <ActivityModel>[
    ActivityModel(
        iconImage: 'assets/icons/man.png', value: '20123', title: 'Users'),
    ActivityModel(
        iconImage: 'assets/icons/business.png',
        value: '1231231',
        title: 'Business'),
    ActivityModel(
        iconImage: 'assets/icons/rating.png', value: '99999', title: 'Ratings'),
    ActivityModel(
        iconImage: 'assets/icons/access.png',
        value: '12399182213',
        title: 'Access'),
  ];
}
