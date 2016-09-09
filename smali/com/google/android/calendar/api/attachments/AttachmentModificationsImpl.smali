.class public Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;
.super Ljava/lang/Object;
.source "AttachmentModificationsImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/attachments/AttachmentModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/google/android/calendar/api/attachments/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mOriginal:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/google/android/calendar/api/attachments/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    .line 20
    iput-object p1, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mOriginal:Ljava/util/List;

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attachments/Attachment;

    iget-object v0, v0, Lcom/google/android/calendar/api/attachments/Attachment;->fileUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/api/attachments/Attachment;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_1
    return-void

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isModified()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mOriginal:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/api/attachments/AttachmentModificationsImpl;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 71
    return-void
.end method
