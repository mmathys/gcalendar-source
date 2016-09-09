.class public Lcom/google/android/gms/googlehelp/internal/common/zzc;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/googlehelp/internal/common/zzf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x3f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzaa(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/internal/common/zzc;->zzdA(Landroid/os/IBinder;)Lcom/google/android/gms/googlehelp/internal/common/zzf;

    move-result-object v0

    return-object v0
.end method

.method protected zzdA(Landroid/os/IBinder;)Lcom/google/android/gms/googlehelp/internal/common/zzf;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/googlehelp/internal/common/zzf$zza;->zzdB(Landroid/os/IBinder;)Lcom/google/android/gms/googlehelp/internal/common/zzf;

    move-result-object v0

    return-object v0
.end method

.method protected zzfO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.googlehelp.service.GoogleHelpService.START"

    return-object v0
.end method

.method protected zzfP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.googlehelp.internal.common.IGoogleHelpService"

    return-object v0
.end method
