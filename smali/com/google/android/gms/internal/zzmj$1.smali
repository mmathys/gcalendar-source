.class Lcom/google/android/gms/internal/zzmj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmj$zze;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmj$1;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzmj$zzf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmj$zzf",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$1;->zzala:Lcom/google/android/gms/internal/zzmj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmj;->zzakV:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmj$zzf;->getResultId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$1;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/common/api/ResultStore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmj$1;->zzala:Lcom/google/android/gms/internal/zzmj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmj;->zza(Lcom/google/android/gms/internal/zzmj;)Lcom/google/android/gms/common/api/ResultStore;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmj$zzf;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ResultStore;->remove(I)V

    :cond_0
    return-void
.end method
