.class final Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;
.super Ljava/lang/Object;
.source "TimelyEventData.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 1

    .prologue
    .line 596
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 1

    .prologue
    .line 606
    new-array v0, p1, [Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData$1;->newArray(I)[Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    return-object v0
.end method
