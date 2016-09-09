.class public final Lcom/google/android/libraries/social/licenses/License;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/libraries/social/licenses/License;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/libraries/social/licenses/License;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final libraryName:Ljava/lang/String;

.field private final licenseLength:I

.field private final licenseOffset:J

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/libraries/social/licenses/License$1;

    invoke-direct {v0}, Lcom/google/android/libraries/social/licenses/License$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/social/licenses/License;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->libraryName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseOffset:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseLength:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->path:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/social/licenses/License$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/libraries/social/licenses/License;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/libraries/social/licenses/License;->libraryName:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Lcom/google/android/libraries/social/licenses/License;->licenseOffset:J

    .line 78
    iput p4, p0, Lcom/google/android/libraries/social/licenses/License;->licenseLength:I

    .line 79
    iput-object p5, p0, Lcom/google/android/libraries/social/licenses/License;->path:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static create(Ljava/lang/String;JILjava/lang/String;)Lcom/google/android/libraries/social/licenses/License;
    .locals 7

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/libraries/social/licenses/License;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/social/licenses/License;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/libraries/social/licenses/License;)I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->libraryName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/social/licenses/License;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/google/android/libraries/social/licenses/License;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/social/licenses/License;->compareTo(Lcom/google/android/libraries/social/licenses/License;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method getLicenseLength()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseLength:I

    return v0
.end method

.method getLicenseOffset()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseOffset:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/libraries/social/licenses/License;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->libraryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget v0, p0, Lcom/google/android/libraries/social/licenses/License;->licenseLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/social/licenses/License;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
