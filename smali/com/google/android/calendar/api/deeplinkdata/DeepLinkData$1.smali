.class final Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;
.super Ljava/lang/Object;
.source "DeepLinkData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
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
        "Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;-><init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
    .locals 1

    .prologue
    .line 131
    new-array v0, p1, [Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;->newArray(I)[Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    return-object v0
.end method
