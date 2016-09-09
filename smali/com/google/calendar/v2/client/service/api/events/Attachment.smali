.class public Lcom/google/calendar/v2/client/service/api/events/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
    }
.end annotation


# instance fields
.field private final fileUrl:Ljava/lang/String;

.field private final iconUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    # getter for: Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->fileUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    .line 23
    # getter for: Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->title:Ljava/lang/String;

    .line 24
    # getter for: Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->iconUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->access$200(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->iconUrl:Ljava/lang/String;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;Lcom/google/calendar/v2/client/service/api/events/Attachment$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;-><init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;-><init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    if-nez v2, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    .line 57
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attachment;->title:Ljava/lang/String;

    .line 58
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/events/Attachment;->iconUrl:Ljava/lang/String;

    .line 59
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "File"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->fileUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->title:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Icon"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment;->iconUrl:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method
