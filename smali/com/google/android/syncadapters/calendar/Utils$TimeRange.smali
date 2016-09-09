.class Lcom/google/android/syncadapters/calendar/Utils$TimeRange;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeRange"
.end annotation


# instance fields
.field private final mEndTime:J

.field private final mStartTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-wide p1, p0, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->mStartTime:J

    .line 564
    iput-wide p3, p0, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->mEndTime:J

    .line 565
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->mEndTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->mStartTime:J

    return-wide v0
.end method
