.class Lcom/google/android/gms/internal/zzmj$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Lcom/google/android/gms/internal/zzmj;

.field final synthetic zzalb:Lcom/google/android/gms/common/api/Api;

.field final synthetic zzalc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmj;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmj$4;->zzala:Lcom/google/android/gms/internal/zzmj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmj$4;->zzalb:Lcom/google/android/gms/common/api/Api;

    iput p3, p0, Lcom/google/android/gms/internal/zzmj$4;->zzalc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$4;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$4;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzc(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/internal/zzmk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj$4;->zzalb:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzmj$4;->zzalc:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzmk;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$4;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmj$4;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmj;->zzb(Lcom/google/android/gms/internal/zzmj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
