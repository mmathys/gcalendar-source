.class public abstract Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;
.super Ljava/lang/Object;
.source "HashedNamesTransmitter.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private umaMetricHash(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "name can not be empty."

    invoke-static {p1, v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 37
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 39
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;->umaMetricHash(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;->sendHashedEvent(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 29
    return-void
.end method

.method protected abstract sendHashedEvent(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
.end method
