.class Lcom/google/android/gms/internal/zzmt$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzalJ:Lcom/google/android/gms/internal/zzmt;

.field private final zzalK:I

.field private final zzalL:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmt;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalK:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zzb(Lcom/google/android/gms/internal/zzmt;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    iget v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalK:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzmt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmt;->zzc(Lcom/google/android/gms/internal/zzmt;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zznU()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zznU()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzmt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzmt$zzb$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzmt$zzb$1;-><init>(Lcom/google/android/gms/internal/zzmt$zzb;Landroid/app/Dialog;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzmm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmm;)Lcom/google/android/gms/internal/zzmm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;Lcom/google/android/gms/internal/zzmm;)Lcom/google/android/gms/internal/zzmm;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalJ:Lcom/google/android/gms/internal/zzmt;

    iget v1, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalK:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmt$zzb;->zzalL:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmt;->zza(Lcom/google/android/gms/internal/zzmt;ILcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0
.end method
