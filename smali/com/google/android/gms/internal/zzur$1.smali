.class Lcom/google/android/gms/internal/zzur$1;
.super Lcom/google/android/gms/internal/zzuq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->loadReminders(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzuq",
        "<",
        "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbzf:Lcom/google/android/gms/reminders/LoadRemindersOptions;

.field final synthetic zzbzg:Lcom/google/android/gms/internal/zzur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$1;->zzbzg:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$1;->zzbzf:Lcom/google/android/gms/reminders/LoadRemindersOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzuq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$1;->zzcx(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

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

    check-cast p1, Lcom/google/android/gms/internal/zzun;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$1;->zza(Lcom/google/android/gms/internal/zzun;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzun;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzur$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzur$1$1;-><init>(Lcom/google/android/gms/internal/zzur$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$1;->zzbzf:Lcom/google/android/gms/reminders/LoadRemindersOptions;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->DEFAULT_OPTION:Lcom/google/android/gms/reminders/LoadRemindersOptions;

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$1;->zzbzf:Lcom/google/android/gms/reminders/LoadRemindersOptions;

    goto :goto_0
.end method

.method protected zzcx(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzur$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzur$zzb;-><init>(Lcom/google/android/gms/reminders/model/RemindersBuffer;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
