.class Lcom/google/android/gms/internal/zzun$zzd;
.super Lcom/google/android/gms/internal/zzui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzbzc:Lcom/google/android/gms/internal/zzmc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmc$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzui;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$zzd;->zzbzc:Lcom/google/android/gms/internal/zzmc$zzb;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->zzbzc:Lcom/google/android/gms/internal/zzmc$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzmc$zzb;->zzs(Ljava/lang/Object;)V

    return-void
.end method
