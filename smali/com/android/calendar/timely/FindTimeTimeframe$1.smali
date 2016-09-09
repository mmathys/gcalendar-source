.class final Lcom/android/calendar/timely/FindTimeTimeframe$1;
.super Ljava/lang/Object;
.source "FindTimeTimeframe.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeTimeframe;
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
        "Lcom/android/calendar/timely/FindTimeTimeframe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/FindTimeTimeframe;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/android/calendar/timely/FindTimeTimeframe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/timely/FindTimeTimeframe;-><init>(Landroid/os/Parcel;Lcom/android/calendar/timely/FindTimeTimeframe$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/FindTimeTimeframe$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/FindTimeTimeframe;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Lcom/android/calendar/timely/FindTimeTimeframe;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/FindTimeTimeframe$1;->newArray(I)[Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v0

    return-object v0
.end method
