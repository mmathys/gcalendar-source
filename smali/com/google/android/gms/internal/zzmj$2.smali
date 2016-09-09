.class Lcom/google/android/gms/internal/zzmj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Lcom/google/android/gms/internal/zzmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzc(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/internal/zzmk;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmk;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzc(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/internal/zzmk;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmk;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj$2;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
