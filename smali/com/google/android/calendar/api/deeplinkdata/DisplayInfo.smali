.class public Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppIconUrl:Ljava/lang/String;

.field private final mAppShortTitle:Ljava/lang/String;

.field private final mAppTitle:Ljava/lang/String;

.field private final mLinkShortTitle:Ljava/lang/String;

.field private final mLinkTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkTitle:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppShortTitle:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    if-nez v2, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    .line 98
    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppShortTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppShortTitle:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkTitle:Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkShortTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    .line 108
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppShortTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mLinkShortTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->mAppShortTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void
.end method
