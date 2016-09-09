.class public Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;
.super Ljava/lang/Object;
.source "LaunchInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mInstallUrl:Ljava/lang/String;

.field private final mIntentAction:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mUri:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mAppId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mIntentAction:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mInstallUrl:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    if-nez v2, :cond_2

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;

    .line 81
    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mAppId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mAppId:Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mInstallUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mInstallUrl:Ljava/lang/String;

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mIntentAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mIntentAction:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mInstallUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/calendar/api/deeplinkdata/LaunchInfo;->mInstallUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
