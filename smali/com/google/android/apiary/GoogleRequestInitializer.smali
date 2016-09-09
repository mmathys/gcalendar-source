.class public Lcom/google/android/apiary/GoogleRequestInitializer;
.super Ljava/lang/Object;
.source "GoogleRequestInitializer.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAuthToken:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLogTag:Ljava/lang/String;

.field private mRequestConnectTimeout:I

.field private mRequestReadTimeout:I

.field private final mScope:Ljava/lang/String;

.field private final mSyncAuthority:Ljava/lang/String;

.field private mUserAgentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apiary/GoogleRequestInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestConnectTimeout:I

    .line 46
    iput v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestReadTimeout:I

    .line 60
    iput-object p1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mScope:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mSyncAuthority:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mSyncAuthority:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mScope:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mSyncAuthority:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    return-object v0

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mScope:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Lcom/google/android/apiary/AuthenticationException;

    const-string v2, "Could not get an auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Lcom/google/android/apiary/AuthenticationException;

    const-string v2, "Could not get an auth token"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apiary/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const-string v1, "Got a 401. Invalidating token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getNumberOfRetries()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const-string v1, "Retrying request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;

    .line 77
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestConnectTimeout:I

    if-lez v0, :cond_0

    .line 78
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestConnectTimeout:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestReadTimeout:I

    if-lez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mRequestReadTimeout:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 84
    :cond_1
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apiary/GoogleRequestInitializer;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    .line 90
    const-string v1, "OAuth "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 91
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v3, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v3

    .line 96
    invoke-virtual {v3, v1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/Rule;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Lcom/google/android/common/http/Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    if-nez v4, :cond_1

    .line 100
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/common/http/Rule;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Blocked by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/android/apiary/GoogleRequestInitializer$BlockedRequestException;-><init>(Lcom/google/android/common/http/Rule;Lcom/google/android/apiary/GoogleRequestInitializer$1;)V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 103
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/common/http/Rule;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Rule "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-object v1, v0

    .line 110
    :goto_1
    const-string v0, "ifmatch"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/GenericUrl;->getFirst(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/HttpHeaders;->setIfMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 113
    const-string v0, "ifmatch"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/GenericUrl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mUserAgentString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mUserAgentString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_2
    const-string v0, "userAgentPackage"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/GenericUrl;->getFirst(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    if-eqz v0, :cond_4

    .line 126
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, "userAgentPackage"

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/GenericUrl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 130
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAccountName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mAuthToken:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apiary/GoogleRequestInitializer;->mUserAgentString:Ljava/lang/String;

    .line 175
    return-void
.end method
