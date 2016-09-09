.class final Lcom/google/android/gms/googlehelp/zzc$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/googlehelp/zzc$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzaTw:Lcom/google/android/gms/googlehelp/zzc$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/googlehelp/zzc$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTw:Lcom/google/android/gms/googlehelp/zzc$zza;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/zzc$2;->zzb([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs zzb([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTw:Lcom/google/android/gms/googlehelp/zzc$zza;

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/googlehelp/zzc$zza;->zzn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/googlehelp/zzc$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/googlehelp/zzc$2$1;-><init>(Lcom/google/android/gms/googlehelp/zzc$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTw:Lcom/google/android/gms/googlehelp/zzc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/googlehelp/zzc$zza;->zzxm()V

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method
