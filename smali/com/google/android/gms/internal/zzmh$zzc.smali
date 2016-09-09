.class Lcom/google/android/gms/internal/zzmh$zzc;
.super Lcom/google/android/gms/internal/zzmh$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zzc;->zzakv:Lcom/google/android/gms/internal/zzmh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzmh$zzi;-><init>(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/internal/zzmh$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/internal/zzmh$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmh$zzc;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    return-void
.end method


# virtual methods
.method public zznv()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzc;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmh;->zzf(Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/internal/zzwk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zzc;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmh;->zzg(Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zzc;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzmh;->zzd(Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/internal/zzmj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmj;->zzakS:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/zzmh$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmh$zzc;->zzakv:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzmh$zza;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzwk;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method
