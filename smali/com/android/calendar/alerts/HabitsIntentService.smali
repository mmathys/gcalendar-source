.class public Lcom/android/calendar/alerts/HabitsIntentService;
.super Landroid/app/IntentService;
.source "HabitsIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;
    }
.end annotation


# instance fields
.field private mAnalyticsCategory:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/android/calendar/AnalyticsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 213
    const-string v0, "HabitsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;IZLjava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.calendar.intent.action.ACTION_HABIT_COMPLETE"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    .line 161
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "completed"

    .line 162
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventId"

    iget-wide v2, p2, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 163
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear"

    const/4 v2, 0x1

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    .line 165
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analytics_label"

    .line 166
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public static createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 171
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsIntentService;->createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;IZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.calendar.intent.action.ACTION_HABIT_DEFER"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    .line 120
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventId"

    iget-wide v2, p2, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "descriptor"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear"

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analytics_label"

    .line 124
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public static createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/calendar/alerts/HabitsIntentService;->createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createDismissIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/calendar/alerts/HabitsIntentService;->createDismissIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createDismissIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.calendar.intent.action.ACTION_HABIT_DISMISS_NOTIFICATION"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    .line 151
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventId"

    iget-wide v2, p1, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear"

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method public static createForceSyncIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 186
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v0, "com.google.android.calendar.intent.action.HABITS_FORCE_SYNC"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v2, "groove://"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    const-class v0, Lcom/android/calendar/alerts/GrooveAlertReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v0, "groove_operation"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v0, "force_sync_log_time"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    if-eqz p3, :cond_0

    .line 199
    const-string v0, "force_sync_instance_tracking_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :cond_0
    if-eqz p2, :cond_1

    .line 204
    const-string v0, "force_sync_tracking_groove_id"

    iget-object v2, p2, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v0, "account"

    iget-object v2, p2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v0, "feed_internal"

    iget-object v2, p2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 207
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :cond_1
    return-object v1

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createRefreshNotificationsIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.calendar.intent.action.REFRESH_GROOVE_NOTIFICATIONS"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 178
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calendarId"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 179
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "idsOfParentsAffected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private createTimelineItem(Lcom/google/android/calendar/api/Habit;JJJII)Lcom/android/calendar/groove/TimelineGroove;
    .locals 6

    .prologue
    .line 835
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 836
    new-instance v1, Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {v1, v0}, Lcom/android/calendar/groove/TimelineGroove;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 837
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveCategories;->getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    .line 838
    invoke-static {p8}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    iput v0, v1, Lcom/android/calendar/groove/TimelineGroove;->color:I

    .line 839
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 840
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 841
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 842
    invoke-virtual {v2, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 843
    iput-wide p2, v1, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 844
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/calendar/groove/TimelineGroove;->startMillis:J

    .line 845
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v1, Lcom/android/calendar/groove/TimelineGroove;->startDay:I

    .line 846
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0xc

    .line 847
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/calendar/groove/TimelineGroove;->startTime:I

    .line 848
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/calendar/groove/TimelineGroove;->endMillis:J

    .line 849
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, v1, Lcom/android/calendar/groove/TimelineGroove;->endDay:I

    .line 850
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v3, 0xc

    .line 851
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/calendar/groove/TimelineGroove;->endTime:I

    .line 852
    iput p9, v1, Lcom/android/calendar/groove/TimelineGroove;->calendarAccessLevel:I

    .line 853
    return-object v1
.end method

.method public static createViewIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/alerts/HabitsIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.calendar.intent.action.ACTION_HABIT_VIEW"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    .line 136
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eventId"

    iget-wide v2, p1, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "clear"

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V

    .line 140
    return-object v0
.end method

.method private deferEvent(JLandroid/content/Intent;I)V
    .locals 17

    .prologue
    .line 512
    const-string v2, "descriptor"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 514
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    move v9, v2

    .line 515
    :goto_0
    const-string v2, "analytics_label"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 518
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 519
    iget-object v3, v8, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 520
    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 521
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_sync_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sync_data9"

    aput-object v6, v4, v5

    const-string v5, ""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 525
    if-eqz v12, :cond_0

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 526
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 528
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 529
    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 531
    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 533
    const/16 v14, 0x80

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v13

    .line 534
    const/16 v14, 0x100

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v13

    .line 537
    new-instance v14, Landroid/content/ContentValues;

    invoke-interface {v12}, Landroid/database/Cursor;->getColumnCount()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 538
    const-string v15, "dirty"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v15, "sync_data9"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 541
    invoke-virtual {v3, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 540
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 545
    const-string v13, "attendeeStatus"

    const/4 v14, 0x2

    .line 546
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 545
    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 548
    invoke-virtual {v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v13, "event_id=? AND attendeeEmail=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 550
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v8, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 549
    invoke-virtual {v3, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 551
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 547
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :try_start_1
    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 560
    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 561
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v9

    .line 562
    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/alerts/HabitsIntentService;->processDeferral(Ljava/lang/String;ZLjava/lang/String;JLcom/google/android/calendar/api/HabitDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :cond_0
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 573
    return-void

    .line 514
    :cond_1
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_0

    .line 564
    :catch_0
    move-exception v2

    .line 565
    :try_start_2
    const-string v3, "HabitsIntentService"

    const-string v4, "Remote exception deferring event"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 571
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 566
    :catch_1
    move-exception v2

    .line 567
    :try_start_3
    const-string v3, "HabitsIntentService"

    const-string v4, "Operation application exception deferring event"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getDeferFeedbackString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 473
    packed-switch p2, :pswitch_data_0

    .line 480
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_deferred:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_undeferrable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->goal_undeferrable_question:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSnackbarAction(I)I
    .locals 1

    .prologue
    .line 461
    packed-switch p1, :pswitch_data_0

    .line 467
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 463
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDeferComplete(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 424
    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sync_data8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_sync_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 430
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 431
    const-string v1, "HabitsIntentService"

    const-string v2, "Could not get event: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    if-eqz v10, :cond_0

    .line 455
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_0
    :goto_1
    return-void

    .line 431
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_2

    .line 455
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 434
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 435
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 436
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v2, v0

    move-object v9, p0

    .line 437
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 446
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v2

    .line 447
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v11

    move-object v5, p1

    move-wide v6, v0

    .line 446
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/groove/GrooveSyncTracker;->completeInstanceDeferral(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    .line 448
    if-eqz v0, :cond_4

    .line 449
    sget v1, Lcom/android/calendar/R$string;->analytics_action_defer_view_link_shown:I

    invoke-static {p0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 450
    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;

    invoke-direct {p0, v8, v0}, Lcom/android/calendar/alerts/HabitsIntentService;->getDeferFeedbackString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/calendar/alerts/HabitsIntentService;->getSnackbarAction(I)I

    move-result v0

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 450
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :cond_4
    if-eqz v10, :cond_0

    .line 455
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 454
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private handleNotificationTrigger(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 715
    const-string v0, "habitNotificationTriggerTime"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 718
    invoke-static {p0, v0, v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->scheduleAlarmForNextNotificationTriggerTime(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    .line 739
    :goto_0
    return-void

    .line 721
    :cond_0
    const-string v0, "habitNotificationTriggerTime"

    const-wide/16 v2, 0x0

    .line 722
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 724
    invoke-static {v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->getNotificationsAtTriggerTime(J)[Landroid/content/Entity;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_2

    .line 727
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 728
    aget-object v4, v1, v0

    .line 729
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/calendar/alerts/HabitsIntentService;->isShownOrDismissed(Landroid/content/Entity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 732
    invoke-direct {p0, v4}, Lcom/android/calendar/alerts/HabitsIntentService;->showNotification(Landroid/content/Entity;)V

    .line 727
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 736
    invoke-static {p0, v0, v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->scheduleAlarmForNextNotificationTriggerTime(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    goto :goto_0
.end method

.method private static isShownOrDismissed(Landroid/content/Entity;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 857
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "displayState"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 859
    const/4 v2, 0x3

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-ne v0, v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private logEventToAnalytics(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    iget-object v2, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mAnalyticsCategory:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/alerts/HabitsIntentService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    return-void
.end method

.method private markAsDone(JLandroid/content/Intent;IZ)V
    .locals 15

    .prologue
    .line 621
    const-string v2, "account"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/accounts/Account;

    .line 622
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 623
    :goto_0
    const-string v2, "analytics_label"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 625
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 626
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 627
    iget-object v3, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13, v3}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 628
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sync_data8"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sync_data9"

    aput-object v6, v4, v5

    const-string v5, ""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 632
    if-eqz v14, :cond_1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    new-instance v4, Landroid/content/ContentValues;

    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 634
    invoke-static {v14, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 636
    const-string v5, "sync_data8"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 638
    const-string v5, "dtstart"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 640
    const-string v5, "sync_data9"

    .line 641
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 640
    invoke-static {v4, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 642
    const/16 v5, 0x80

    move/from16 v0, p5

    invoke-static {v4, v5, v0}, Lcom/android/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v4

    .line 643
    if-eqz p5, :cond_0

    .line 644
    const/16 v5, 0x100

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/android/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v4

    .line 646
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 647
    const-string v7, "sync_data9"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v4, "dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 651
    if-lez v2, :cond_1

    .line 652
    invoke-static {p0, v13}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v2, p0

    move/from16 v3, p5

    move v4, v9

    move-object v5, v8

    move-object v7, v12

    move-wide/from16 v8, p1

    .line 653
    invoke-virtual/range {v2 .. v11}, Lcom/android/calendar/alerts/HabitsIntentService;->processMarkAsDoneAction(ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 660
    return-void

    .line 622
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_0

    .line 658
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private processRefreshNotificationsIntent(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 485
    const-string v0, "idsOfParentsAffected"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    if-eqz v3, :cond_0

    .line 487
    const-string v0, "calendarId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 489
    invoke-static {p0, v0, v4}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    move v1, v2

    .line 491
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 492
    new-instance v6, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v7, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v4, v8}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    aget-object v8, v3, v1

    invoke-direct {v6, v7, v8}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    .line 497
    const-string v7, "HabitsIntentService"

    const-string v8, "\tProcessing notifications for habit %s on %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v3, v1

    aput-object v10, v9, v2

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 499
    invoke-static {p0, v6, v5}, Lcom/android/calendar/alerts/HabitsNotificationManager;->updateNotificationsForHabit(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;I)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 503
    invoke-static {p0, v0, v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->scheduleAlarmForNextNotificationTriggerTime(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V

    .line 505
    return-void
.end method

.method private static requestUpSyncForCalendar(Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 702
    new-instance v1, Landroid/os/Bundle;

    if-nez p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 703
    const-string v0, "upload"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 704
    const-string v0, "feed_internal"

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "groove_operation"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    const-string v0, "upsync_tracking_id"

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    if-eqz p1, :cond_0

    .line 709
    const-string v0, "upsync_instance_tracking_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v2, "com.android.calendar"

    invoke-static {v0, v2, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 712
    return-void

    .line 702
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private showCreateFeedback(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 391
    const/4 v6, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 396
    invoke-static {}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {p1}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "dtstart ASC LIMIT 1"

    .line 393
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 399
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    const-string v1, "HabitsIntentService"

    const-string v2, "Could not get event for habit: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    if-eqz v10, :cond_0

    .line 418
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 421
    :cond_0
    :goto_1
    return-void

    .line 400
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_2

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 403
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 404
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 407
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v2, v0

    move-object v9, p0

    .line 406
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 409
    sget v3, Lcom/android/calendar/R$string;->analytics_action_creation_view_link_shown:I

    invoke-static {p0, v3}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 410
    invoke-static {p0, v4, v5}, Lcom/android/calendar/groove/GrooveUtils;->getStartAndEndOfWeek(Landroid/content/Context;J)[J

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    .line 411
    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    sget v0, Lcom/android/calendar/R$string;->async_scheduling_done:I

    .line 413
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;

    .line 414
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v2, v4}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 413
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz v10, :cond_0

    .line 418
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 412
    :cond_4
    :try_start_4
    sget v0, Lcom/android/calendar/R$string;->async_scheduling_done_no_sessions_this_week:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 417
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private showNotification(Landroid/content/Entity;)V
    .locals 18

    .prologue
    .line 742
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "eventId"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "habitParentSyncId"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 758
    const/4 v8, 0x0

    .line 760
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 761
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ownerAccount"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "visible"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "dtend"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "eventColor"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "sync_data9"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "calendar_access_level"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 760
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 772
    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 773
    :cond_0
    const-string v2, "HabitsIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not get event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 787
    if-eqz v3, :cond_1

    .line 788
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_1
    :goto_0
    return-void

    .line 776
    :cond_2
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 777
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 778
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 781
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 782
    const/4 v8, 0x4

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 783
    const/4 v10, 0x5

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 784
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 785
    const/4 v11, 0x7

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    .line 787
    if-eqz v3, :cond_3

    .line 788
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/android/calendar/alerts/HabitsNotificationManager;->isInactive(I)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v5, :cond_1

    .line 798
    sget-object v3, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    new-instance v5, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v16, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v13}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/google/android/calendar/api/HabitClient;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    .line 802
    const-wide/16 v4, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/api/HabitClient$ReadResult;

    .line 803
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v3

    move-object/from16 v2, p0

    move-wide v4, v14

    .line 805
    invoke-direct/range {v2 .. v11}, Lcom/android/calendar/alerts/HabitsIntentService;->createTimelineItem(Lcom/google/android/calendar/api/Habit;JJJII)Lcom/android/calendar/groove/TimelineGroove;

    move-result-object v2

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 810
    packed-switch v4, :pswitch_data_0

    .line 825
    const-string v2, "HabitsIntentService"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Notification of unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 827
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/alerts/HabitsNotificationManager;->dismissPastNotifications(Landroid/content/Entity;)V

    .line 828
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/calendar/alerts/HabitsNotificationManager;->setDisplayState(Landroid/content/Entity;I)V

    goto/16 :goto_0

    .line 787
    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_2
    if-eqz v3, :cond_4

    .line 788
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 812
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2, v12}, Lcom/android/calendar/alerts/HabitsAlerts;->showPreinstanceNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V

    goto :goto_1

    .line 816
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2, v12}, Lcom/android/calendar/alerts/HabitsAlerts;->showRecommitNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V

    .line 818
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/calendar/alerts/HabitsNotificationManager;->setDisplayState(Landroid/content/Entity;I)V

    goto :goto_1

    .line 821
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2, v12}, Lcom/android/calendar/alerts/HabitsAlerts;->showFollowupNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V

    goto :goto_1

    .line 787
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 227
    const-string v0, "HabitsIntentService"

    const-string v1, "Received intent %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    const-string v0, "requestCode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 231
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/calendar/alerts/HabitsAlerts;->cancel(Landroid/content/Context;I)V

    .line 236
    if-eq v5, v4, :cond_0

    .line 237
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    .line 238
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabitNotification(Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendar/alerts/HabitsNotificationManager;->setDisplayState(Landroid/content/Entity;I)V

    .line 247
    :cond_0
    const-string v0, "key_timeline_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    const-string v0, "com.google.android.calendar.intent.action.ACTION_HABIT_VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {p1}, Lcom/android/calendar/Utils;->getLaunchTimelineItem(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getLaunchFillInIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    .line 251
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V

    .line 252
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v0, "intent_source"

    const-string v2, "notification"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/HabitsIntentService;->startActivity(Landroid/content/Intent;)V

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    const-string v0, "eventId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    const-string v0, "eventId"

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 258
    const-string v0, "com.google.android.calendar.intent.action.ACTION_HABIT_COMPLETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "completed"

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "account"

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "completed"

    .line 262
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    .line 261
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/alerts/HabitsIntentService;->markAsDone(JLandroid/content/Intent;IZ)V

    .line 264
    :cond_3
    const-string v0, "com.google.android.calendar.intent.action.ACTION_HABIT_DEFER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "descriptor"

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0, v2, v3, p1, v5}, Lcom/android/calendar/alerts/HabitsIntentService;->deferEvent(JLandroid/content/Intent;I)V

    goto :goto_0

    .line 268
    :cond_4
    const-string v0, "com.google.android.calendar.intent.action.HABITS_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/HabitsIntentService;->handleNotificationTrigger(Landroid/content/Intent;)V

    .line 270
    invoke-static {p1}, Lcom/android/calendar/alerts/GrooveAlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 271
    :cond_5
    const-string v0, "com.google.android.calendar.intent.action.GROOVE_SYNCED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 272
    const-string v0, "force_sync_log_time"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    const-string v0, "groove_operation"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 278
    if-ne v0, v10, :cond_8

    .line 279
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "force_sync_tracking_groove_id"

    .line 281
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/groove/GrooveSyncTracker;->creationForceSyncFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_creation_force_sync:I

    .line 285
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_force_sync:I

    new-array v5, v9, [Ljava/lang/Object;

    const-string v9, "force_sync_create_success"

    .line 287
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    const/16 v9, 0x1676

    .line 289
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v10

    .line 286
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tracked_sync_duration"

    .line 290
    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 283
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    :cond_6
    :goto_1
    const-string v0, "parentIdsOfInstancesSynced"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_a

    move v0, v8

    .line 308
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_a

    .line 309
    aget-object v2, v1, v0

    .line 310
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v3

    .line 311
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, v1, v0

    .line 310
    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->complete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 313
    if-eqz v3, :cond_7

    .line 314
    invoke-direct {p0, v2}, Lcom/android/calendar/alerts/HabitsIntentService;->showCreateFeedback(Ljava/lang/String;)V

    .line 308
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    :cond_8
    if-ne v0, v9, :cond_6

    .line 292
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v0

    const-string v2, "force_sync_instance_tracking_id"

    .line 293
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/groove/GrooveSyncTracker;->deferForceSyncFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_defer_force_sync:I

    .line 299
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2710

    .line 300
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "force_sync_create_success"

    .line 301
    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 302
    const-wide/16 v6, 0x1

    .line 301
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 297
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 318
    :cond_a
    const-string v0, "idsOfDeferredEvents"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_b

    .line 321
    :goto_3
    array-length v1, v0

    if-ge v8, v1, :cond_b

    .line 322
    aget-object v1, v0, v8

    invoke-direct {p0, v1}, Lcom/android/calendar/alerts/HabitsIntentService;->handleDeferComplete(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 325
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/HabitsIntentService;->processRefreshNotificationsIntent(Landroid/content/Intent;)V

    .line 326
    invoke-static {p1}, Lcom/android/calendar/alerts/GrooveAlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 327
    :cond_c
    const-string v0, "com.google.android.calendar.intent.action.TRACKING_SYNC_INITIATED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 328
    const-string v0, "groove_operation"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 330
    if-ne v0, v10, :cond_d

    .line 331
    const-string v0, "upsync_tracking_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 332
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x13

    const-string v2, "upsync_tracking_id"

    .line 334
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 341
    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/android/calendar/alerts/GrooveAlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 335
    :cond_e
    const-string v0, "force_sync_tracking_groove_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x16

    const-string v2, "force_sync_tracking_groove_id"

    .line 338
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    goto :goto_4

    .line 342
    :cond_f
    const-string v0, "com.google.android.calendar.intent.action.GROOVE_REQUEST_UPSYNCED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 343
    const-string v0, "upsync_tracking_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v0, "calendarId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 346
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v6, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v2, v7}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {v5, v6, v1}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/calendar/groove/GrooveSyncTracker;->startForceSyncTimer(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/content/Intent;)V

    .line 351
    invoke-static {p1}, Lcom/android/calendar/alerts/GrooveAlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 352
    :cond_10
    const-string v0, "com.google.android.calendar.intent.action.REFRESH_GROOVE_NOTIFICATIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 353
    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/HabitsIntentService;->processRefreshNotificationsIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    :cond_11
    const-string v0, "com.google.android.calendar.intent.action.HABITS_FORCE_SYNC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 356
    const-string v0, "force_sync_tracking_groove_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string v0, "force_sync_instance_tracking_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 361
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 362
    const-string v4, "force"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    const-string v4, "feed_internal"

    const-string v5, "feed_internal"

    .line 364
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v4, "force_sync_tracking_groove_id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v4, "force_sync_instance_tracking_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v4, "force_sync_log_time"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 369
    const-string v5, "force_sync_log_time"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 372
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-static {v0, v5, v3}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 374
    const-string v0, "groove_operation"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 376
    if-eqz v4, :cond_12

    .line 377
    if-ne v0, v9, :cond_13

    .line 378
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 386
    :cond_12
    :goto_5
    invoke-static {p1}, Lcom/android/calendar/alerts/GrooveAlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 380
    :cond_13
    if-ne v0, v10, :cond_12

    .line 381
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v2, 0x15

    invoke-interface {v0, v2, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    goto :goto_5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 219
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 221
    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/alerts/HabitsIntentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mAnalyticsCategory:Ljava/lang/String;

    .line 222
    return v0
.end method

.method public processDeferral(Ljava/lang/String;ZLjava/lang/String;JLcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 4

    .prologue
    .line 598
    sget v0, Lcom/android/calendar/R$string;->analytics_action_deferred:I

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/alerts/HabitsIntentService;->logEventToAnalytics(ILjava/lang/String;)V

    .line 599
    if-eqz p2, :cond_0

    .line 600
    invoke-static {p0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    sget v0, Lcom/android/calendar/R$string;->goal_session_deferred:I

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Lcom/android/calendar/alerts/HabitsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 606
    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/android/calendar/groove/GrooveSyncTracker;->trackInstanceDeferral(Landroid/content/Context;Ljava/lang/String;J)V

    .line 610
    invoke-static {p6, p3}, Lcom/android/calendar/alerts/HabitsIntentService;->requestUpSyncForCalendar(Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;)V

    .line 612
    :cond_1
    return-void

    .line 602
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->goal_session_deferred_offline:I

    goto :goto_0
.end method

.method public processMarkAsDoneAction(ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 578
    if-eqz p1, :cond_1

    sget v0, Lcom/android/calendar/R$string;->analytics_action_marked_as_done:I

    .line 580
    :goto_0
    invoke-direct {p0, v0, p5}, Lcom/android/calendar/alerts/HabitsIntentService;->logEventToAnalytics(ILjava/lang/String;)V

    .line 581
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p6

    move-wide/from16 v6, p8

    .line 582
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/groove/GrooveUtils;->getWeekStats(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;JJ)[I

    move-result-object v0

    .line 584
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    if-ne v1, v2, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;

    sget v2, Lcom/android/calendar/R$string;->goal_marked_as_done_week_complete:I

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    :cond_0
    :goto_1
    return-void

    .line 579
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->analytics_action_marked_as_not_done:I

    goto :goto_0

    .line 588
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/alerts/HabitsIntentService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;

    sget v3, Lcom/android/calendar/R$string;->goal_marked_as_done_week_incomplete:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    aget v6, v0, v6

    .line 590
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 588
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/alerts/HabitsIntentService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/alerts/HabitsIntentService$FeedbackRunnable;-><init>(Lcom/android/calendar/alerts/HabitsIntentService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
