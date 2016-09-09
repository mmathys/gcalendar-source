.class Lcom/google/android/gms/internal/zzly$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzly;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzly$zzc;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaep:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzaiC:Lcom/google/android/gms/internal/zzly$zzc;

.field final synthetic zzaiz:Lcom/google/android/gms/internal/zzly;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzly;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzly$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzly$3;->zzaiz:Lcom/google/android/gms/internal/zzly;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzly$3;->zzaep:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzly$3;->zzaiC:Lcom/google/android/gms/internal/zzly$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzly$3;->zzaep:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzly$3;->zzaiC:Lcom/google/android/gms/internal/zzly$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    return-void
.end method
