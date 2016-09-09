.class public Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;
.super Ljava/lang/Object;
.source "StructuredLocationModificationsImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    .line 25
    sget-object v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
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
    .line 55
    invoke-virtual {p0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    invoke-interface {v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    .line 36
    invoke-interface {v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mOriginal:Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModificationsImpl;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 72
    return-void
.end method
