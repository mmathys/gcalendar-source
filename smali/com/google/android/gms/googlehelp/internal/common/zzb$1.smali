.class Lcom/google/android/gms/googlehelp/internal/common/zzb$1;
.super Lcom/google/android/gms/googlehelp/internal/common/zzb$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/internal/common/zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaTA:Landroid/graphics/Bitmap;

.field final synthetic zzaTB:Landroid/app/Activity;

.field final synthetic zzaTC:Lcom/google/android/gms/googlehelp/internal/common/zzb;

.field final synthetic zzaTp:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/googlehelp/internal/common/zzb;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTC:Lcom/google/android/gms/googlehelp/internal/common/zzb;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTp:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTA:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTB:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/googlehelp/internal/common/zzb$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/googlehelp/internal/common/zzf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTp:Landroid/content/Intent;

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTA:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;-><init>(Lcom/google/android/gms/googlehelp/internal/common/zzb$1;)V

    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/gms/googlehelp/internal/common/zzf;->zza(Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/graphics/Bitmap;Lcom/google/android/gms/googlehelp/internal/common/zze;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "gH_GoogleHelpApiImpl"

    const-string v2, "Starting help failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/googlehelp/internal/common/zzb;->zzxn()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzC(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
