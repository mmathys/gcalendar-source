.class public final Lcom/google/api/services/drive/model/FixPermissionsRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "FixPermissionsRequest.java"


# instance fields
.field private fileIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixOptionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private recipientEmailAddresses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->clone()Lcom/google/api/services/drive/model/FixPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->clone()Lcom/google/api/services/drive/model/FixPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/FixPermissionsRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->clone()Lcom/google/api/services/drive/model/FixPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/FixPermissionsRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/FixPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/FixPermissionsRequest;

    return-object v0
.end method

.method public setFileIds(Ljava/util/List;)Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/FixPermissionsRequest;"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/api/services/drive/model/FixPermissionsRequest;->fileIds:Ljava/util/List;

    .line 84
    return-object p0
.end method

.method public setFixOptionType(Ljava/lang/String;)Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/services/drive/model/FixPermissionsRequest;->fixOptionType:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setRecipientEmailAddresses(Ljava/util/List;)Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/FixPermissionsRequest;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/services/drive/model/FixPermissionsRequest;->recipientEmailAddresses:Ljava/util/List;

    .line 137
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/FixPermissionsRequest;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/api/services/drive/model/FixPermissionsRequest;->role:Ljava/lang/String;

    .line 158
    return-object p0
.end method
