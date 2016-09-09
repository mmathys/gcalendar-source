.class public Lcom/google/android/gms/playlog/internal/zze;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/playlog/internal/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzbwd:Lcom/google/android/gms/playlog/internal/zzd;

.field private final zzbwe:Lcom/google/android/gms/playlog/internal/zzb;

.field private zzbwf:Z

.field private final zzpI:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/playlog/internal/zzd;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    const/16 v3, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zzd;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwd:Lcom/google/android/gms/playlog/internal/zzd;

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwd:Lcom/google/android/gms/playlog/internal/zzd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/playlog/internal/zzd;->zza(Lcom/google/android/gms/playlog/internal/zze;)V

    new-instance v0, Lcom/google/android/gms/playlog/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/internal/zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwe:Lcom/google/android/gms/playlog/internal/zzb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzpI:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwf:Z

    return-void
.end method

.method private zzFs()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwf:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzW(Z)V

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwe:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwe:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->zzFq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zzb$zza;

    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbwa:Lcom/google/android/gms/internal/zzacf$zzd;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->zzoJ()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/zze;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbvY:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbwa:Lcom/google/android/gms/internal/zzacf$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabz;->zzf(Lcom/google/android/gms/internal/zzabz;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbvY:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbvZ:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_3
    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->zzoJ()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/zze;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbvY:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzbvZ:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zze;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/playlog/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwe:Lcom/google/android/gms/playlog/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzb;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public start()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zze;->zzpI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwd:Lcom/google/android/gms/playlog/internal/zzd;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/playlog/internal/zzd;->zzaM(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zze;->zzoG()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzaN(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/zze;->zzpI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zze;->zzbwf:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zze;->zzFs()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic zzaa(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/zze;->zzfO(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzfO(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/playlog/internal/zza$zza;->zzfN(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzfO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected zzfP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method
