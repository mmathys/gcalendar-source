.class Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;
.super Ljava/lang/Object;
.source "GuestDropdownChipLayouter.java"

# interfaces
.implements Lcom/android/bitmap/RequestKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientEntryPhotoRequestKey"
.end annotation


# instance fields
.field private mPhotoBytes:[B


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    .line 120
    return-void
.end method


# virtual methods
.method public createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 148
    if-ne p0, p1, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    instance-of v0, p1, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;

    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    check-cast p1, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;

    iget-object v1, p1, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hasOrientationExif()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestDropdownChipLayouter$RecipientEntryPhotoRequestKey;->mPhotoBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
