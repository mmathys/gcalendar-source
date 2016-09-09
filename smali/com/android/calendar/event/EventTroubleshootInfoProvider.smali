.class public Lcom/android/calendar/event/EventTroubleshootInfoProvider;
.super Ljava/lang/Object;
.source "EventTroubleshootInfoProvider.java"


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static final EVENTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mEventsCursor:Landroid/database/Cursor;

.field private mItem:Lcom/android/calendar/timely/TimelineItem;

.field private mModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cal_sync1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ownerAccount"

    aput-object v1, v0, v2

    const-string v1, "rrule"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->EVENTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    .line 44
    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    .line 93
    iput-object p1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mActivity:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    .line 44
    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    .line 98
    iput-object p1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mActivity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 100
    return-void
.end method

.method private setCalendarsCursor()V
    .locals 6

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getCalendarId()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    .line 77
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    goto :goto_0
.end method

.method private setEventsCursor()V
    .locals 6

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    .line 90
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    goto :goto_0
.end method


# virtual methods
.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->setCalendarsCursor()V

    .line 107
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 108
    const-string v1, "EventTSInfoProvider"

    const-string v2, "Could not read calendars cursor! (null)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->setEventsCursor()V

    .line 112
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 113
    const-string v1, "EventTSInfoProvider"

    const-string v2, "Could not read events cursor! (null)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    const-string v1, "EventTSInfoProvider"

    const-string v2, "Could not read calendars cursor! (empty)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 124
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    const-string v1, "EventTSInfoProvider"

    const-string v2, "Could not read events cursor! (empty)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 128
    :cond_4
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "Account name"

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "Organizer"

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_7

    .line 133
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    .line 135
    :goto_3
    const-string v1, "Start date"

    const-string v4, "yyyy-MM-dd HH:mm:ss zzz"

    .line 136
    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    .line 140
    :goto_4
    const-string v1, "End date"

    const-string v4, "yyyy-MM-dd HH:mm:ss zzz"

    .line 141
    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 142
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    const-string v2, "Recurrence rule"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_5
    const-string v1, "Dirty flag"

    iget-object v2, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    .line 150
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "Sync id"

    iget-object v2, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    .line 152
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "Calendar sync id"

    iget-object v2, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    .line 154
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 131
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    goto/16 :goto_2

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    goto/16 :goto_3

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    goto/16 :goto_4

    .line 145
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mEventsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    iget-object v1, p0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
