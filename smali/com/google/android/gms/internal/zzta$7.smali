.class Lcom/google/android/gms/internal/zzta$7;
.super Lcom/google/android/gms/internal/zzta$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzta;->loadByReference(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbsq:Lcom/google/android/gms/internal/zzta;

.field final synthetic zzbsw:Lcom/google/android/gms/people/model/AvatarReference;

.field final synthetic zzbsx:Lcom/google/android/gms/people/Images$LoadImageOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzta;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzta$7;->zzbsq:Lcom/google/android/gms/internal/zzta;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzta$7;->zzbsw:Lcom/google/android/gms/people/model/AvatarReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzta$7;->zzbsx:Lcom/google/android/gms/people/Images$LoadImageOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzta$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzta$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/people/internal/zzn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzta$7;->zza(Lcom/google/android/gms/people/internal/zzn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/people/internal/zzn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzta$7;->zzbsw:Lcom/google/android/gms/people/model/AvatarReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzta$7;->zzbsx:Lcom/google/android/gms/people/Images$LoadImageOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/people/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/Images$LoadImageOptions;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzta$7;->setCancelToken(Lcom/google/android/gms/common/internal/zzq;)V

    return-void
.end method
