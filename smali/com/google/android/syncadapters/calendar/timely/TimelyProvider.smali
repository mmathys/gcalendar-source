.class public Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;
.super Landroid/content/ContentProvider;
.source "TimelyProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mEventStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.timely"

    const-string v2, "accountsettings"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.timely"

    const-string v2, "tasks/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAccountOrThrow(Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "account_name"

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method private getTaskCalendarCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 191
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v0, 0x1

    invoke-direct {v1, p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 193
    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 196
    const-string v3, "account_name"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    aput-object p1, v2, v0

    .line 195
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const-string v3, "account_type"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "com.google"

    aput-object v3, v2, v0

    goto :goto_1

    .line 200
    :cond_1
    const-string v3, "calendar_color"

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v3

    .line 203
    invoke-virtual {v3, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getTaskColor()I

    move-result v3

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_3
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 211
    return-object v1
.end method

.method private updateFromClient(Ljava/lang/String;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)I
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->mEventStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTasksCalendar(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v0, "sync_events"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 155
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 157
    :goto_0
    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    .line 158
    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setTasksVisible(Z)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->updateFromClient(Ljava/lang/String;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)I

    move-result v0

    .line 157
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    const-string v4, "visible"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 163
    :goto_1
    const-string v4, "calendar_color"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "calendar_color"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 165
    new-instance v5, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    invoke-direct {v5}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;-><init>()V

    .line 166
    invoke-virtual {v5, v4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->setTaskColor(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->updateFromClient(Ljava/lang/String;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)I

    move-result v3

    .line 165
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    const-string v3, "calendar_color"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 172
    const-string v3, "calendar_color_index"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 176
    const-string v3, "TimelyProvider"

    const-string v4, "Tried to update tasks calendar with unsupported values: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 156
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->checkRuntimePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "TimelyProvider"

    const-string v1, "Insufficient permissions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :goto_0
    return-object v3

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 112
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    const-string v0, "TimelyProvider"

    const-string v1, "Provider should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->SUBSCRIBE_CALENDAR:Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-direct {p0, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getAccountOrThrow(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 120
    invoke-static {v0, p3, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->subscribeCalendar(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 121
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->UNSUBSCRIBE_CALENDAR:Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getAccountOrThrow(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 123
    invoke-static {v0, p3, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->unsubscribeCalendar(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/apiary/ParseException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 88
    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->mEventStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 63
    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 78
    :cond_0
    return-object v0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->mEventStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->getTaskCalendarCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 95
    packed-switch v0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyProvider;->updateTasksCalendar(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
