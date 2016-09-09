.class public Lcom/android/calendar/alerts/DismissAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAlarmsService.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/DismissAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "DismissAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private static buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "events/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 141
    const-string v1, "intent_source"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method private static buildMultipleEventsQuery([J)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    array-length v2, p0

    if-lez v2, :cond_1

    .line 151
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, "event_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 156
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, "event_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 20

    .prologue
    .line 66
    const-string v2, "DismissAlarmsService"

    const-string v3, "onReceive: a=%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    const-string v2, "eventid"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 69
    const-string v2, "eventstart"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 70
    const-string v2, "eventend"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 71
    const-string v2, "eventids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    .line 72
    const-string v2, "starts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v11

    .line 73
    const-string v2, "notificationid"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 74
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 76
    sget-object v14, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 80
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 81
    new-instance v2, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;-><init>(JJ)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v2, "state=1 AND event_id="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/DismissAlarmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/android/calendar/alerts/GlobalDismissManager;->dismissGlobally(Landroid/content/Context;Ljava/util/List;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/DismissAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 98
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 99
    sget-object v11, Lcom/android/calendar/alerts/DismissAlarmsService;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const/4 v11, 0x0

    invoke-virtual {v3, v14, v10, v2, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    :goto_1
    const/4 v2, -0x1

    if-eq v12, v2, :cond_0

    .line 108
    const-string v2, "notification"

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/alerts/DismissAlarmsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 110
    invoke-virtual {v2, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 113
    :cond_0
    const/4 v2, 0x0

    .line 114
    const-string v3, "com.android.calendar.SHOW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-interface {v2, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    move-object/from16 v3, p0

    .line 117
    invoke-static/range {v3 .. v9}, Lcom/android/calendar/alerts/DismissAlarmsService;->buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v2

    .line 119
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/alerts/DismissAlarmsService;->startActivity(Landroid/content/Intent;)V

    .line 121
    sget v2, Lcom/android/calendar/R$string;->analytics_action_notification_open:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v3

    .line 128
    sget v4, Lcom/android/calendar/R$string;->analytics_category_notification:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/calendar/alerts/DismissAlarmsService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/alerts/DismissAlarmsService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    return-void

    .line 84
    :cond_3
    if-eqz v10, :cond_5

    array-length v2, v10

    if-lez v2, :cond_5

    if-eqz v11, :cond_5

    array-length v2, v10

    array-length v3, v11

    if-ne v2, v3, :cond_5

    .line 86
    invoke-static {v10}, Lcom/android/calendar/alerts/DismissAlarmsService;->buildMultipleEventsQuery([J)Ljava/lang/String;

    move-result-object v3

    .line 87
    const/4 v2, 0x0

    :goto_3
    array-length v15, v10

    if-ge v2, v15, :cond_4

    .line 88
    new-instance v15, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;

    aget-wide v16, v10, v2

    aget-wide v18, v11, v2

    invoke-direct/range {v15 .. v19}, Lcom/android/calendar/alerts/GlobalDismissManager$AlarmId;-><init>(JJ)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto/16 :goto_0

    .line 92
    :cond_5
    const-string v2, "state=1"

    goto/16 :goto_0

    .line 102
    :cond_6
    const-string v2, "DismissAlarmsService"

    const-string v3, "Could not mark CalendarAlert as dismissed due to lack of permissions or access to calendar storage"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 122
    :cond_7
    const-string v3, "com.android.calendar.DISMISS"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    sget v2, Lcom/android/calendar/R$string;->analytics_action_notification_dismiss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2
.end method
