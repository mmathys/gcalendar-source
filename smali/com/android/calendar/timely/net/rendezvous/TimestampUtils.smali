.class public Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;
.super Ljava/lang/Object;
.source "TimestampUtils.java"


# direct methods
.method public static durationFromMillis(J)Lcom/google/protobuf/nano/Duration;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 22
    new-instance v0, Lcom/google/protobuf/nano/Duration;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Duration;-><init>()V

    .line 23
    div-long v2, p0, v4

    iput-wide v2, v0, Lcom/google/protobuf/nano/Duration;->seconds:J

    .line 24
    rem-long v2, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/google/protobuf/nano/Duration;->nanos:I

    .line 25
    return-object v0
.end method

.method public static timestampFromMillis(J)Lcom/google/protobuf/nano/Timestamp;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 15
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    .line 16
    div-long v2, p0, v4

    iput-wide v2, v0, Lcom/google/protobuf/nano/Timestamp;->seconds:J

    .line 17
    rem-long v2, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/google/protobuf/nano/Timestamp;->nanos:I

    .line 18
    return-object v0
.end method

.method public static timestampToMillis(Lcom/google/protobuf/nano/Timestamp;)J
    .locals 6

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/protobuf/nano/Timestamp;->seconds:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/protobuf/nano/Timestamp;->nanos:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
