.class public Lcom/android/calendar/calendarlist/CalendarListUtils;
.super Ljava/lang/Object;
.source "CalendarListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/calendarlist/CalendarListUtils$HolidayGroupItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$BirthdayGroupItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$GroupHeaderItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;,
        Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static final sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "COALESCE(isPrimary,account_name=ownerAccount) AS isPrimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/calendarlist/CalendarListUtils;->PROJECTION:[Ljava/lang/String;

    .line 98
    const-class v0, Lcom/android/calendar/calendarlist/CalendarListUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/calendarlist/CalendarListUtils;->TAG:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/calendarlist/CalendarListUtils;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAccounts(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 415
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 416
    instance-of v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    if-eqz v3, :cond_0

    .line 417
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 418
    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    return-object v1
.end method

.method public static getCountOfNotHiddenCalendars(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 309
    instance-of v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v3, :cond_1

    .line 310
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 312
    iget v3, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 317
    goto :goto_0

    .line 318
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static processCursor(Landroid/database/Cursor;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 111
    if-eqz p0, :cond_14

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 113
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 114
    const-string v2, "calendar_displayName"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 116
    const-string v2, "calendar_color"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 118
    const-string v2, "visible"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 120
    const-string v2, "sync_events"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 122
    const-string v2, "ownerAccount"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 124
    const-string v2, "account_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 126
    const-string v2, "account_type"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 128
    const-string v2, "isPrimary"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 131
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 133
    new-instance v16, Lcom/android/calendar/calendarlist/CalendarListUtils$BirthdayGroupItem;

    invoke-direct/range {v16 .. v16}, Lcom/android/calendar/calendarlist/CalendarListUtils$BirthdayGroupItem;-><init>()V

    .line 134
    new-instance v17, Lcom/android/calendar/calendarlist/CalendarListUtils$HolidayGroupItem;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendar/calendarlist/CalendarListUtils$HolidayGroupItem;-><init>()V

    .line 136
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v3, 0x0

    .line 140
    const/4 v2, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    .line 142
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 143
    new-instance v18, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct/range {v18 .. v18}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>()V

    .line 144
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 145
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 146
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 148
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    .line 149
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 151
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 152
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 153
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 154
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 155
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 159
    if-eqz p2, :cond_5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 160
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 165
    :goto_4
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    .line 173
    :goto_5
    sget-object v2, Lcom/android/calendar/calendarlist/CalendarListUtils;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 174
    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/android/calendar/CalendarClassifierInterface;->calculateType(Ljava/lang/String;)I

    move-result v2

    .line 176
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 181
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_9

    .line 182
    const/4 v2, 0x1

    .line 183
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-nez v5, :cond_1

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v5, :cond_8

    :cond_1
    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, v16

    iput-boolean v5, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    move v5, v2

    .line 185
    goto/16 :goto_0

    .line 148
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 151
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 152
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 163
    :cond_5
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    goto :goto_4

    .line 167
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    if-eqz v2, :cond_7

    .line 168
    const/4 v2, 0x3

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    goto :goto_5

    .line 170
    :cond_7
    const/4 v2, 0x4

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    goto :goto_5

    .line 184
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 188
    :cond_9
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    .line 189
    const/4 v2, 0x1

    .line 190
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->calendars:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    if-nez v4, :cond_a

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-eqz v4, :cond_b

    :cond_a
    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;->areVisible:Z

    move v4, v2

    .line 192
    goto/16 :goto_0

    .line 191
    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    .line 195
    :cond_c
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lcom/android/calendar/Utils;->isLocalOrHtcLocalCalendar(Ljava/lang/String;)Z

    move-result v2

    .line 198
    if-nez v2, :cond_d

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    if-nez v2, :cond_d

    if-nez p3, :cond_d

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    if-eqz v2, :cond_0

    .line 203
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 206
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>(Landroid/accounts/Account;)V

    .line 209
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v2, "com.google"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 212
    const/4 v3, 0x1

    move v2, v3

    :goto_8
    move v3, v2

    .line 215
    goto/16 :goto_0

    .line 217
    :cond_e
    if-eqz p3, :cond_f

    if-eqz v3, :cond_f

    .line 218
    const/4 v5, 0x1

    .line 219
    const/4 v4, 0x1

    .line 222
    :cond_f
    if-eqz v5, :cond_10

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_10
    if-eqz v4, :cond_11

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_11
    if-nez v5, :cond_12

    if-eqz v4, :cond_13

    .line 229
    :cond_12
    new-instance v2, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupHeaderItem;

    invoke-direct {v2}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupHeaderItem;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_13
    const/4 v2, 0x1

    .line 235
    :goto_9
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    :cond_15
    move v2, v3

    goto :goto_8
.end method

.method public static processHiddenCalendars(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils;->processHiddenCalendars(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method public static processHiddenCalendars(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v3, Ljava/util/ArrayList;

    .line 254
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 259
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 260
    const/4 v2, 0x1

    .line 261
    instance-of v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget v1, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    .line 263
    if-eqz p2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-object v1, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 264
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 265
    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-object v1, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 271
    :goto_1
    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-virtual {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 274
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-direct {v1, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;-><init>(Landroid/accounts/Account;)V

    .line 277
    iget-object v2, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_2
    iget-object v1, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 266
    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-boolean v1, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    goto :goto_1

    .line 282
    :cond_1
    iget-object v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfHiddenCalendarsItem;

    goto :goto_2

    .line 291
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 297
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static sortItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;

    .line 323
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$ListItemComparator;-><init>([Landroid/accounts/Account;)V

    .line 326
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 327
    return-void
.end method
