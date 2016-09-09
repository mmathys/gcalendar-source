.class public Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;
.super Ljava/lang/Object;
.source "StructuredLocationImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/EventLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/EventLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 32
    if-ne p1, p0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    instance-of v0, p1, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->getEventLocations()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEventLocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/EventLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 58
    return-void
.end method
