.class public final Lcom/google/api/services/calendar/model/EventAttachment;
.super Lcom/google/api/client/json/GenericJson;
.source "EventAttachment.java"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private iconLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->clone()Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->clone()Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

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
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttachment;->clone()Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttachment;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttachment;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttachment;->iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttachment;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventAttachment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventAttachment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventAttachment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttachment;->fileId:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttachment;->fileUrl:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setIconLink(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttachment;->iconLink:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttachment;->mimeType:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventAttachment;->title:Ljava/lang/String;

    .line 155
    return-object p0
.end method
