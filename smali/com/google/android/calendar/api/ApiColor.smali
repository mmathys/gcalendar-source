.class public Lcom/google/android/calendar/api/ApiColor;
.super Ljava/lang/Object;
.source "ApiColor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundColor:I

.field private final mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

.field private final mLightColor:Ljava/lang/Integer;

.field private final mName:Ljava/lang/String;

.field private final mPaletteIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/calendar/api/ApiColor$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/ApiColor$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/ApiColor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    .line 40
    const-class v0, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/api/ColorDescriptor;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v0, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-class v0, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v0, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/api/ApiColor;-><init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/ApiColor$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/ApiColor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/ColorDescriptor;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/high16 v1, -0x1000000

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 31
    or-int v0, p2, v1

    iput v0, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    .line 32
    iput-object p3, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    .line 34
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    .line 35
    iput-object p5, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPaletteColorFeatureSupported()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/utils/AccountUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    instance-of v1, p1, Lcom/google/android/calendar/api/ApiColor;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    check-cast p1, Lcom/google/android/calendar/api/ApiColor;

    .line 99
    iget v1, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    iget v2, p1, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    iget-object v2, p1, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 100
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    .line 102
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    .line 103
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    return v0
.end method

.method public getColorDescriptor()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    return-object v0
.end method

.method public getColorName()Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/calendar/api/ApiColor;->isPaletteColorFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/calendar/api/Feature;->createUnsupported()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    goto :goto_0
.end method

.method public getPaletteIndex()Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/calendar/api/ApiColor;->isPaletteColorFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/calendar/api/Feature;->createUnsupported()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 109
    iget v0, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    add-int/lit16 v0, v0, 0x20f

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/ColorDescriptor;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 114
    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "ApiColor{background=#%06x, name=\'%s\', descriptor=%s, light=#%06x, index=%d}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    aput-object v3, v1, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mDescriptor:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget v0, p0, Lcom/google/android/calendar/api/ApiColor;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mLightColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/api/ApiColor;->mPaletteIndex:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
