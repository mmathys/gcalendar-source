.class public Lcom/google/android/gm/drive/FixPermissionDialogState;
.super Ljava/lang/Object;
.source "FixPermissionDialogState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckedRadioButtonId:I

.field private final mFirstSpinnerPosition:I

.field private final mSecondSpinnerPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/gm/drive/FixPermissionDialogState$1;

    invoke-direct {v0}, Lcom/google/android/gm/drive/FixPermissionDialogState$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/drive/FixPermissionDialogState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mCheckedRadioButtonId:I

    .line 23
    iput p2, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mFirstSpinnerPosition:I

    .line 24
    iput p3, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mSecondSpinnerPosition:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mCheckedRadioButtonId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mFirstSpinnerPosition:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mSecondSpinnerPosition:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mCheckedRadioButtonId:I

    return v0
.end method

.method public getFirstSpinnerPosition()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mFirstSpinnerPosition:I

    return v0
.end method

.method public getSecondSpinnerPosition()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mSecondSpinnerPosition:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mCheckedRadioButtonId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mFirstSpinnerPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/google/android/gm/drive/FixPermissionDialogState;->mSecondSpinnerPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
