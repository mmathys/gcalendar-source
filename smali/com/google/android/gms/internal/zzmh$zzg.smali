.class Lcom/google/android/gms/internal/zzmh$zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzg"
.end annotation


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/internal/zzmh$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmh$zzg;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzf(Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/internal/zzwk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzmh$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzmh$zzb;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzwk;->zza(Lcom/google/android/gms/common/internal/zzt;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzc(Lcom/google/android/gms/internal/zzmh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmh;->zzb(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzi(Lcom/google/android/gms/internal/zzmh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzj(Lcom/google/android/gms/internal/zzmh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzc(Lcom/google/android/gms/internal/zzmh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmh;->zza(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zzg;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmh;->zzc(Lcom/google/android/gms/internal/zzmh;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
