.class public Lcom/android/calendar/alerts/AlarmScheduler;
.super Ljava/lang/Object;
.source "AlarmScheduler.java"


# static fields
.field static final INSTANCES_PROJECTION:[Ljava/lang/String;

.field static final REMINDERS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v2

    const-string v1, "begin"

    aput-object v1, v0, v3

    const-string v1, "allDay"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlarmScheduler;->INSTANCES_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v2

    const-string v1, "minutes"

    aput-object v1, v0, v3

    const-string v1, "method"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlarmScheduler;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private static queryNextReminderAndSchedule(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/calendar/alerts/AlarmManagerInterface;IJ)V
    .locals 19

    .prologue
    .line 168
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 169
    if-nez v2, :cond_3

    .line 170
    const-string v2, "AlarmScheduler"

    const-string v3, "No events found starting within %d weeks."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x4

    .line 171
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 170
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    :goto_0
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 180
    new-instance v13, Lcom/android/calendar/time/Time;

    invoke-direct {v13}, Lcom/android/calendar/time/Time;-><init>()V

    .line 181
    const-wide v4, 0x7fffffffffffffffL

    .line 182
    const/4 v2, 0x0

    .line 183
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v8, v2

    move-wide v10, v4

    .line 184
    :cond_0
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_f

    .line 185
    const/4 v2, 0x0

    .line 186
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 187
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const/16 v3, 0x28

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :goto_2
    add-int/lit8 v7, v2, 0x1

    move/from16 v0, p4

    if-ge v2, v0, :cond_6

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 191
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 192
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v6, v4

    .line 194
    :goto_3
    if-eqz v6, :cond_5

    .line 197
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v13, v2, v3, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 201
    :goto_4
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 202
    if-nez v2, :cond_1

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {v12, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v2, "AlarmScheduler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v13, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 213
    const-string v2, "AlarmScheduler"

    const-string v3, "Events cursor result -- eventId:%d, allDay:%b, start:%d (%s)"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 214
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v16

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v15, v9

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v6

    const/4 v4, 0x3

    const-string v5, "%a, %b %d, %Y %I:%M%P"

    .line 215
    invoke-virtual {v13, v5}, Lcom/android/calendar/time/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v4

    .line 213
    invoke-static {v2, v3, v15}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    move v2, v7

    .line 217
    goto/16 :goto_2

    .line 173
    :cond_3
    const-string v3, "AlarmScheduler"

    const-string v4, "Query result count for events starting within %d weeks: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v8, 0x4

    .line 174
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 173
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 192
    :cond_4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_3

    :cond_5
    move-wide v4, v2

    .line 199
    goto :goto_4

    .line 218
    :cond_6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_7

    .line 219
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 221
    :cond_7
    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    const/4 v9, 0x0

    .line 226
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/alerts/AlarmScheduler;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v2, "method=1 AND event_id IN "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v7, v14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 228
    if-nez v6, :cond_8

    .line 258
    if-eqz v6, :cond_0

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 233
    :cond_8
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v8

    move-wide v4, v10

    .line 234
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 235
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 236
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 237
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 238
    if-eqz v2, :cond_9

    .line 239
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v14, v10

    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    sub-long/2addr v8, v14

    .line 242
    cmp-long v14, v8, p5

    if-lez v14, :cond_b

    cmp-long v14, v8, v4

    if-gez v14, :cond_b

    move v3, v7

    move-wide v4, v8

    .line 247
    :cond_b
    const-string v14, "AlarmScheduler"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 248
    invoke-virtual {v13, v8, v9}, Lcom/android/calendar/time/Time;->set(J)V

    .line 249
    const-string v14, "AlarmScheduler"

    const-string v15, "Reminders cursor result -- eventId:%d, startTime:%d, minutes:%d, alarmTime:%d (%s)"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v2, v16, v17

    const/4 v2, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v2

    const/4 v2, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v16, v2

    const/4 v2, 0x4

    const-string v8, "%a, %b %d, %Y %I:%M%P"

    .line 252
    invoke-virtual {v13, v8}, Lcom/android/calendar/time/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v16, v2

    .line 249
    invoke-static/range {v14 .. v16}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 258
    :catchall_0
    move-exception v2

    move-object v3, v6

    :goto_6
    if-eqz v3, :cond_c

    .line 259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 258
    :cond_d
    if-eqz v6, :cond_e

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    move v8, v3

    move-wide v10, v4

    .line 262
    goto/16 :goto_1

    .line 265
    :cond_f
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v10, v2

    if-gez v2, :cond_10

    .line 266
    int-to-long v4, v8

    move-object/from16 v3, p1

    move-wide v6, v10

    move-wide/from16 v8, p5

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v10}, Lcom/android/calendar/alerts/AlarmScheduler;->scheduleAlarm(Landroid/content/Context;JJJLcom/android/calendar/alerts/AlarmManagerInterface;)V

    .line 268
    :cond_10
    return-void

    .line 258
    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_6
.end method

.method private static queryUpcomingEvents(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 130
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 132
    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 133
    const-wide v2, 0x90321000L

    add-long/2addr v2, p1

    .line 134
    sub-long v0, p1, v0

    .line 135
    const-wide v4, 0x90321000L

    add-long v6, v0, v4

    .line 139
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 140
    const-wide/32 v8, 0x5265c00

    sub-long v8, p1, v8

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 141
    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v2

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 144
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 146
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    .line 147
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "1"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    .line 151
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "0"

    aput-object v1, v4, v0

    .line 157
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/alerts/AlarmScheduler;->INSTANCES_PROJECTION:[Ljava/lang/String;

    const-string v3, "(visible=1 AND begin>=? AND begin<=? AND allDay=?) OR (visible=1 AND begin>=? AND begin<=? AND allDay=?)"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static scheduleAlarm(Landroid/content/Context;JJJLcom/android/calendar/alerts/AlarmManagerInterface;)V
    .locals 11

    .prologue
    .line 280
    const-wide/32 v2, 0x5265c00

    add-long v2, v2, p5

    .line 281
    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    move-wide p3, v2

    .line 286
    :cond_0
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p3

    .line 288
    const-string v4, "AlarmScheduler"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    new-instance v4, Lcom/android/calendar/time/Time;

    invoke-direct {v4}, Lcom/android/calendar/time/Time;-><init>()V

    .line 290
    invoke-virtual {v4, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 291
    const-string v5, "%a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v5}, Lcom/android/calendar/time/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v5, "AlarmScheduler"

    const-string v6, "Scheduling alarm for EVENT_REMINDER_APP broadcast for event %d at %d (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 294
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    .line 292
    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.calendar.EVENT_REMINDER_APP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    const-class v5, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    const-string v5, "alarmTime"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 307
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v5, v2, v3, v4}, Lcom/android/calendar/alerts/AlarmManagerInterface;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 308
    return-void
.end method

.method public static scheduleNextAlarm(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;

    move-result-object v0

    const/16 v1, 0x32

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/calendar/alerts/AlarmScheduler;->scheduleNextAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;IJ)V

    .line 107
    return-void
.end method

.method static scheduleNextAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;IJ)V
    .locals 9

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/calendar/alerts/AlarmScheduler;->queryUpcomingEvents(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 116
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/alerts/AlarmScheduler;->queryNextReminderAndSchedule(Landroid/database/Cursor;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/calendar/alerts/AlarmManagerInterface;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    return-void

    .line 120
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
