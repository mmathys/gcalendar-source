.class public Lcom/android/calendar/timely/TimelineAttendeeEvent;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "TimelineAttendeeEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/calendar/timely/TimelineAttendeeEvent$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineAttendeeEvent$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Landroid/os/Parcel;)V

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    if-nez v2, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    check-cast p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    .line 51
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endMillis:J

    iget-wide v4, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startDay:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endDay:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startTime:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTime:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTime:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->selfAttendeeStatus:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->selfAttendeeStatus:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->allDay:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->allDay:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTimeUnspecified:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTimeUnspecified:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->color:I

    iget v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->color:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    .line 61
    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->isTransparent:Z

    iget-boolean v3, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;->isTransparent:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startMillis:J

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->selfAttendeeStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->allDay:Z

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTimeUnspecified:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->isTransparent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
