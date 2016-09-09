.class public final Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "CheckPermissionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncreaseDomainVisibilityInfo"
.end annotation


# instance fields
.field private domainDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

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
    .line 369
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDomainDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->domainDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    return-object v0
.end method
