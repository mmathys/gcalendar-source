.class public Lcom/google/android/calendar/loggers/PrimesManager;
.super Ljava/lang/Object;
.source "PrimesManager.java"


# static fields
.field private static sPrimesManager:Lcom/google/android/calendar/loggers/PrimesManager;


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field private final mMemoryLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    const-string v1, "CALENDAR_ANDROID_PRIMES"

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mMemoryLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 39
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 40
    return-void
.end method

.method private ensureClientIsConnected()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 51
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/calendar/loggers/PrimesManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/calendar/loggers/PrimesManager;->sPrimesManager:Lcom/google/android/calendar/loggers/PrimesManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/google/android/calendar/loggers/PrimesManager;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/loggers/PrimesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/calendar/loggers/PrimesManager;->sPrimesManager:Lcom/google/android/calendar/loggers/PrimesManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/google/android/calendar/loggers/PrimesManager;->sPrimesManager:Lcom/google/android/calendar/loggers/PrimesManager;

    return-object v0
.end method


# virtual methods
.method public logSystemHealthMetric(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mMemoryLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 59
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lcom/google/android/calendar/loggers/PrimesManager;->ensureClientIsConnected()V

    .line 63
    iget-object v1, p0, Lcom/google/android/calendar/loggers/PrimesManager;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->logAsync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 64
    return-void
.end method
