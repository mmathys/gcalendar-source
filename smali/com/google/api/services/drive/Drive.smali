.class public Lcom/google/api/services/drive/Drive;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Builder;,
        Lcom/google/api/services/drive/Drive$Files;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MAJOR_VERSION:Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MINOR_VERSION:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0-SNAPSHOT of the Drive API library."

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/api/client/googleapis/GoogleUtils;->VERSION:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 44
    invoke-static {v0, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0
.end method

.method constructor <init>(Lcom/google/api/services/drive/Drive$Builder;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    .line 110
    return-void
.end method


# virtual methods
.method public files()Lcom/google/api/services/drive/Drive$Files;
    .locals 1

    .prologue
    .line 8652
    new-instance v0, Lcom/google/api/services/drive/Drive$Files;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Files;-><init>(Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method protected initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 115
    return-void
.end method
