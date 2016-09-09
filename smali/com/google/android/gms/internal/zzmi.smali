.class public Lcom/google/android/gms/internal/zzmi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmk;


# instance fields
.field private final zzakb:Lcom/google/android/gms/internal/zzmj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->zznG()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzmj;->zzakS:Ljava/util/Set;

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->zznH()V

    return-void
.end method

.method public disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmj;->zzakK:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmj$zzf;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzmj$zzf;->zza(Lcom/google/android/gms/internal/zzmj$zze;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmj$zzf;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmj;->zzakK:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmj;->zzakR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmj;->zznF()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DISCONNECTED"

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzmc$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->zzakb:Lcom/google/android/gms/internal/zzmj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmj;->zzakK:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method
