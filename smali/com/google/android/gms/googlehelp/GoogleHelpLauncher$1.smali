.class Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/googlehelp/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->launchGoogleHelp(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaTp:Landroid/content/Intent;

.field final synthetic zzaTq:Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;


# direct methods
.method constructor <init>(Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTq:Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTp:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/googlehelp/zzc;->zzaTu:Lcom/google/android/gms/googlehelp/zza;

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTq:Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;

    invoke-static {v1}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->zza(Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTq:Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;

    iget-object v2, v2, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTp:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/googlehelp/zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzxm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTq:Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher$1;->zzaTp:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/googlehelp/GoogleHelpLauncher;->handlePlayServicesUnavailable(ILandroid/content/Intent;)V

    return-void
.end method
