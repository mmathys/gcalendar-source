.class public Lcom/google/android/gms/internal/zzun;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzun$zzd;,
        Lcom/google/android/gms/internal/zzun$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzul;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaks:Lcom/google/android/gms/common/internal/zzf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzul;->zzGe()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Reminders"

    const-string v2, "Dead object exception when clearing listeners"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Reminders"

    const-string v2, "Remote exception when clearing listeners"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v2, p2}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzul;->zzc(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/internal/zzmo;Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/internal/zzmo",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;",
            ">;",
            "Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzb;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/zzun$zzb;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/internal/zzmo;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v2, p2}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v0, v1, v2, p4}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/TaskId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/reminders/model/TaskId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    invoke-direct {v2, p2}, Lcom/google/android/gms/reminders/model/TaskIdEntity;-><init>(Lcom/google/android/gms/reminders/model/TaskId;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskIdEntity;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v2, p3}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/Task;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v3, v0}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v2, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/util/List;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V

    return-void
.end method

.method protected synthetic zzaa(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun;->zzgc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/reminders/model/Task;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v2, p2}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzul;->zzd(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun;->zzaks:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun;->zzoJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v2, p3}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/google/android/gms/internal/zzul;->zzb(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    return-void
.end method

.method protected zzfO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.reminders.service.START"

    return-object v0
.end method

.method protected zzfP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    return-object v0
.end method

.method protected zzgc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzul$zza;->zzgb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;

    move-result-object v0

    return-object v0
.end method

.method public zzoL()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
