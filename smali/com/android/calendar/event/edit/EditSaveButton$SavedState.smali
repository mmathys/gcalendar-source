.class Lcom/android/calendar/event/edit/EditSaveButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EditSaveButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditSaveButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/edit/EditSaveButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDoneEnabled:Z

.field mMode:Z

.field mSaveEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState$1;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/EditSaveButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mMode:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mSaveEnabled:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mDoneEnabled:Z

    .line 181
    return-void

    :cond_0
    move v0, v2

    .line 178
    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_1

    :cond_2
    move v2, v1

    .line 180
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/event/edit/EditSaveButton$1;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 174
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 187
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mSaveEnabled:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mDoneEnabled:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 189
    return-void

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_1

    :cond_2
    move v2, v1

    .line 188
    goto :goto_2
.end method
