.class final Lcom/android/calendar/timely/TimelineHoliday$1;
.super Ljava/lang/Object;
.source "TimelineHoliday.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineHoliday;
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
        "Lcom/android/calendar/timely/TimelineHoliday;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineHoliday;
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelineHoliday;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/TimelineHoliday;
    .locals 1

    .prologue
    .line 382
    new-array v0, p1, [Lcom/android/calendar/timely/TimelineHoliday;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$1;->newArray(I)[Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    return-object v0
.end method
