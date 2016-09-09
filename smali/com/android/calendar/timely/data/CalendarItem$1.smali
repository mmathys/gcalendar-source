.class final Lcom/android/calendar/timely/data/CalendarItem$1;
.super Ljava/lang/Object;
.source "CalendarItem.java"

# interfaces
.implements Lcom/android/calendar/content/CursorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/data/CalendarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/content/CursorCreator",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/data/CalendarItem;
    .locals 14

    .prologue
    .line 183
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 184
    const-string v1, "calendar_displayName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 186
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 188
    const-string v1, "visible"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 190
    const-string v1, "sync_events"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 192
    const-string v1, "ownerAccount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 194
    const-string v1, "account_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 196
    const-string v7, "account_type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 198
    const-string v8, "isPrimary"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 200
    const-string v9, "calendar_access_level"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 204
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 205
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 210
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 211
    new-instance v1, Lcom/android/calendar/timely/data/CalendarItem;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;-><init>(Lcom/android/calendar/timely/data/CalendarItem$1;)V

    .line 212
    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mId:J
    invoke-static {v1, v12, v13}, Lcom/android/calendar/timely/data/CalendarItem;->access$702(Lcom/android/calendar/timely/data/CalendarItem;J)J

    .line 213
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mUri:Landroid/net/Uri;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$802(Lcom/android/calendar/timely/data/CalendarItem;Landroid/net/Uri;)Landroid/net/Uri;

    .line 215
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mIsPrimary:Z
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$902(Lcom/android/calendar/timely/data/CalendarItem;Z)Z

    .line 216
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mDisplayName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1002(Lcom/android/calendar/timely/data/CalendarItem;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mColor:I
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1102(Lcom/android/calendar/timely/data/CalendarItem;I)I

    .line 218
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mIsSelected:Z
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1202(Lcom/android/calendar/timely/data/CalendarItem;Z)Z

    .line 219
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mIsSynced:Z
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1302(Lcom/android/calendar/timely/data/CalendarItem;Z)Z

    .line 220
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mOwnerAccount:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1402(Lcom/android/calendar/timely/data/CalendarItem;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v10, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mAccount:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1502(Lcom/android/calendar/timely/data/CalendarItem;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 223
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->NONE:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 224
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 225
    const/16 v3, 0x2bc

    if-lt v2, v3, :cond_6

    .line 226
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 234
    :cond_2
    :goto_4
    # setter for: Lcom/android/calendar/timely/data/CalendarItem;->mAccessRole:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    invoke-static {v1, v0}, Lcom/android/calendar/timely/data/CalendarItem;->access$1602(Lcom/android/calendar/timely/data/CalendarItem;Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-object v0, v1

    .line 236
    goto :goto_0

    .line 215
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 218
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 219
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 227
    :cond_6
    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_7

    .line 228
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto :goto_4

    .line 229
    :cond_7
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_8

    .line 230
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto :goto_4

    .line 231
    :cond_8
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 232
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->FREEBUSY_READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    goto :goto_4
.end method

.method public bridge synthetic createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/data/CalendarItem$1;->createFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    return-object v0
.end method
