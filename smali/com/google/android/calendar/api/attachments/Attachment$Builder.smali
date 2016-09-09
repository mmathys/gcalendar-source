.class public Lcom/google/android/calendar/api/attachments/Attachment$Builder;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/attachments/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFileId:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mIconLink:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileId:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileUrl:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mIconLink:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mMimeType:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/calendar/api/attachments/Attachment;
    .locals 7

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/calendar/api/attachments/Attachment;

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mIconLink:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mMimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mTitle:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/attachments/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/attachments/Attachment$1;)V

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileId:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;
    .locals 1

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mFileUrl:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setIconLink(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mIconLink:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mMimeType:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/calendar/api/attachments/Attachment$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/Attachment$Builder;->mTitle:Ljava/lang/String;

    .line 184
    return-object p0
.end method
