.class public interface abstract Lcom/android/calendar/event/data/InputAspectNotification;
.super Ljava/lang/Object;
.source "InputAspectNotification.java"


# virtual methods
.method public abstract addNotificationRefreshListener(Ljava/lang/Runnable;)V
.end method

.method public abstract canChangeNotifications()Z
.end method

.method public abstract enableSmartNotifications(Z)V
.end method

.method public abstract isExchangeNotifications()Z
.end method

.method public abstract mutableNotifications()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notificationSet()Lcom/android/calendar/event/edit/CalendarNotificationSet;
.end method

.method public abstract observableIsAllDay()Lcom/google/calendar/v2/client/service/common/ObservableBoolean;
.end method

.method public abstract removeNotificationRefreshListener(Ljava/lang/Runnable;)V
.end method

.method public abstract smartNotificationsEnabled()Z
.end method
