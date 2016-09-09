.class Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Lcom/android/calendar/CalendarUtils$TimeZoneUtils;

    .line 88
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 93
    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 94
    if-nez p3, :cond_0

    .line 95
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z
    invoke-static {v0}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 96
    const/4 v0, 0x1

    # setter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z
    invoke-static {v0}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 97
    monitor-exit v4

    .line 139
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "key"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 103
    const-string v0, "value"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move v0, v3

    .line 104
    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v8, "timezoneType"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    const-string v2, "auto"

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 110
    :goto_2
    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v7

    if-eq v2, v7, :cond_1

    .line 112
    # setter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z
    invoke-static {v2}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$302(Z)Z

    :goto_3
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 108
    goto :goto_2

    .line 114
    :cond_3
    const-string v8, "timezoneInstancesPrevious"

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    # setter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_4
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 123
    if-eqz v0, :cond_5

    .line 124
    check-cast p2, Landroid/content/Context;

    .line 125
    invoke-static {p2}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    const-string v1, "preferences_home_tz_enabled"

    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 128
    const-string v1, "preferences_home_tz"

    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_5
    const/4 v0, 0x0

    # setter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z
    invoke-static {v0}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 132
    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 133
    if-eqz v0, :cond_6

    .line 134
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 137
    :cond_7
    # getter for: Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;
    invoke-static {}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 138
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
