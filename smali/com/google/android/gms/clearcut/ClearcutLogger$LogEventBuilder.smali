.class public Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/ClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEventBuilder"
.end annotation


# instance fields
.field private zzahE:Ljava/lang/String;

.field private zzahF:I

.field private zzahG:Ljava/lang/String;

.field private zzahH:Ljava/lang/String;

.field private zzahJ:I

.field private final zzahM:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

.field private zzahN:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

.field private zzahO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

.field private zzahQ:Z

.field final synthetic zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zza(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahF:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzb(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahE:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzd(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zze(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahJ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahO:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzacf$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahQ:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahG:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzd(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzf(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZI:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzf(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZJ:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzg(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLogger$TimeZoneOffsetProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZI:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/ClearcutLogger$TimeZoneOffsetProvider;->getOffsetSeconds(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZT:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzacf$zzd;->zzbZO:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahM:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    return-void
.end method


# virtual methods
.method public getLogEventParcelable()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 10

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzi(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzj(Lcom/google/android/gms/clearcut/ClearcutLogger;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahF:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahE:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahG:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahH:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzh(Lcom/google/android/gms/clearcut/ClearcutLogger;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahJ:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahP:Lcom/google/android/gms/internal/zzacf$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahM:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahN:Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahO:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzacf$zzd;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;[I)V

    return-object v9
.end method

.method public logAsync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahQ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahQ:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzk(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->getLogEventParcelable()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLoggerApi;->logEventAsync(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahR:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzh(Lcom/google/android/gms/clearcut/ClearcutLogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setUploadAccountName forbidden on anonymous logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->zzahG:Ljava/lang/String;

    return-object p0
.end method
