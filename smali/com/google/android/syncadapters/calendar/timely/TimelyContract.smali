.class public Lcom/google/android/syncadapters/calendar/timely/TimelyContract;
.super Ljava/lang/Object;
.source "TimelyContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/TimelyContract$Alerts;,
        Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;
    }
.end annotation


# static fields
.field public static final ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_EXTRAS_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_EXTRAS_URI:Landroid/net/Uri;

.field public static final METHOD_LABELS_TO_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_VALUES_TO_LABELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

.field public static final NOTIFICATIONS_URI:Landroid/net/Uri;

.field public static final TASKS_CALENDAR_URI:Landroid/net/Uri;

.field public static final TIMELY_BASE_PROVIDER_URI:Landroid/net/Uri;

.field public static final VIRTUAL_FEED_SUFFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25
    const-string v0, "content://com.google.android.timely"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.google.android.timely"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TIMELY_BASE_PROVIDER_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.google.android.timely/eventextras"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->EVENT_EXTRAS_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://com.google.android.timely/accountsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://com.google.android.timely/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://com.google.android.timely/tasks"

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TASKS_CALENDAR_URI:Landroid/net/Uri;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->VIRTUAL_FEED_SUFFIXES:Ljava/util/List;

    .line 152
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->VIRTUAL_FEED_SUFFIXES:Ljava/util/List;

    const-string v1, "_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "structuredLocation"

    aput-object v1, v0, v6

    const-string v1, "smartmail"

    aput-object v1, v0, v3

    const-string v1, "eventBackgroundUrl"

    aput-object v1, v0, v4

    const-string v1, "associatedContacts"

    aput-object v1, v0, v5

    const-string v1, "eventGadget"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "titleContacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eventSource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "conferenceData"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deepLinkData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->EVENT_EXTRAS_PROJECTION:[Ljava/lang/String;

    .line 240
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "allday"

    aput-object v1, v0, v6

    const-string v1, "method"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    const-string v1, "lookupKey"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "noNotifications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    .line 315
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "ALERT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "EMAIL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "SMS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALERT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EMAIL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    .line 331
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "popup"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "email"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_LABELS_TO_VALUES:Ljava/util/Map;

    const-string v1, "sms"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "popup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->DEFAULT_METHOD_VALUES_TO_LABELS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public static apiaryToLocalSettingField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string v0, "smartMailDelivery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "defaultEventLength"

    .line 382
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "defaultNoEndTime"

    .line 383
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoAddHangouts"

    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "timezone"

    .line 385
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "qualityOfService"

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object p0

    .line 388
    :cond_1
    const-string v0, "goocal.taskscolor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const-string p0, "taskscolor"

    goto :goto_0

    .line 390
    :cond_2
    const-string v0, "goocal.holidayscolor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    const-string p0, "holidayscolor"

    goto :goto_0

    .line 394
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static apiaryToLocalSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "defaultNoEndTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autoAddHangouts"

    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    move-object p1, v0

    .line 373
    :cond_1
    return-object p1

    .line 370
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public static localSettingValueToApiary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    const-string v0, "defaultNoEndTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_0
    const-string v0, "false"

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 358
    goto :goto_0
.end method
