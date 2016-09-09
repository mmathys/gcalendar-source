.class public Lcom/android/calendar/task/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# direct methods
.method public static showReminderToast(Landroid/content/Context;IZLjava/lang/Long;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 31
    if-nez p2, :cond_1

    .line 33
    if-ne p1, v7, :cond_0

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 35
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget v0, Lcom/android/calendar/R$string;->move_reminder_to_date:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->convertLocalToAllDayUtc(J)J

    move-result-wide v0

    .line 40
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 41
    new-array v11, v7, [Ljava/lang/Object;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v0

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 41
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_1
    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void

    :cond_0
    move v0, v9

    .line 33
    goto :goto_0

    .line 45
    :cond_1
    sget v0, Lcom/android/calendar/R$plurals;->reminders_marked_done:I

    new-array v2, v7, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 45
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
