.class public Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;
.super Ljava/lang/Object;
.source "TimelyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callProviderCommand(Landroid/content/Context;Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    if-nez p0, :cond_0

    .line 179
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v1, "Null context, won\'t do %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    if-nez v0, :cond_1

    .line 184
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v1, "Null resolver, won\'t do %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 187
    :cond_1
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TIMELY_BASE_PROVIDER_URI:Landroid/net/Uri;

    .line 188
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method private static executeHttpRequest(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/Rule;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Lcom/google/android/common/http/Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Blocked by rule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failure to install Security provider"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    const/16 v2, 0x3e8

    :try_start_1
    new-array v2, v2, [B

    .line 152
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 153
    if-gtz v3, :cond_2

    .line 159
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 145
    goto :goto_0

    .line 156
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static executeJsonRequest(Landroid/content/Context;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->executeHttpRequest(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v2, "Failed to execute Json request"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v2, "Failed to execute Json request"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBirthdayCalendarId(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 293
    const-string v0, "#contacts@group.v.calendar.google.com"

    .line 292
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const-string v0, "addressbook#contacts@group.v.calendar.google.com"

    goto :goto_0
.end method

.method public static getClientUpgradedPrefKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 284
    const-string v1, "seenOOBE_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleClientVersionPrefKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 274
    const-string v1, "googleClientVersion_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacesRadiusMeters()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x7530

    return v0
.end method

.method public static getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 279
    const-string v1, "smartmailAck_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSmartmailSettingsFromCursor(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    const-string v1, "smartMailDelivery"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 77
    const-string v2, "accountName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 80
    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public static getStaticMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getStaticMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 170
    const-string v0, "google_client_version_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isGoogleAccount(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 266
    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mapFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 244
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 245
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 248
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 249
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v1

    .line 255
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing JSON"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v2, "JSON Data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 252
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V

    .line 253
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static subscribeBirthdayCalendar(Landroid/content/Context;Landroid/accounts/Account;ZLandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 232
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getBirthdayCalendarId(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->subscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public static subscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->TAG:Ljava/lang/String;

    const-string v1, "Attempt to subscribe to null calendar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    :cond_0
    if-nez p3, :cond_1

    .line 203
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 206
    :cond_1
    const-string v0, "ownerAccount"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "account_name"

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "account_type"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->SUBSCRIBE_CALENDAR:Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;

    invoke-static {p0, v0, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->callProviderCommand(Landroid/content/Context;Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public static triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public static unsubscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 219
    const-string v1, "ownerAccount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;->UNSUBSCRIBE_CALENDAR:Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;

    invoke-static {p0, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->callProviderCommand(Landroid/content/Context;Lcom/google/android/syncadapters/calendar/timely/TimelyContract$ProviderCommand;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method
