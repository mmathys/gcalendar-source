.class Lcom/google/android/gms/internal/zzur$13;
.super Lcom/google/android/gms/internal/zzuq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->createReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/CreateReminderOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic zzTs:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzbzg:Lcom/google/android/gms/internal/zzur;

.field final synthetic zzbzk:Lcom/google/android/gms/reminders/model/Task;

.field final synthetic zzbzr:Lcom/google/android/gms/reminders/CreateReminderOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/CreateReminderOptions;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzg:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzr:Lcom/google/android/gms/reminders/CreateReminderOptions;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzk:Lcom/google/android/gms/reminders/model/Task;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzur$13;->zzTs:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzuq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$13;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$13;->zza(Lcom/google/android/gms/internal/zzun;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzun;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzr:Lcom/google/android/gms/reminders/CreateReminderOptions;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzk:Lcom/google/android/gms/reminders/model/Task;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->zzbyD:Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/internal/zzmo;Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzk:Lcom/google/android/gms/reminders/model/Task;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzur$13;->zzTs:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzr:Lcom/google/android/gms/reminders/CreateReminderOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/reminders/CreateReminderOptions;->getListener()Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzur;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzmo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzur$13;->zzbzr:Lcom/google/android/gms/reminders/CreateReminderOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/reminders/CreateReminderOptions;->getInternalOptions()Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzun;->zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/internal/zzmo;Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;)V

    goto :goto_0
.end method

.method public zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
