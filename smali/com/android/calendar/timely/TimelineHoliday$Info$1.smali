.class final Lcom/android/calendar/timely/TimelineHoliday$Info$1;
.super Ljava/lang/Object;
.source "TimelineHoliday.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineHoliday$Info;
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
        "Lcom/android/calendar/timely/TimelineHoliday$Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineHoliday$Info;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelineHoliday$Info;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$Info$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/TimelineHoliday$Info;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/TimelineHoliday$Info;
    .locals 1

    .prologue
    .line 205
    new-array v0, p1, [Lcom/android/calendar/timely/TimelineHoliday$Info;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineHoliday$Info$1;->newArray(I)[Lcom/android/calendar/timely/TimelineHoliday$Info;

    move-result-object v0

    return-object v0
.end method
