.class public Lcom/google/android/calendar/alerts/GCMBackplane;
.super Ljava/lang/Object;
.source "GCMBackplane.java"

# interfaces
.implements Lcom/android/calendar/CloudNotificationBackplane;


# static fields
.field private static final BASE_GROUP_URI:Landroid/net/Uri;

.field private static final GROUP_OPERATION_ADD:Ljava/lang/Object;

.field private static sUserAgentString:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "add"

    sput-object v0, Lcom/google/android/calendar/alerts/GCMBackplane;->GROUP_OPERATION_ADD:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.googleapis.com"

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gcm"

    .line 63
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "groups"

    .line 64
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/alerts/GCMBackplane;->BASE_GROUP_URI:Landroid/net/Uri;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/calendar/alerts/GCMBackplane;->sUserAgentString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDestinationToGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    .line 135
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 136
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v5, "registration_ids"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v3, "notification_key_name"

    invoke-virtual {v4, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v3, "operation"

    sget-object v5, Lcom/google/android/calendar/alerts/GCMBackplane;->GROUP_OPERATION_ADD:Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 144
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/google/android/calendar/alerts/GCMBackplane;->BASE_GROUP_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v5, "project_id"

    .line 146
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "senderId"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    const-string v6, "oauth2:https://www.googleapis.com/auth/gcm"

    invoke-static {v5, p2, v6}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    const-string v6, "Authorization"

    const-string v7, "AuthSub token=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 149
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {v4, v6, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v4}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 156
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 157
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 163
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 164
    if-eqz v2, :cond_2

    .line 165
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v2, "notification_key"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 168
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 169
    const-string v2, "sendTo_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    move v1, v0

    .line 195
    :goto_2
    return v1

    .line 169
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 173
    :cond_2
    :try_start_1
    const-string v0, "GCMBackplane"

    const-string v2, "bad response from server, type:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    move v0, v1

    goto :goto_1

    .line 176
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v2, :cond_4

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_4
    const-string v2, "GCMBackplane"

    const-string v3, "group add fail: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/syncadapters/calendar/ConscryptInstallationException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_3

    .line 184
    :catch_1
    move-exception v0

    .line 185
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 186
    :catch_2
    move-exception v0

    .line 187
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 188
    :catch_3
    move-exception v0

    .line 189
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 190
    :catch_4
    move-exception v0

    .line 191
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 192
    :catch_5
    move-exception v0

    .line 193
    const-string v2, "GCMBackplane"

    const-string v3, "failed to subscribe to cloud notification group."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2
.end method

.method private checkState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call open() before using CloudNotificationBackplane"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method private getGCMPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.calendar.alerts.GCM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/google/android/calendar/alerts/GCMBackplane;->sUserAgentString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 225
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_0
    :try_start_2
    const-string v1, "Calander-GCMBackplane/"

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

    sput-object v0, Lcom/google/android/calendar/alerts/GCMBackplane;->sUserAgentString:Ljava/lang/String;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->installSecurityProvider(Landroid/content/Context;)V

    .line 237
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/calendar/alerts/GCMBackplane;->sUserAgentString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    :try_start_3
    const-string v1, "GCMBackplane"

    const-string v2, "Error finding package %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 227
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->close()V

    .line 92
    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->checkState()V

    .line 202
    const-string v0, "com.android.calendar.alerts.sync_id"

    const-string v1, "com.android.calendar.alerts.sync_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    const-string v0, "sendTo_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    :goto_1
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "GCMBackplane"

    const-string v1, "failed to send message, missing destination token."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public subscribeToGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 97
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->checkState()V

    .line 99
    invoke-direct {p0}, Lcom/google/android/calendar/alerts/GCMBackplane;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 100
    const-string v1, "regIds"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "senderId"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v4, "destinations"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 103
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 104
    :cond_0
    if-eqz v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/alerts/GCMBackplane;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    new-array v2, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 109
    const-string v5, "regIds"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v5, "senderId"

    invoke-interface {v1, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-direct {p0, v2, p2, v0}, Lcom/google/android/calendar/alerts/GCMBackplane;->addDestinationToGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 115
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 118
    :goto_1
    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/calendar/alerts/GCMBackplane;->addDestinationToGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v1, v0

    .line 120
    invoke-interface {v4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    if-eqz v1, :cond_4

    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const-string v2, "destinations"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_4
    return v1

    :cond_5
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_1
.end method
