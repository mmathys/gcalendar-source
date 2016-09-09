.class public final Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
.super Lcom/google/api/client/json/GenericJson;
.source "CheckPermissionsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/CheckPermissionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;,
        Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
    }
.end annotation


# instance fields
.field private addCollaboratorsInfo:Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private allowedRoles:Ljava/util/List;
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

.field private fixableFileIds:Ljava/util/List;
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

.field private fixableRecipientEmailAddresses:Ljava/util/List;
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

.field private fixesEverything:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private increaseDomainVisibilityInfo:Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private optionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

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
    .line 123
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->clone()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    move-result-object v0

    return-object v0
.end method

.method public getAddCollaboratorsInfo()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->addCollaboratorsInfo:Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$AddCollaboratorsInfo;

    return-object v0
.end method

.method public getAllowedRoles()Ljava/util/List;
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
    .line 203
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->allowedRoles:Ljava/util/List;

    return-object v0
.end method

.method public getFixableFileIds()Ljava/util/List;
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
    .line 222
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->fixableFileIds:Ljava/util/List;

    return-object v0
.end method

.method public getFixableRecipientEmailAddresses()Ljava/util/List;
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
    .line 241
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->fixableRecipientEmailAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getFixesEverything()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->fixesEverything:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIncreaseDomainVisibilityInfo()Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->increaseDomainVisibilityInfo:Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions$IncreaseDomainVisibilityInfo;

    return-object v0
.end method

.method public getOptionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->optionType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;
    .locals 1

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CheckPermissionsResponse$FixOptions;

    return-object v0
.end method
