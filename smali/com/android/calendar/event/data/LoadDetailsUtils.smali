.class public Lcom/android/calendar/event/data/LoadDetailsUtils;
.super Ljava/lang/Object;
.source "LoadDetailsUtils.java"


# static fields
.field public static final PRIMARY_GOOGLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final VISIBLE_WRITABLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/calendar/event/data/LoadDetailsUtils$1;

    invoke-direct {v0}, Lcom/android/calendar/event/data/LoadDetailsUtils$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/LoadDetailsUtils;->VISIBLE_WRITABLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    .line 57
    new-instance v0, Lcom/android/calendar/event/data/LoadDetailsUtils$2;

    invoke-direct {v0}, Lcom/android/calendar/event/data/LoadDetailsUtils$2;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/LoadDetailsUtils;->PRIMARY_GOOGLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    return-void
.end method

.method static loadModelCalendarData(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const/4 v0, 0x4

    .line 77
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 79
    const/4 v0, 0x5

    .line 80
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 82
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 83
    const/4 v0, 0x3

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 83
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/CalendarEventModel;->setCalendarColor(I)V

    .line 86
    const/16 v0, 0xb

    .line 87
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 88
    const/16 v0, 0xc

    .line 89
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 91
    const/4 v0, 0x7

    .line 92
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarMaxReminders:I

    .line 93
    const/16 v0, 0x8

    .line 94
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 95
    const/16 v0, 0x9

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 97
    const/16 v0, 0xa

    .line 98
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 99
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 101
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCalendarsMapFromCursor(Ljava/util/Map;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/calendar/event/EditHelper;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/event/EditHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v17, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;-><init>()V

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 123
    const/16 v2, 0xc

    .line 124
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    const/16 v2, 0xb

    .line 126
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    const/4 v2, 0x2

    .line 128
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    const/4 v8, 0x1

    .line 132
    :goto_1
    const/4 v2, 0x1

    .line 133
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    move-object/from16 v0, p2

    invoke-static {v8, v2, v11, v0}, Lcom/android/calendar/Utils;->getCalendarNameToDisplay(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    const-string v2, "com.google"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    new-instance v2, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;

    invoke-direct/range {v2 .. v8}, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 146
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setCalendarKey(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 147
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarUtil;->calculateType(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setCalendarType(Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 148
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setIsPrimary(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 150
    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->NONE:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 151
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 152
    const/16 v6, 0x2bc

    if-lt v3, v6, :cond_5

    .line 153
    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 162
    :cond_1
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setAccessRole(Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 164
    const/4 v2, 0x3

    .line 165
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    .line 164
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setBackgroundColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 167
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setIsSelected(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 169
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 171
    const/16 v2, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setDefaultEventDuration(I)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 173
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/event/EditHelper;->getIsCalendarSharedColumn()Ljava/lang/String;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_2

    .line 175
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->isCalendarShared(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setIsSharedWithOthers(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    .line 178
    :cond_2
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 179
    invoke-virtual/range {v17 .. v17}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v3

    .line 178
    move-object/from16 v0, p0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 130
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 142
    :cond_4
    new-instance v9, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;

    move-object v10, v3

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/calendar/event/data/AndroidNonGoogleCalendarKey;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v9

    goto/16 :goto_2

    .line 154
    :cond_5
    const/16 v6, 0x1f4

    if-lt v3, v6, :cond_6

    .line 155
    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto :goto_3

    .line 156
    :cond_6
    const/16 v6, 0xc8

    if-lt v3, v6, :cond_7

    .line 157
    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto :goto_3

    .line 158
    :cond_7
    const/16 v6, 0x64

    if-lt v3, v6, :cond_1

    .line 159
    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->FREEBUSY_READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto/16 :goto_3

    .line 167
    :cond_8
    const/4 v2, 0x0

    goto :goto_4
.end method
