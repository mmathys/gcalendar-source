.class public Lcom/google/android/gms/location/internal/zzl;
.super Lcom/google/android/gms/location/internal/zzb;


# instance fields
.field private final zzaXw:Lcom/google/android/gms/location/internal/zzk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/zzb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/location/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl;->zzaWU:Lcom/google/android/gms/location/internal/zzp;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/zzp;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->zzaXw:Lcom/google/android/gms/location/internal/zzk;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzl;->zzaXw:Lcom/google/android/gms/location/internal/zzk;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzl;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->zzaXw:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->zzaXw:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->zzxP()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/location/internal/zzb;->disconnect()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzl;->zzaXw:Lcom/google/android/gms/location/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzk;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public zzoL()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
