.class public final Lcom/google/android/libraries/performance/primes/TimerEvent;
.super Ljava/lang/Object;
.source "TimerEvent.java"


# static fields
.field static final EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;


# instance fields
.field private endMs:J

.field private final startMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/TimerEvent;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 28
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->endMs:J

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/performance/primes/TimerEvent;->startMs:J

    .line 33
    return-void
.end method

.method private ensureEndTimeSet()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/performance/primes/TimerEvent;->endMs:J

    .line 61
    return-void
.end method

.method public static newTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/TimerEvent;-><init>()V

    return-object v0
.end method


# virtual methods
.method getDuration()J
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/libraries/performance/primes/TimerEvent;->endMs:J

    iget-wide v2, p0, Lcom/google/android/libraries/performance/primes/TimerEvent;->startMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method stop()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/TimerEvent;->ensureEndTimeSet()V

    .line 49
    return-object p0
.end method
