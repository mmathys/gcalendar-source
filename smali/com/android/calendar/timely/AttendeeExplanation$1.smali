.class final Lcom/android/calendar/timely/AttendeeExplanation$1;
.super Ljava/lang/Object;
.source "AttendeeExplanation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/AttendeeExplanation;
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
        "Lcom/android/calendar/timely/AttendeeExplanation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/AttendeeExplanation;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/calendar/timely/AttendeeExplanation;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/AttendeeExplanation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/AttendeeExplanation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/calendar/timely/AttendeeExplanation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/calendar/timely/AttendeeExplanation;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/android/calendar/timely/AttendeeExplanation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/AttendeeExplanation$1;->newArray(I)[Lcom/android/calendar/timely/AttendeeExplanation;

    move-result-object v0

    return-object v0
.end method
