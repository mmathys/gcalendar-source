.class public Lcom/google/android/calendar/latency/PerformanceMark;
.super Ljava/lang/Object;
.source "PerformanceMark.java"


# static fields
.field private static mMarkNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCpuTimeNanos:J

.field public final mMark:Ljava/lang/String;

.field public final mMarkId:I

.field public final mTag:Ljava/lang/String;

.field public final mWallTimeMillis:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    .line 64
    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkId:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    .line 56
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkId:I

    .line 59
    return-void
.end method

.method public static getMarkName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkNames:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    sget-object v0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initMarkNames(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sput-object p0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkNames:Landroid/util/SparseArray;

    .line 42
    return-void
.end method
