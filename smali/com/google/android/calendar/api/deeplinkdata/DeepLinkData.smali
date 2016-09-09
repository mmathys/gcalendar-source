.class public Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
.super Ljava/lang/Object;
.source "DeepLinkData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

.field private final mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

.field private final mPlatformUrl:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    const-class v1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 34
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mUrl:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    .line 30
    iput-object p4, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    if-nez v2, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    .line 91
    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    .line 93
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 94
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDisplayInfo()Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    return-object v0
.end method

.method public getPlatformUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mPlatformUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mDisplayInfo:Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->mLaunchInfo:Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
