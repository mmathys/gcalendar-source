.class final Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel$1;
.super Ljava/lang/Object;
.source "CalendarAccessLevel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
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
        "Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # invokes: Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->checkLevel(I)I
    invoke-static {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->access$000(I)I

    move-result v0

    # invokes: Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->accessLevelIntToCalendarAccessLevel(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    invoke-static {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->access$100(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 1

    .prologue
    .line 117
    new-array v0, p1, [Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel$1;->newArray(I)[Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v0

    return-object v0
.end method
