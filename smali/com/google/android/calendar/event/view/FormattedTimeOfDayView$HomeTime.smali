.class public Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;
.super Ljava/lang/Object;
.source "FormattedTimeOfDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HomeTime"
.end annotation


# instance fields
.field protected mIsHomeTime:Z

.field protected mMillis:J


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/model/Time;Ljava/util/TimeZone;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mIsHomeTime:Z

    .line 65
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mMillis:J

    .line 67
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xea60

    mul-int/2addr v1, v2

    .line 70
    iget-wide v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mMillis:J

    invoke-virtual {p2, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 71
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mIsHomeTime:Z

    .line 73
    iget-boolean v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mIsHomeTime:Z

    if-nez v0, :cond_1

    .line 74
    iget-wide v4, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mMillis:J

    sub-int v0, v1, v2

    int-to-long v0, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mMillis:J

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public getIsHomeTime()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mIsHomeTime:Z

    return v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->mMillis:J

    return-wide v0
.end method
