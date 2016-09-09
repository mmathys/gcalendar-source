.class Lcom/google/android/gms/internal/zzmh$zze$1;
.super Lcom/google/android/gms/internal/zzmj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmh$zze;->zznv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakF:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzakG:Lcom/google/android/gms/internal/zzmh$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh$zze;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zze$1;->zzakG:Lcom/google/android/gms/internal/zzmh$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmh$zze$1;->zzakF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmj$zzb;-><init>(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method


# virtual methods
.method public zznv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zze$1;->zzakG:Lcom/google/android/gms/internal/zzmh$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmh$zze;->zzakv:Lcom/google/android/gms/internal/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zze$1;->zzakF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmh;->zza(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
