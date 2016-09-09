.class public Lcom/android/calendar/widget/CalendarAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarAppWidgetProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/calendar/widget/CalendarAppWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static createWidgetLifeboatPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetLifeboatAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "widget://com.android.calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/calendar/widget/CalendarAppWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getLaunchIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 321
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/calendar/widget/CalendarAppWidgetService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 323
    const-string v0, "vnd.android.data/lifeboat"

    .line 322
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    return-object v1

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getLaunchPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 415
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    const-string v1, "intent_source"

    const-string v2, "widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getScheduledUpdateIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.data/update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    return-object v0
.end method

.method static getScheduledUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-static {p0}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getScheduledUpdateIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static notifyWidgetDataChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 8

    .prologue
    .line 190
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    invoke-static {p0, p2}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->createWidgetLifeboatPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 194
    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x4e20

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 196
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "Installed lifeboat for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->events_list:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 200
    return-void
.end method

.method private static performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "Building widget %d update..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 295
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$layout;->widget_initial:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 297
    const-string v1, "CalendarWidgetProvider"

    const-string v2, "... update events_list"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    invoke-static {p0, p2, p4}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v1

    .line 301
    const-string v2, "CalendarWidgetProvider"

    const-string v3, "updateIntent = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    sget v2, Lcom/android/calendar/R$id;->events_list:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 306
    invoke-static {p0}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getLaunchPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    sget v2, Lcom/android/calendar/R$id;->events_list:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 309
    const-string v1, "CalendarWidgetProvider"

    const-string v2, "... updateHeader"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    invoke-static {p0, v0, p3}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->updateHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 313
    const-string v1, "CalendarWidgetProvider"

    const-string v2, "... updateAppWidget"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 314
    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 315
    return-void
.end method

.method private static performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 281
    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p2, v0

    .line 282
    invoke-static {p0, v3}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyle(Landroid/content/Context;I)I

    move-result v4

    .line 283
    invoke-static {p0, p1, v3, v4, v1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method static startQueryRefresh(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetRefreshModelAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.data/update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private static updateHeader(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 330
    new-instance v5, Lcom/android/calendar/time/Time;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v5}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 332
    invoke-virtual {v5, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 335
    if-nez p2, :cond_0

    move v4, v0

    .line 336
    :goto_0
    if-eqz v4, :cond_1

    sget v0, Lcom/android/calendar/R$id;->header:I

    move v8, v0

    .line 337
    :goto_1
    if-eqz v4, :cond_2

    sget v0, Lcom/android/calendar/R$id;->header_weekday:I

    move v1, v0

    .line 338
    :goto_2
    if-eqz v4, :cond_3

    sget v0, Lcom/android/calendar/R$id;->header_date:I

    move v7, v0

    .line 339
    :goto_3
    if-eqz v4, :cond_4

    sget v0, Lcom/android/calendar/R$id;->header2:I

    .line 340
    :goto_4
    invoke-virtual {p1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 341
    const/16 v4, 0x8

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 344
    invoke-static {v5}, Lcom/android/calendar/widget/WidgetUtils;->getMediumDayOfWeekString(Lcom/android/calendar/time/Time;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 346
    const/16 v6, 0x10

    move-object v1, p0

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/time/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    const-string v1, "intent_source"

    const-string v2, "widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 361
    return-void

    :cond_0
    move v4, v9

    .line 335
    goto/16 :goto_0

    .line 336
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->header2:I

    move v8, v0

    goto/16 :goto_1

    .line 337
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->header2_weekday:I

    move v1, v0

    goto/16 :goto_2

    .line 338
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->header2_date:I

    move v7, v0

    goto/16 :goto_3

    .line 339
    :cond_4
    sget v0, Lcom/android/calendar/R$id;->header:I

    goto/16 :goto_4
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "onAppWidgetOptionsChanged:%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-static {p4}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyle(Landroid/os/Bundle;)I

    move-result v0

    .line 172
    invoke-static {p1, p2, p3, v0, v4}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 173
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "... notifyAppWidgetViewDataChanged -> %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-static {p1, p2, p3}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->notifyWidgetDataChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 258
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 208
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 209
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getScheduledUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 211
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "onDisabled Canceling alarm for getScheduledUpdateIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService;->discardLoaderManager()V

    .line 214
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 225
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getScheduledUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 232
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 233
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "onEnabled Set alarm for getScheduledUpdateIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 237
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->startQueryRefresh(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-boolean v1, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 65
    sget-boolean v2, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_1
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIME_SET"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.android.timely.intent.action.TASK_SETTINGS_CHANGED"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetCallerIsSyncAdapterAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetTaskChanged(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    .line 79
    const-string v2, "CalendarWidgetProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    const-string v2, "CalendarWidgetProvider"

    const-string v3, "Received intent: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p2, v4, v10

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    const-string v2, "CalendarWidgetProvider"

    const-string v3, "... ids=%s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    :cond_3
    invoke-static {p1, v1, v0}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 85
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->startQueryRefresh(Landroid/content/Context;)V

    .line 159
    :cond_4
    :goto_0
    return-void

    .line 87
    :cond_5
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 95
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_4

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    const-string v1, "appWidgetIds"

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 101
    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    .line 102
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "refresh query after an install"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->startQueryRefresh(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_6
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetNextUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 111
    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/calendar/widget/WidgetDataReceiver;->getNextMidnightTimeMillis(JLjava/lang/String;)J

    move-result-wide v0

    .line 114
    const-wide/32 v2, 0x1499700

    add-long/2addr v2, v4

    .line 115
    cmp-long v6, v2, v0

    if-lez v6, :cond_9

    .line 118
    :goto_1
    const-string v2, "TriggerTime"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 120
    cmp-long v6, v2, v0

    if-lez v6, :cond_a

    move-wide v2, v0

    .line 130
    :cond_7
    :goto_2
    const-string v0, "alarm"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 133
    invoke-static {p1}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getScheduledUpdatePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 141
    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    .line 142
    const-string v6, "CalendarWidgetProvider"

    const-string v7, "Encountered late trigger time <%s>"

    new-array v8, v9, [Ljava/lang/Object;

    .line 143
    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/widget/WidgetUtils;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    .line 142
    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v4

    .line 146
    :cond_8
    invoke-virtual {v0, v9, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 147
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "... Set alarm for getScheduledUpdateIntent at:%s"

    new-array v6, v9, [Ljava/lang/Object;

    .line 148
    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/widget/WidgetUtils;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v10

    .line 147
    invoke-static {v0, v1, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_9
    move-wide v0, v2

    .line 115
    goto :goto_1

    .line 122
    :cond_a
    const-wide/16 v6, 0x2710

    sub-long v6, v4, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    .line 124
    const-string v6, "CalendarWidgetProvider"

    const-string v7, "Encountered bad trigger time <%s>"

    new-array v8, v9, [Ljava/lang/Object;

    .line 125
    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/widget/WidgetUtils;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    .line 124
    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v2, v0

    .line 126
    goto :goto_2

    .line 149
    :cond_b
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetLifeboatAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 152
    const-string v0, "CalendarWidgetProvider"

    const-string v2, "Received lifeboat alarm: %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    invoke-static {p1, v0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyle(Landroid/content/Context;I)I

    move-result v2

    .line 155
    invoke-static {p1, v1, v0, v2, v9}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    goto/16 :goto_0

    .line 157
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 246
    const-string v0, "CalendarWidgetProvider"

    const-string v1, "onUpdate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    invoke-static {p1, p2, p3}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 248
    return-void
.end method
