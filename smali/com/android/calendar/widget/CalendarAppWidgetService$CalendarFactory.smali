.class public Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private mLastWidgetDataChangedNotification:J

.field private mRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/WidgetRow$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastWidgetDataChangedNotification:J

    .line 85
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 88
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    .line 89
    const-string v0, "CalendarWidget"

    const-string v1, "CalendarFactory construct %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    return-void
.end method

.method private notifyWidgetDataChanged()V
    .locals 6

    .prologue
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 221
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastWidgetDataChangedNotification:J

    sub-long v2, v0, v2

    .line 222
    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 223
    invoke-static {v2, v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->notifyWidgetDataChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 225
    iput-wide v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastWidgetDataChangedNotification:J

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "CalendarWidget"

    const-string v1, "Data changed notification dropped, sending them too frequently."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "CalendarWidget"

    const-string v1, "CalendarFactory.getCount:mRowList == null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {v0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 149
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 150
    sget v0, Lcom/android/calendar/R$layout;->widget_loading:I

    :goto_1
    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 149
    return-object v1

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->widget_no_permission:I

    goto :goto_1
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {v0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    :cond_0
    if-lez p1, :cond_1

    .line 160
    const-string v0, "CalendarWidget"

    const-string v1, "getViewAt(%s) without access to calendar"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->notifyWidgetDataChanged()V

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 168
    const-string v0, "CalendarWidget"

    const-string v1, "getViewAt:%d at %d mRowList == null"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/calendar/Utils;->getLaunchFillInIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    .line 171
    sget v2, Lcom/android/calendar/R$id;->appwidget_loading:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_3
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_5

    .line 177
    :cond_4
    const-string v0, "CalendarWidget"

    const-string v1, "getViewAt:%d at %d out of range request"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    invoke-direct {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->notifyWidgetDataChanged()V

    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/widget/WidgetRow$Row;

    .line 185
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    invoke-virtual {v0, v3}, Lcom/android/calendar/widget/WidgetRow$Row;->getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 189
    instance-of v2, v0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;

    if-eqz v2, :cond_6

    .line 191
    check-cast v0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;

    invoke-virtual {v0, v1}, Lcom/android/calendar/widget/WidgetRow$WeekDivider;->updateTextView(Landroid/widget/RemoteViews;)V

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_6
    instance-of v2, v0, Lcom/android/calendar/widget/WidgetRow$DayDivider;

    if-eqz v2, :cond_7

    .line 194
    check-cast v0, Lcom/android/calendar/widget/WidgetRow$DayDivider;

    invoke-virtual {v0, v1}, Lcom/android/calendar/widget/WidgetRow$DayDivider;->updateView(Landroid/widget/RemoteViews;)V

    move-object v0, v1

    .line 195
    goto/16 :goto_0

    .line 196
    :cond_7
    instance-of v2, v0, Lcom/android/calendar/widget/WidgetRow$Chip;

    if-eqz v2, :cond_8

    .line 198
    check-cast v0, Lcom/android/calendar/widget/WidgetRow$Chip;

    .line 200
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/widget/WidgetRow$Chip;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 201
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/widget/WidgetRow$Chip;->setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    move-object v0, v1

    .line 203
    goto/16 :goto_0

    .line 204
    :cond_8
    instance-of v2, v0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;

    if-eqz v2, :cond_9

    .line 205
    check-cast v0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    move-object v0, v1

    .line 206
    goto/16 :goto_0

    .line 207
    :cond_9
    instance-of v2, v0, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;

    if-eqz v2, :cond_a

    .line 208
    check-cast v0, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/calendar/Utils;->getLaunchFillInIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    sget v2, Lcom/android/calendar/R$id;->appwidget_no_events:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    move-object v0, v1

    .line 213
    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 215
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/android/calendar/widget/WidgetRow;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onDataSetChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    const-string v0, "CalendarWidget"

    const-string v1, "CalendarFactory.onDataSetChanged:%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    const-string v0, "CalendarWidget"

    const-string v1, "Cleaning up lifeboat for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 112
    invoke-static {v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->createWidgetLifeboatPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {v0}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const-string v0, "CalendarWidget"

    const-string v1, "No calendar access in onDataSetChanged - bailing out"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_1
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 126
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowListLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_2
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mRowList:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 136
    invoke-static {v2, v3}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyle(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mViewContext:Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_2
    const-string v2, "CalendarWidget"

    const-string v3, "Waiting for WidgetDataReceiver - Interrupted"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 141
    const-string v0, "CalendarWidget"

    const-string v1, "CalendarFactory.onDestroy:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    return-void
.end method
