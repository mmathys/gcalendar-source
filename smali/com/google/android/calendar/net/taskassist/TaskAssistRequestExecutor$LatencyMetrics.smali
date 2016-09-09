.class Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;
.super Ljava/lang/Object;
.source "TaskAssistRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatencyMetrics"
.end annotation


# instance fields
.field private mMaxSample:J

.field private mNumSamples:I

.field private mSamplesTotal:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mNumSamples:I

    .line 106
    iput-wide v2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mSamplesTotal:J

    .line 107
    iput-wide v2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mMaxSample:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 3

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mNumSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mNumSamples:I

    .line 111
    iget-wide v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mSamplesTotal:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mSamplesTotal:J

    .line 113
    iget-wide v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mMaxSample:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 114
    iput-wide p1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mMaxSample:J

    .line 116
    :cond_0
    return-void
.end method

.method public getMaxSampleMs()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mMaxSample:J

    return-wide v0
.end method

.method public getSampleAverageMs()J
    .locals 4

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mNumSamples:I

    if-nez v0, :cond_0

    .line 120
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mSamplesTotal:J

    iget v2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor$LatencyMetrics;->mNumSamples:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method
