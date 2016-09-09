.class Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;
.super Lcom/google/android/gms/googlehelp/internal/common/SimpleGoogleHelpCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zza(Landroid/content/Context;Lcom/google/android/gms/googlehelp/internal/common/zzf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/googlehelp/internal/common/zzb$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    invoke-direct {p0}, Lcom/google/android/gms/googlehelp/internal/common/SimpleGoogleHelpCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoogleHelpProcessed(Lcom/google/android/gms/googlehelp/GoogleHelp;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->getTogglingData()Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->getTogglingData()Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    iget-object v1, v1, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTB:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/googlehelp/internal/common/zzd;->zzv(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->setPipTitle(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTp:Landroid/content/Intent;

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_START_TICK"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTB:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    iget-object v1, v1, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->zzaTp:Landroid/content/Intent;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/internal/common/zzb$1$1;->zzaTD:Lcom/google/android/gms/googlehelp/internal/common/zzb$1;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzajN:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/googlehelp/internal/common/zzb$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
