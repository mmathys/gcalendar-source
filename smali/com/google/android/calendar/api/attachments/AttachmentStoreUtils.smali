.class public Lcom/google/android/calendar/api/attachments/AttachmentStoreUtils;
.super Ljava/lang/Object;
.source "AttachmentStoreUtils.java"


# direct methods
.method private static fromApiAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/EventAttachment;-><init>()V

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment;->fileId:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setFileId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment;->fileUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setFileUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment;->iconLink:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setIconLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment;->mimeType:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment;->title:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventAttachment;->setTitle(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public static fromApiAttachments(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 43
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-static {v0}, Lcom/google/android/calendar/api/attachments/AttachmentStoreUtils;->fromApiAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method private static toApiAttachment(Lcom/google/api/services/calendar/model/EventAttachment;)Lcom/google/android/calendar/api/attachments/Attachment;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setFileId(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setFileUrl(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->getIconLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setIconLink(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->build()Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static toApiAttachments(Ljava/util/List;)[Lcom/google/android/calendar/api/attachments/Attachment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;)[",
            "Lcom/google/android/calendar/api/attachments/Attachment;"
        }
    .end annotation

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 24
    new-array v1, v3, [Lcom/google/android/calendar/api/attachments/Attachment;

    .line 25
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 26
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-static {v0}, Lcom/google/android/calendar/api/attachments/AttachmentStoreUtils;->toApiAttachment(Lcom/google/api/services/calendar/model/EventAttachment;)Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v0

    aput-object v0, v1, v2

    .line 25
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 28
    goto :goto_0
.end method
