.class public interface abstract Lcom/android/calendar/BirthdayManagerInterface;
.super Ljava/lang/Object;
.source "BirthdayManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/BirthdayManagerInterface$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBirthdaySettingsLoader(Landroid/content/Context;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBirthdayCalendar(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;
.end method

.method public abstract initBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V
.end method

.method public abstract initBirthdayItemAsync(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V
.end method

.method public abstract processCursor(Landroid/database/Cursor;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restoreBirthdayItemsFromCache(Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateTitle(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineBirthday;)V
.end method
