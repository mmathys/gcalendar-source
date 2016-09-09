.class public Lcom/android/calendar/alerts/AlertBuilder;
.super Ljava/lang/Object;
.source "AlertBuilder.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    invoke-direct {v0, p1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertBuilder;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    .line 31
    return-void
.end method

.method private createClickEventIntent(JJJI)Landroid/app/PendingIntent;
    .locals 11

    .prologue
    .line 121
    const-string v9, "com.android.calendar.SHOW"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/calendar/alerts/AlertBuilder;->createDismissAlarmsIntent(JJJILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createDeleteEventIntent(JJJI)Landroid/app/PendingIntent;
    .locals 11

    .prologue
    .line 130
    const-string v9, "com.android.calendar.DISMISS"

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/calendar/alerts/AlertBuilder;->createDismissAlarmsIntent(JJJILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createDismissAlarmsIntent(JJJILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 142
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 144
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/alerts/DismissAlarmsService;

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "eventid"

    .line 149
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "eventstart"

    .line 150
    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "eventend"

    .line 151
    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notificationid"

    .line 152
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public makeExpandingNotification(Ljava/lang/String;Ljava/lang/String;JJJJII)Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
    .locals 15

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v2

    .line 42
    iget-object v3, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->notification_ticker_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 46
    new-instance v12, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 47
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object v3, p0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p11

    .line 50
    invoke-direct/range {v3 .. v10}, Lcom/android/calendar/alerts/AlertBuilder;->createClickEventIntent(JJJI)Landroid/app/PendingIntent;

    move-result-object v13

    move-object v3, p0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p11

    .line 52
    invoke-direct/range {v3 .. v10}, Lcom/android/calendar/alerts/AlertBuilder;->createDeleteEventIntent(JJJI)Landroid/app/PendingIntent;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/android/calendar/alerts/AlertBuilder;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMapTrampolineIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    .line 57
    iget-object v5, p0, Lcom/android/calendar/alerts/AlertBuilder;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    move-wide/from16 v0, p9

    invoke-virtual {v5, v0, v1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createMailTrampolineIntent(J)Landroid/app/PendingIntent;

    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/android/calendar/alerts/AlertBuilder;->mIntentBuilder:Lcom/android/calendar/alerts/AlertActionIntentBuilder;

    .line 59
    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1}, Lcom/android/calendar/alerts/AlertActionIntentBuilder;->createContactActivityIntent(J)Lcom/android/calendar/alerts/ContactNotification;

    move-result-object v6

    .line 62
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 64
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 65
    invoke-static {v11, v2}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 66
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v7, Lcom/android/calendar/R$drawable;->ic_notify_white:I

    .line 67
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-wide/16 v8, 0x0

    .line 70
    invoke-virtual {v2, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 71
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "event"

    .line 74
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v4, :cond_0

    .line 85
    sget v2, Lcom/android/calendar/R$drawable;->ic_location_white:I

    iget-object v7, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/calendar/R$string;->map_label:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v3, v2, v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    const/4 v2, 0x1

    .line 89
    :cond_0
    if-eqz v6, :cond_1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 90
    invoke-interface {v6}, Lcom/android/calendar/alerts/ContactNotification;->createTrampolineIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    invoke-interface {v6}, Lcom/android/calendar/alerts/ContactNotification;->getIconResource()I

    move-result v7

    iget-object v8, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {v6}, Lcom/android/calendar/alerts/ContactNotification;->getLabelResource()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v3, v7, v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 98
    :cond_1
    if-eqz v5, :cond_2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 99
    sget v4, Lcom/android/calendar/R$drawable;->ic_email_white:I

    iget-object v6, p0, Lcom/android/calendar/alerts/AlertBuilder;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/calendar/R$string;->email_guests_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v3, v4, v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 104
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 106
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "UID"

    const-string v5, "%s-%s-%s-%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 110
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_3
    new-instance v2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;

    move-wide/from16 v4, p9

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;-><init>(Landroid/app/Notification;JJJ)V

    return-object v2
.end method
