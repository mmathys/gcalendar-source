.class Lcom/google/android/gms/googlehelp/zzc$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/googlehelp/zzc$2;->zzb([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaTx:Lcom/google/android/gms/googlehelp/zzc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/googlehelp/zzc$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/zzc$2$1;->zzaTx:Lcom/google/android/gms/googlehelp/zzc$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/googlehelp/zzc$2$1;->zzu(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzu(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2$1;->zzaTx:Lcom/google/android/gms/googlehelp/zzc$2;

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTw:Lcom/google/android/gms/googlehelp/zzc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/googlehelp/zzc$zza;->zzxm()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/googlehelp/zzc$2$1;->zzaTx:Lcom/google/android/gms/googlehelp/zzc$2;

    iget-object v0, v0, Lcom/google/android/gms/googlehelp/zzc$2;->zzaTv:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method
