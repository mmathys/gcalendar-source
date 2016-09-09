.class Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;
.super Lcom/google/android/calendar/timely/ApiClientAsyncTask;
.source "AttachmentEditSegmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    .line 121
    invoke-direct {p0, p2, p3}, Lcom/google/android/calendar/timely/ApiClientAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected varargs doInBackgroundConnected([Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/Metadata;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/DriveApi;->getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveFile;->getMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveResource$MetadataResult;

    .line 128
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveResource$MetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveResource$MetadataResult;->getMetadata()Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackgroundConnected([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Lcom/google/android/gms/drive/DriveId;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->doInBackgroundConnected([Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/Metadata;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gms/drive/Metadata;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 137
    # getter for: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Metadata is null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getWebContentLink()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    :goto_1
    new-instance v1, Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    invoke-direct {v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;-><init>()V

    .line 149
    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setFileUrl(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    .line 151
    invoke-virtual {v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/event/segment/AttachmentHelper;->getTypeIconUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setIconLink(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->build()Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v1

    .line 154
    # getter for: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adding attachment: "

    invoke-virtual {v1}, Lcom/google/android/calendar/api/attachments/Attachment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    # getter for: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->access$100(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;)Lcom/google/android/calendar/api/EventModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getAttachmentModifications()Lcom/google/android/calendar/api/attachments/AttachmentModifications;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/attachments/AttachmentModifications;->addAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->this$0:Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;

    # invokes: Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->updateUi()V
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;->access$200(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController;)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getAlternateLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegmentController$FileMetadataTask;->onPostExecute(Lcom/google/android/gms/drive/Metadata;)V

    return-void
.end method
