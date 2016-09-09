.class public Lcom/google/auth/oauth2/OAuth2Credentials;
.super Lcom/google/auth/Credentials;
.source "OAuth2Credentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field clock:Lcom/google/api/client/util/Clock;

.field private final lock:Ljava/lang/Object;

.field private requestMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private temporaryAccess:Lcom/google/auth/oauth2/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/auth/oauth2/OAuth2Credentials;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/auth/oauth2/OAuth2Credentials;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/AccessToken;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/auth/Credentials;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/Clock;

    .line 43
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    .line 44
    return-void
.end method

.method private final getExpiresInMilliseconds()Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    if-nez v2, :cond_0

    .line 144
    monitor-exit v1

    .line 150
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    .line 147
    if-nez v2, :cond_1

    .line 148
    monitor-exit v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v0}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getExpiresInMilliseconds()Ljava/lang/Long;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->refresh()V

    .line 76
    :cond_1
    sget-boolean v0, Lcom/google/auth/oauth2/OAuth2Credentials;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->requestMetadata:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const-string v0, "Bearer "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v0, "Authorization"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->requestMetadata:Ljava/util/Map;

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->requestMetadata:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public refresh()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->requestMetadata:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    .line 97
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->temporaryAccess:Lcom/google/auth/oauth2/AccessToken;

    .line 98
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;

    .line 100
    invoke-interface {v0, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;->onChanged(Lcom/google/auth/oauth2/OAuth2Credentials;)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return-void
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing should be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
