.class public Lcom/google/api/services/drive/Drive$Files;
.super Ljava/lang/Object;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Files"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Files$FixPermissions;,
        Lcom/google/api/services/drive/Drive$Files$CheckPermissions;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 8658
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermissions(Lcom/google/api/services/drive/model/CheckPermissionsRequest;)Lcom/google/api/services/drive/Drive$Files$CheckPermissions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9050
    new-instance v0, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$CheckPermissions;-><init>(Lcom/google/api/services/drive/Drive$Files;Lcom/google/api/services/drive/model/CheckPermissionsRequest;)V

    .line 9051
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9052
    return-object v0
.end method

.method public fixPermissions(Lcom/google/api/services/drive/model/FixPermissionsRequest;)Lcom/google/api/services/drive/Drive$Files$FixPermissions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11147
    new-instance v0, Lcom/google/api/services/drive/Drive$Files$FixPermissions;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$FixPermissions;-><init>(Lcom/google/api/services/drive/Drive$Files;Lcom/google/api/services/drive/model/FixPermissionsRequest;)V

    .line 11148
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 11149
    return-object v0
.end method
