.class public Lcom/google/android/gms/internal/zzly;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLoggerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzly$zze;,
        Lcom/google/android/gms/internal/zzly$zzd;,
        Lcom/google/android/gms/internal/zzly$zzb;,
        Lcom/google/android/gms/internal/zzly$zza;,
        Lcom/google/android/gms/internal/zzly$zzc;
    }
.end annotation


# static fields
.field private static final zzaip:Ljava/lang/Object;

.field private static zzaiq:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final zzair:Lcom/google/android/gms/internal/zzly$zze;

.field private static final zzais:J


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzait:Lcom/google/android/gms/internal/zzly$zza;

.field private final zzaiu:Ljava/lang/Object;

.field private zzaiv:J

.field private final zzaiw:J

.field private zzaix:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzaiy:Ljava/lang/Runnable;

.field private final zzqB:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzly;->zzaip:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzly$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzly$zze;-><init>(Lcom/google/android/gms/internal/zzly$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzly;->zzair:Lcom/google/android/gms/internal/zzly$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzly;->zzais:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/util/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzf;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zzly;->zzais:J

    new-instance v1, Lcom/google/android/gms/internal/zzly$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzly$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzly;-><init>(Lcom/google/android/gms/common/util/Clock;JLcom/google/android/gms/internal/zzly$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;JLcom/google/android/gms/internal/zzly$zza;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzaiu:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzly;->zzaiv:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzly;->zzaix:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzly;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzly$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzly$1;-><init>(Lcom/google/android/gms/internal/zzly;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzaiy:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly;->zzqB:Lcom/google/android/gms/common/util/Clock;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzly;->zzaiw:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzly;->zzait:Lcom/google/android/gms/internal/zzly$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzly$zzc;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/internal/zzly$zzc",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzly;->zzmW()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzly$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzly$3;-><init>(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzly$zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzly$zzd;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzly;->zzair:Lcom/google/android/gms/internal/zzly$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzly$zze;->increment()V

    new-instance v0, Lcom/google/android/gms/internal/zzly$zzd;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzly$zzd;-><init>(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zzly$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzly$6;-><init>(Lcom/google/android/gms/internal/zzly;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzly$zzd;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzly;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzaiu:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZO:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->extensionProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;->toProtoBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZO:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->clientVisualElementsProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZV:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->clientVisualElementsProducer:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;->toProtoBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZV:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEvent:Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabz;->zzf(Lcom/google/android/gms/internal/zzabz;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->logEventBytes:[B

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzly;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzly;->zzaiv:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->zzqB:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzly;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private zzmW()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzly;->zzaip:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzly;->zzaiq:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzly$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzly$2;-><init>(Lcom/google/android/gms/internal/zzly;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzly;->zzaiq:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzly;->zzaiq:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic zzmX()Lcom/google/android/gms/internal/zzly$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzly;->zzair:Lcom/google/android/gms/internal/zzly$zze;

    return-object v0
.end method


# virtual methods
.method public logEventAsync(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzly$zzd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzly$zzc;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
