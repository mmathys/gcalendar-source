.class final Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
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
        "Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    .locals 1

    .prologue
    .line 416
    new-array v0, p1, [Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod$1;->newArray(I)[Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    move-result-object v0

    return-object v0
.end method
