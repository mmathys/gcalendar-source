.class public final Lcom/google/api/services/drive/model/CheckPermissionsResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "CheckPermissionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
    }
.end annotation


# instance fields
.field private fixOptions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;",
            ">;"
        }
    .end annotation
.end field

.field private fixabilitySummaryState:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFixOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->fixOptions:Ljava/util/List;

    return-object v0
.end method

.method public getFixabilitySummaryState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->fixabilitySummaryState:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    return-object v0
.end method
