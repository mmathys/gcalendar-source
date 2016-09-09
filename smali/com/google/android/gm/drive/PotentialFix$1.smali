.class final Lcom/google/android/gm/drive/PotentialFix$1;
.super Ljava/lang/Object;
.source "PotentialFix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/drive/PotentialFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gm/drive/PotentialFix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/drive/PotentialFix;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/google/android/gm/drive/PotentialFix;

    invoke-direct {v0, p1}, Lcom/google/android/gm/drive/PotentialFix;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/gm/drive/PotentialFix$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gm/drive/PotentialFix;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gm/drive/PotentialFix;
    .locals 1

    .prologue
    .line 155
    new-array v0, p1, [Lcom/google/android/gm/drive/PotentialFix;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/gm/drive/PotentialFix$1;->newArray(I)[Lcom/google/android/gm/drive/PotentialFix;

    move-result-object v0

    return-object v0
.end method
