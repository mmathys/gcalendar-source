.class Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;
.super Lcom/google/android/calendar/timely/ApiClientAsyncTask;
.source "AttachmentsEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileMetadataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/timely/ApiClientAsyncTask",
        "<",
        "Lcom/google/android/gms/drive/DriveId;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/timely/ApiClientAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    return-void
.end method


# virtual methods
.method protected varargs doInBackgroundConnected([Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/Metadata;
    .locals 3

    .prologue
    .line 553
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;->getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/DriveApi;->getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;

    move-result-object v0

    .line 555
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;->getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveFile;->getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    .line 556
    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveResource$MetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveResource$MetadataResult;->getMetadata()Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    .line 561
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackgroundConnected([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 545
    check-cast p1, [Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;->doInBackgroundConnected([Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    return-object v0
.end method
