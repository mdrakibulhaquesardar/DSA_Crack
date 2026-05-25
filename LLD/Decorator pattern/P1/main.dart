abstract class INotification {
  String getMessage();
  int getTime();
}

class BasicNotification implements INotification {
  @override
  String getMessage() {
    String msg = ("You Have new Messages");
    return msg;
  }

  @override
  int getTime() {
    int time = 10;
    return time;
  }
}

// decoretor interface

abstract class NotificationDecorator implements INotification {
  final INotification notification;

  NotificationDecorator(this.notification);

  @override
  String getMessage() => notification.getMessage();

  @override
  int getTime() => notification.getTime();
}

class EncryptionDecorator extends NotificationDecorator {
  EncryptionDecorator(super.notification);

  @override
  String getMessage() {
    String encryption = notification.getMessage();
    encryption = encryption.split('').reversed.join();
    return "Encrypted: $encryption";
  }

  @override
  int getTime() {
    return super.getTime() + 5;
  }
}

class LoggingDecorator extends NotificationDecorator {
  LoggingDecorator(super.notification);

  @override
  String getMessage() {
    print('Logging Notification');
    return super.getMessage();
  }
}

void main() {
  INotification notification = BasicNotification();
    notification = LoggingDecorator(notification);
  notification = EncryptionDecorator(notification);


  print(notification.getMessage());
  print(notification.getTime());
}
