.class Lcom/google/android/gms/internal/zzta$1;
.super Lcom/google/android/gms/people/People$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$zza",
        "<",
        "Lcom/google/android/gms/people/Images$SetAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbrC:Ljava/lang/String;

.field final synthetic zzbrI:Ljava/lang/String;

.field final synthetic zzbso:Landroid/net/Uri;

.field final synthetic zzbsp:Z


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzta$1;->zzbV(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/people/internal/zzn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzta$1;->zza(Lcom/google/android/gms/people/internal/zzn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/people/internal/zzn;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzta$1;->zzbrC:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzta$1;->zzbrI:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzta$1;->zzbso:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzta$1;->zzbsp:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method protected zzbV(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$SetAvatarResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzta$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzta$1$1;-><init>(Lcom/google/android/gms/internal/zzta$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
