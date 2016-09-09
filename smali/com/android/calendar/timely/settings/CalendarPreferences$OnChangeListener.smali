.class public interface abstract Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;
.super Ljava/lang/Object;
.source "CalendarPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/CalendarPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation


# virtual methods
.method public abstract onChangeColor(Landroid/net/Uri;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;Z)V
.end method

.method public abstract onChangeNotifications(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChangeSync(Landroid/net/Uri;Z)V
.end method

.method public abstract onChangeTitle(Landroid/net/Uri;Ljava/lang/String;)V
.end method
