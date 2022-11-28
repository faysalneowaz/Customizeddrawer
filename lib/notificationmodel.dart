// ignore_for_file: public_member_api_docs, sort_constructors_first
class NotificationModel {
  String notificationTitle;
  String details;
  bool priority;
  String datetime;

  NotificationModel(
    this.notificationTitle,
    this.details,
    this.priority,
    this.datetime,
  );
}
