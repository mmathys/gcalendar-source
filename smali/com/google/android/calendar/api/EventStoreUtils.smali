.class public Lcom/google/android/calendar/api/EventStoreUtils;
.super Ljava/lang/Object;
.source "EventStoreUtils.java"


# direct methods
.method static accessFromVisibility(I)I
    .locals 2

    .prologue
    .line 308
    packed-switch p0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid visibility value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 312
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 314
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static availabilityFromApi(I)I
    .locals 2

    .prologue
    .line 343
    packed-switch p0, :pswitch_data_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid availability value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 347
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static availabilityFromProvider(I)I
    .locals 2

    .prologue
    .line 326
    packed-switch p0, :pswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid availability value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 330
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static computeExtrasFromStatus(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    packed-switch p0, :pswitch_data_0

    .line 277
    const/4 v0, 0x0

    .line 280
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_0
    const/16 v0, 0x80

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    const/16 v0, 0x100

    .line 275
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static computeStatusFromExtrasFlags(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 250
    .line 251
    if-eqz p0, :cond_0

    .line 253
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 255
    const/4 v0, 0x3

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    .line 257
    const/4 v0, 0x2

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    const-string v2, "EventStoreUtils"

    const-string v3, "Unable to decode: %s"

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static cursorToCalendarDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 7

    .prologue
    .line 223
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 224
    const/16 v2, 0x1d

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    const/16 v3, 0x1e

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    const/16 v4, 0xf

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    new-instance v5, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v5, v6, v4, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v5
.end method

.method static cursorToDescriptor(Lcom/google/android/calendar/api/EventDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 4

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/android/calendar/api/EventStoreUtils;->cursorToCalendarDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/google/android/calendar/api/EventDescriptor;

    iget-object v2, p0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;Lcom/google/android/calendar/api/InstanceDescriptor;)V

    return-object v1
.end method

.method public static cursorToEntity(Lcom/google/android/calendar/api/EventDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/Event;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static/range {p0 .. p0}, Lcom/google/android/calendar/api/EventStoreUtils;->getDescriptorEventType(Lcom/google/android/calendar/api/EventDescriptor;)I

    move-result v2

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/google/android/calendar/api/time/RecurrenceStoreUtils;->getEventType(Landroid/database/Cursor;)I

    move-result v3

    .line 113
    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 115
    const/16 v2, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_0
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/google/android/calendar/api/time/EventTiming;->create(Landroid/database/Cursor;)Lcom/google/android/calendar/api/time/EventTiming;

    move-result-object v3

    .line 123
    const/4 v15, 0x0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/16 v4, 0x1c

    .line 128
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v4}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    new-instance v6, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    .line 132
    new-instance v15, Lcom/google/android/calendar/api/HabitInstanceImpl;

    const/16 v4, 0x1a

    .line 135
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v4}, Lcom/google/android/calendar/api/EventStoreUtils;->computeStatusFromExtrasFlags(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v15, v6, v4}, Lcom/google/android/calendar/api/HabitInstanceImpl;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;I)V

    .line 138
    :cond_1
    const/16 v4, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    const/16 v16, 0x0

    .line 143
    :goto_1
    const/16 v4, 0xe

    .line 144
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 143
    invoke-static {v4}, Lcom/google/android/calendar/api/EventStoreUtils;->visibilityFromAccess(I)I

    move-result v17

    .line 145
    const/16 v4, 0xd

    .line 146
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 145
    invoke-static {v4}, Lcom/google/android/calendar/api/EventStoreUtils;->availabilityFromProvider(I)I

    move-result v18

    .line 147
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/google/android/calendar/api/EventStoreUtils;->loadEventData(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v4

    .line 150
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/calendar/api/EventStoreUtils;->loadStructuredLocation(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Landroid/database/Cursor;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v20

    .line 153
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 155
    invoke-static {v6, v7}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->loadEventNotifications(J)[Lcom/google/android/calendar/api/notifications/Notification;

    move-result-object v21

    .line 156
    invoke-static {v4}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkDataTimelyStoreUtils;->loadDeepLinkData(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v22

    .line 158
    const/16 v23, 0x0

    .line 159
    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/calendar/api/attachments/AttachmentStoreUtils;->toApiAttachments(Ljava/util/List;)[Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v23

    .line 163
    :cond_2
    invoke-static {v6, v7}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->loadAttendees(J)[Lcom/google/android/calendar/api/attendee/Attendee;

    move-result-object v24

    .line 164
    invoke-static/range {p1 .. p1}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->toApiAttendeesOmitted(Landroid/database/Cursor;)Z

    move-result v25

    .line 167
    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->populateOrganizerDataFromAttendees(Ljava/lang/String;[Lcom/google/android/calendar/api/attendee/Attendee;)Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;

    move-result-object v4

    .line 169
    new-instance v2, Lcom/google/android/calendar/api/EventImpl;

    iget-wide v6, v3, Lcom/google/android/calendar/api/time/EventTiming;->startMillisUtc:J

    iget-wide v8, v3, Lcom/google/android/calendar/api/time/EventTiming;->endMillisUtc:J

    iget-boolean v10, v3, Lcom/google/android/calendar/api/time/EventTiming;->allDay:Z

    iget-object v11, v3, Lcom/google/android/calendar/api/time/EventTiming;->singleStartTimeZoneId:Ljava/lang/String;

    iget-object v12, v3, Lcom/google/android/calendar/api/time/EventTiming;->singleEndTimeZoneId:Ljava/lang/String;

    iget-object v13, v3, Lcom/google/android/calendar/api/time/EventTiming;->recurringTimeZoneId:Ljava/lang/String;

    iget-object v14, v3, Lcom/google/android/calendar/api/time/EventTiming;->recurrence:Lcom/google/android/calendar/api/time/Recurrence;

    .line 182
    invoke-static/range {v17 .. v17}, Lcom/google/android/calendar/api/EventUtil;->checkVisibility(I)I

    move-result v17

    .line 183
    invoke-static/range {v18 .. v18}, Lcom/google/android/calendar/api/EventUtil;->checkAvailability(I)I

    move-result v18

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v25}, Lcom/google/android/calendar/api/EventImpl;-><init>(Lcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/attendee/AttendeeDescriptor;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/time/Recurrence;Lcom/google/android/calendar/api/HabitInstance;Lcom/google/android/calendar/api/ColorDescriptor;IILjava/lang/String;Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;[Lcom/google/android/calendar/api/attachments/Attachment;[Lcom/google/android/calendar/api/attendee/Attendee;Z)V

    .line 169
    return-object v2

    .line 113
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 142
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 141
    invoke-static {v6, v4}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v16

    goto :goto_1
.end method

.method public static entityToValues(Lcom/google/android/calendar/api/EventModifications;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "title"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isStartModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "dtstart"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isEndModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "dtend"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getEndMillisSinceEpoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    :cond_2
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isAllDayModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    const-string v0, "allDay"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isAllDayEvent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    :cond_3
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isSingleStartTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    const-string v0, "eventTimezone"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getSingleStartTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isSingleEndTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    const-string v0, "eventEndTimezone"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getSingleEndTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isRecurringTimeZoneModified()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    const-string v0, "eventTimezone"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getRecurringTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getHabitInstanceModifications()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getHabitInstanceModifications()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstanceModifications;

    .line 72
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitInstanceModifications;->isStatusModified()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    const-string v2, "sync_data9"

    .line 77
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitInstanceModifications;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/EventStoreUtils;->computeExtrasFromStatus(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_7
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 82
    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 85
    const-string v2, "eventColor"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    :cond_8
    const-string v2, "eventColor_index"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_9
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const-string v0, "accessLevel"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/calendar/api/EventStoreUtils;->accessFromVisibility(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    :cond_a
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isAvailabilityModified()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94
    const-string v0, "availability"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getAvailability()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/calendar/api/EventStoreUtils;->availabilityFromApi(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    :cond_b
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isDescriptionModified()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    const-string v0, "description"

    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_c
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getLocationModification()Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getLocationModification()Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    .line 104
    const-string v2, "eventLocation"

    iget-object v0, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_d
    return-object v1

    .line 82
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDescriptorEventType(Lcom/google/android/calendar/api/EventDescriptor;)I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventDescriptor;->isSingleEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventDescriptor;->isRecurringException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventDescriptor;->isRecurringPhantom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Descriptor must point to stored event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadEventData(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 8

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    .line 209
    const/16 v0, 0xc

    .line 210
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    .line 211
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 212
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v0, 0x8

    .line 213
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    return-object v0
.end method

.method private static loadStructuredLocation(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Landroid/database/Cursor;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
    .locals 3

    .prologue
    .line 232
    .line 233
    invoke-static {p0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->loadStructuredLocation(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    if-eqz v0, :cond_1

    .line 242
    new-instance v2, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    invoke-direct {v2}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->name(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->build()Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method static visibilityFromAccess(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 289
    packed-switch p0, :pswitch_data_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid visibility value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    :pswitch_1
    return v0

    .line 293
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
