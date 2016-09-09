.class Lcom/google/android/gms/internal/zzur$3;
.super Lcom/google/android/gms/internal/zzuq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->changeRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzuq",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbzg:Lcom/google/android/gms/internal/zzur;

.field final synthetic zzbzi:Ljava/lang/String;

.field final synthetic zzbzj:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

.field final synthetic zzbzk:Lcom/google/android/gms/reminders/model/Task;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzg:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzk:Lcom/google/android/gms/reminders/model/Task;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzj:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzuq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$3;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$3;->zza(Lcom/google/android/gms/internal/zzun;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzun;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzi:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzk:Lcom/google/android/gms/reminders/model/Task;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzur$3;->zzbzj:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzun;->zzb(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
