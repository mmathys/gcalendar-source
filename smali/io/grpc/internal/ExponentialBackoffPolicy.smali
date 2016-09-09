.class final Lio/grpc/internal/ExponentialBackoffPolicy;
.super Ljava/lang/Object;
.source "ExponentialBackoffPolicy.java"

# interfaces
.implements Lio/grpc/internal/BackoffPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ExponentialBackoffPolicy$Provider;
    }
.end annotation


# instance fields
.field private initialBackoffMillis:J

.field private jitter:D

.field private maxBackoffMillis:J

.field private multiplier:D

.field private nextBackoffMillis:J

.field private random:Ljava/util/Random;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffMillis:J

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffMillis:J

    .line 58
    const-wide v0, 0x3ff999999999999aL    # 1.6

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    .line 59
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    .line 61
    iget-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffMillis:J

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffMillis:J

    return-void
.end method

.method private uniformRandom(DD)J
    .locals 5

    .prologue
    .line 72
    cmpl-double v0, p3, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 73
    sub-double v0, p3, p1

    .line 74
    iget-object v2, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    double-to-long v0, v0

    return-wide v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public nextBackoffMillis()J
    .locals 8

    .prologue
    .line 65
    iget-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffMillis:J

    .line 66
    long-to-double v2, v0

    iget-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffMillis:J

    .line 67
    iget-wide v2, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    neg-double v2, v2

    long-to-double v4, v0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    long-to-double v6, v0

    mul-double/2addr v4, v6

    .line 68
    invoke-direct {p0, v2, v3, v4, v5}, Lio/grpc/internal/ExponentialBackoffPolicy;->uniformRandom(DD)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 67
    return-wide v0
.end method

.method setInitialBackoffMillis(J)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffMillis:J

    .line 91
    return-object p0
.end method

.method setJitter(D)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    .line 109
    return-object p0
.end method

.method setMaxBackoffMillis(J)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffMillis:J

    .line 97
    return-object p0
.end method

.method setMultiplier(D)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    .line 103
    return-object p0
.end method

.method setRandom(Ljava/util/Random;)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    .line 85
    return-object p0
.end method
