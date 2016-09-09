.class final Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData$1;
.super Ljava/lang/Object;
.source "Recurrence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;
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
        "Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;-><init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/time/Recurrence$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;
    .locals 1

    .prologue
    .line 59
    new-array v0, p1, [Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData$1;->newArray(I)[Lcom/google/android/calendar/api/time/Recurrence$RecurrenceData;

    move-result-object v0

    return-object v0
.end method
