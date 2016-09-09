.class Lcom/google/android/gms/internal/zzmh$zza$1;
.super Lcom/google/android/gms/internal/zzmj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakx:Lcom/google/android/gms/internal/zzmh;

.field final synthetic zzaky:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzakz:Lcom/google/android/gms/internal/zzmh$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/internal/zzmk;Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zza$1;->zzakz:Lcom/google/android/gms/internal/zzmh$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmh$zza$1;->zzakx:Lcom/google/android/gms/internal/zzmh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmh$zza$1;->zzaky:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmj$zzb;-><init>(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method


# virtual methods
.method public zznv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zza$1;->zzakx:Lcom/google/android/gms/internal/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zza$1;->zzaky:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmh;->zzc(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
