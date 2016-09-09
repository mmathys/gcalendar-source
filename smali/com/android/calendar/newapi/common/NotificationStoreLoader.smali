.class public Lcom/android/calendar/newapi/common/NotificationStoreLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "NotificationStoreLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Lcom/android/calendar/newapi/model/NotificationStore;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditHelper:Lcom/android/calendar/event/EditHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    iget-object v1, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    .line 34
    return-void
.end method

.method protected varargs runInBackground([Ljava/lang/Void;)Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 40
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    .line 47
    invoke-virtual {v2}, Lcom/android/calendar/event/EditHelper;->getCalendarsProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mEditHelper:Lcom/android/calendar/event/EditHelper;

    invoke-static {v7, v1, v0, v2}, Lcom/android/calendar/event/data/LoadDetailsUtils;->setCalendarsMapFromCursor(Ljava/util/Map;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/calendar/event/EditHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/calendar/newapi/model/NotificationStore;

    iget-object v2, p0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->mContext:Landroid/content/Context;

    .line 69
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getCalendarNotificationsMap(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/calendar/newapi/model/NotificationStore;-><init>(Ljava/util/Map;)V

    .line 68
    return-object v1

    .line 59
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 59
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->runInBackground([Ljava/lang/Void;)Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v0

    return-object v0
.end method
