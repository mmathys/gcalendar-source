.class final Lcom/android/calendar/timely/animations/EventInfoAnimationData$1;
.super Ljava/lang/Object;
.source "EventInfoAnimationData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/animations/EventInfoAnimationData;
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
        "Lcom/android/calendar/timely/animations/EventInfoAnimationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/animations/EventInfoAnimationData;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 85
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v6, :cond_2

    .line 92
    new-instance v8, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    if-ne v10, v6, :cond_1

    :goto_1
    invoke-direct {v8, v9, v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;-><init>(FZ)V

    move-object v6, v8

    .line 93
    :goto_2
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;-><init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V

    .line 85
    return-object v0

    :cond_0
    move v5, v7

    .line 90
    goto :goto_0

    :cond_1
    move v6, v7

    .line 92
    goto :goto_1

    :cond_2
    move-object v6, v8

    .line 93
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/animations/EventInfoAnimationData;
    .locals 1

    .prologue
    .line 98
    new-array v0, p1, [Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$1;->newArray(I)[Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v0

    return-object v0
.end method
