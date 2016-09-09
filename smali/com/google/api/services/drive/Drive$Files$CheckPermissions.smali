.class public Lcom/google/api/services/drive/Drive$Files$CheckPermissions;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckPermissions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/CheckPermissionsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;Lcom/google/api/services/drive/model/CheckPermissionsRequest;)V
    .locals 6

    .prologue
    .line 9073
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 9074
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "POST"

    const-string v3, "files/checkPermissions"

    const-class v5, Lcom/google/api/services/drive/model/CheckPermissionsResponse;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9075
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 9055
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 9055
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 9055
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;
    .locals 1

    .prologue
    .line 9114
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 9055
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    move-result-object v0

    return-object v0
.end method
