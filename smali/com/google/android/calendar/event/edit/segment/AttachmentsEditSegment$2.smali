.class Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;
.super Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;
.source "AttachmentsEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

.field final synthetic val$driveResourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->val$driveResourceId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$FileMetadataTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/google/android/gms/drive/Metadata;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 480
    if-eqz p1, :cond_3

    .line 481
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getWebContentLink()Ljava/lang/String;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 485
    :goto_0
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->newBuilder()Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setFileUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    .line 488
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->getIconUrlForMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$300(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->setIconUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->build()Lcom/google/calendar/v2/client/service/api/events/Attachment;

    move-result-object v1

    .line 490
    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adding attachment: "

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 491
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->mAttachmentToDriveResourceId:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$500(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->val$driveResourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->updateAttachmentsView()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$600(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V

    .line 500
    :goto_2
    return-void

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getAlternateLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_2
    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAttachments is null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 498
    :cond_3
    # getter for: Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "metadata is null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 477
    check-cast p1, Lcom/google/android/gms/drive/Metadata;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment$2;->onPostExecute(Lcom/google/android/gms/drive/Metadata;)V

    return-void
.end method
