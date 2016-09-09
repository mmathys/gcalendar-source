.class public Lcom/android/calendar/timely/TimelineItemUtil;
.super Ljava/lang/Object;
.source "TimelineItemUtil.java"


# direct methods
.method public static createContentDescription(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/timely/TimelineItemUtil;->createContentDescription(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createContentDescription(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    sget v0, Lcom/android/calendar/R$string;->reminder_done_description_prefix:I

    .line 102
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    sget v0, Lcom/android/calendar/R$string;->accessibility_declined_event_prefix:I

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_2
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->all_day_description_prefix:I

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_4
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-nez v0, :cond_10

    .line 149
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    .line 150
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    .line 154
    :goto_2
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 155
    const/16 v6, 0x11

    .line 157
    :cond_5
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    .line 158
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getAccessibilityDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_6
    :goto_3
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 173
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isBirthday(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_11

    move-object v0, p1

    .line 175
    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 176
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSingleLineTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_7
    :goto_4
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 202
    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 207
    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_a
    sget v0, Lcom/android/calendar/R$string;->reminder_description_prefix:I

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 108
    :cond_b
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isReminderBundle(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 110
    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v2

    .line 111
    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 112
    sget v0, Lcom/android/calendar/R$plurals;->reminder_done_bundle_description_prefix:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 113
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 116
    :cond_c
    sget v0, Lcom/android/calendar/R$plurals;->reminder_bundle_description_prefix:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 117
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 120
    :cond_d
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isGroove(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 122
    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_e

    .line 123
    sget v0, Lcom/android/calendar/R$string;->groove_done_description_prefix:I

    .line 124
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_5
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 126
    :cond_e
    sget v0, Lcom/android/calendar/R$string;->groove_description_prefix:I

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    move-wide v4, v2

    .line 150
    goto/16 :goto_2

    .line 160
    :cond_10
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 162
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    .line 166
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 167
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    const/16 v6, 0x10

    .line 168
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 179
    :cond_11
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isReminderBundle(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getAllTitles()Ljava/lang/String;

    move-result-object p5

    .line 187
    :cond_12
    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineItemUtil;->isBirthday(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 191
    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 192
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 193
    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4
.end method

.method public static hasConflict(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 228
    :cond_1
    :goto_0
    return v0

    .line 226
    :cond_2
    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 227
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    :cond_3
    move v2, v0

    .line 228
    :goto_1
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 227
    goto :goto_1
.end method

.method public static isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 48
    instance-of v0, p0, Lcom/android/calendar/task/TimelineTaskType;

    return v0
.end method

.method public static isAttendeeEvent(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 62
    instance-of v0, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    return v0
.end method

.method public static isBirthday(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 26
    instance-of v0, p0, Lcom/android/calendar/timely/TimelineBirthday;

    return v0
.end method

.method public static isGroove(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 55
    instance-of v0, p0, Lcom/android/calendar/groove/TimelineGroove;

    return v0
.end method

.method public static isReminder(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 33
    instance-of v0, p0, Lcom/android/calendar/task/TimelineTask;

    return v0
.end method

.method public static isReminderBundle(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 41
    instance-of v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;

    return v0
.end method
