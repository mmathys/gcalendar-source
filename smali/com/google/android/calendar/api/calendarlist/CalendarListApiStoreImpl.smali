.class public Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;
.super Ljava/lang/Object;
.source "CalendarListApiStoreImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/CrudApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/api/CrudApi",
        "<",
        "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
        "Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;",
        "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
        "Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSelectionString(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->isEmptyFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 159
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 162
    const-string v1, "account_name"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 165
    const-string v1, "account_type"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 168
    sget-object v1, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDAR_CONTRACT_CALENDARS_IS_PRIMARY:Ljava/lang/String;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getVisible()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 171
    const-string v1, "visible"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getSyncEvents()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 174
    const-string v1, "sync_events"

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_6
    const-string v1, " AND "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private queryWithFilter(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->getSelectionString(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->getSelectionParameters(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error querying calendars from the provider"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-object v0
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->queryWithFilter(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    return v0

    .line 129
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->count(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)I

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->create(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Z)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Z)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->create(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->create(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Z)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->delete(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->delete(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->delete(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method getSelectionParameters(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->isEmptyFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    .line 186
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getVisible()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 197
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getSyncEvents()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 200
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->getSyncEvents()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_7
    const-string v0, "0"

    goto :goto_1

    .line 197
    :cond_8
    const-string v0, "0"

    goto :goto_2

    .line 200
    :cond_9
    const-string v0, "0"

    goto :goto_3

    .line 202
    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public list(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->queryWithFilter(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 104
    new-array v3, v2, [Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 105
    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error listing calendars from the provider - bad cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 110
    :try_start_1
    invoke-static {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;->cursorToDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v4

    .line 111
    invoke-static {v4, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;->cursorToEntity(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v4

    aput-object v4, v3, v0

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    if-eqz v1, :cond_3

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    return-object v3
.end method

.method public bridge synthetic list(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->list(Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;)[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getLocalId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->SINGLE_CALENDAR_SELECTION:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 52
    if-nez v1, :cond_2

    .line 54
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading calendar data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_0

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 40
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_3

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error in calendar list data: more than one calendar to read"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 70
    if-eqz v1, :cond_4

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 68
    :cond_5
    :goto_2
    return-object v0

    .line 64
    :cond_6
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading calendar data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;->cursorToEntity(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 70
    if-eqz v1, :cond_5

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Ljava/lang/Void;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->update(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Ljava/lang/Void;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->update(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/api/calendarlist/CalendarListApiStoreImpl;->update(Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method
