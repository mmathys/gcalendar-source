.class Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;
.super Ljava/lang/Object;
.source "TimelyStoreUtils.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesUrlConstants;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorHexToInt(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 111
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public static colorIntToHex(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    const-string v0, "%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 212
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Address encoding has failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "AIzaSyDgTlW8el2htj3nnXHKI3G04DgDqqnnq9E"

    return-object v0
.end method

.method public static getFieldFromExtendedProperties(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    .line 125
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 128
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 138
    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 134
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :cond_3
    if-eqz v1, :cond_4

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 136
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_5

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 138
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    if-eqz p2, :cond_0

    .line 152
    sget v0, Lcom/android/calendarcommon2/R$array;->exchange_notification_options_allday_minutes:I

    .line 151
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 154
    if-eqz p2, :cond_1

    .line 155
    sget v0, Lcom/android/calendarcommon2/R$array;->exchange_notification_options_allday_methods:I

    .line 154
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 166
    :goto_2
    array-length v5, v1

    .line 167
    new-array v6, v5, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move v4, v3

    .line 168
    :goto_3
    if-ge v4, v5, :cond_6

    .line 169
    aget v7, v1, v4

    .line 170
    aget v8, v0, v4

    .line 171
    new-instance v9, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-direct {v9, v2, v7, v8}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    aput-object v9, v6, v4

    .line 168
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 153
    :cond_0
    sget v0, Lcom/android/calendarcommon2/R$array;->exchange_notification_options_timed_minutes:I

    goto :goto_0

    .line 156
    :cond_1
    sget v0, Lcom/android/calendarcommon2/R$array;->exchange_notification_options_timed_methods:I

    goto :goto_1

    .line 158
    :cond_2
    if-eqz p2, :cond_3

    .line 159
    sget v0, Lcom/android/calendarcommon2/R$array;->notification_options_allday_minutes:I

    .line 158
    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 161
    if-eqz p2, :cond_4

    .line 162
    sget v0, Lcom/android/calendarcommon2/R$array;->notification_options_allday_methods:I

    .line 161
    :goto_6
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_2

    .line 160
    :cond_3
    sget v0, Lcom/android/calendarcommon2/R$array;->notification_options_timed_minutes:I

    goto :goto_5

    .line 163
    :cond_4
    sget v0, Lcom/android/calendarcommon2/R$array;->notification_options_timed_methods:I

    goto :goto_6

    :cond_5
    move v2, v3

    .line 171
    goto :goto_4

    .line 174
    :cond_6
    return-object v6
.end method

.method public static getStaticMapsUrl(Lcom/google/api/services/calendar/model/SmartMailAddress;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLatitude()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLongitude()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getFormattedAddress()Lcom/google/api/services/calendar/model/FormattedText;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getFormattedAddress()Lcom/google/api/services/calendar/model/FormattedText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FormattedText;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLatitude()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getLongitude()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v1, v2, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getStaticMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStaticMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->MAPS_URL_TEMPLATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "[WIDTH]"

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HEIGHT]"

    .line 203
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[LATITUDE]"

    .line 204
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[LONGITUDE]"

    .line 205
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VISIBLE]"

    .line 206
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->encodeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method public static jsonFromValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error creating JSON for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static triggerSyncAdapterRestoreTimelyData()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "sync_extra_sync_timely_data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Requesting restore of Timely event data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1, v2, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected static triggerSyncAdapterSettingUpdate(Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 41
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 42
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v1, "sync_extra_update_settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Requesting upgrading settings in triggerSyncAdapterSettingUpdate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p0, v1, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method

.method public static triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 72
    const-string v0, "force"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p3, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    if-eqz p2, :cond_1

    .line 77
    const-string v0, "upload"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->TAG:Ljava/lang/String;

    const-string v1, "Requesting sync in TimelyUtils#triggerSyncAdapterSyncWithExtras"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p0, v0, p3}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
