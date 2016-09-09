.class public final Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "CheckPermissionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCollaboratorsInfo"
.end annotation


# instance fields
.field private outOfDomainWarningEmailAddresses:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

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
    .line 322
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfDomainWarningEmailAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->outOfDomainWarningEmailAddresses:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
    .locals 1

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    return-object v0
.end method
