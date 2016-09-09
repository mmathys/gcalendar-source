.class public Lcom/google/auth/oauth2/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"


# instance fields
.field private final expirationTimeMillis:Ljava/lang/Long;

.field private final tokenValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/auth/oauth2/AccessToken;->tokenValue:Ljava/lang/String;

    .line 19
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/auth/oauth2/AccessToken;->expirationTimeMillis:Ljava/lang/Long;

    .line 20
    return-void

    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExpirationTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/auth/oauth2/AccessToken;->expirationTimeMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/auth/oauth2/AccessToken;->expirationTimeMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/auth/oauth2/AccessToken;->tokenValue:Ljava/lang/String;

    return-object v0
.end method
