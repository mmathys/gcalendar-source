.class abstract Lcom/google/android/gms/googlehelp/internal/common/zzb$zza;
.super Lcom/google/android/gms/internal/zzmc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/googlehelp/internal/common/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzmc$zza",
        "<TR;",
        "Lcom/google/android/gms/googlehelp/internal/common/zzc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/googlehelp/zzc;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzmc$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/googlehelp/internal/common/zzf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/googlehelp/internal/common/zzc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/internal/common/zzb$zza;->zza(Lcom/google/android/gms/googlehelp/internal/common/zzc;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/googlehelp/internal/common/zzc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/googlehelp/internal/common/zzc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/googlehelp/internal/common/zzc;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/internal/common/zzf;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/googlehelp/internal/common/zzb$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/googlehelp/internal/common/zzf;)V

    return-void
.end method
