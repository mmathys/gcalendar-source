.class Lcom/google/android/gms/drive/internal/zzab$zzd;
.super Lcom/google/android/gms/drive/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/zzab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzapM:Lcom/google/android/gms/internal/zzmc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
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
            "Lcom/google/android/gms/drive/DriveResource$MetadataResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$zzd;->zzapM:Lcom/google/android/gms/internal/zzmc$zzb;

    return-void
.end method


# virtual methods
.method public zzM(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzd;->zzapM:Lcom/google/android/gms/internal/zzmc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzab$zze;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/zzab$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzmc$zzb;->zzs(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzab$zzd;->zzapM:Lcom/google/android/gms/internal/zzmc$zzb;

    new-instance v1, Lcom/google/android/gms/drive/internal/zzab$zze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzajN:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->zzsq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/zzp;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/zzab$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzmc$zzb;->zzs(Ljava/lang/Object;)V

    return-void
.end method
