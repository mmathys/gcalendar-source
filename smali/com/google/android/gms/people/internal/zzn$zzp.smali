.class final Lcom/google/android/gms/people/internal/zzn$zzp;
.super Lcom/google/android/gms/people/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzp"
.end annotation


# instance fields
.field private final zzaXx:Lcom/google/android/gms/internal/zzmc$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/people/Images$SetAvatarResult;",
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
            "Lcom/google/android/gms/people/Images$SetAvatarResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/people/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/internal/zzn$zzp;->zzaXx:Lcom/google/android/gms/internal/zzmc$zzb;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/people/internal/zzo;->zzEP()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PeopleClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle callback: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nbundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/people/internal/zzo;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/people/internal/zzn;->zzb(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    if-nez p3, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/people/internal/zzn$zzp;->zzaXx:Lcom/google/android/gms/internal/zzmc$zzb;

    new-instance v3, Lcom/google/android/gms/people/internal/zzn$zzq;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/people/internal/zzn$zzq;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzmc$zzb;->zzs(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "avatarurl"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
