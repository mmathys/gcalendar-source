.class Lcom/google/android/gms/reminders/RemindersListenerService$zza;
.super Lcom/google/android/gms/internal/zzuk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/RemindersListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/reminders/RemindersListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzuk$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/reminders/RemindersListenerService;Lcom/google/android/gms/reminders/RemindersListenerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/reminders/RemindersListenerService$zza;-><init>(Lcom/google/android/gms/reminders/RemindersListenerService;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/reminders/model/TaskEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzal(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReminderFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzb(Lcom/google/android/gms/reminders/RemindersListenerService;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzc(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderFired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": shutdown? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderFired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->get(I)Lcom/google/android/gms/reminders/model/ReminderEvent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/reminders/model/ReminderEventEntity;-><init>(Lcom/google/android/gms/reminders/model/ReminderEvent;)V

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    const-string v4, "onReminderFired: Post to package handling thread"

    invoke-static {v3, v4}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    iget-object v5, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "api_id"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "reminder_event"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public zzam(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReminderChangeEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzb(Lcom/google/android/gms/reminders/RemindersListenerService;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzc(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderChangeEvents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": shutdown? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReminderChangeEvents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0, p1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Lcom/google/android/gms/common/data/DataHolder;)I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    iget-object v4, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "api_id"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "data_holder_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    const-string v3, "onReminderChangeEvents: Post to package handling thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzan(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSnoozePresetChangedEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzb(Lcom/google/android/gms/reminders/RemindersListenerService;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzc(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSnoozePresetChangedEvents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": shutdown? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSnoozePresetChangedEvents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-static {v0, p1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Lcom/google/android/gms/common/data/DataHolder;)I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    iget-object v4, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "api_id"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "data_holder_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    const-string v3, "onReminderChangeEvents: Post to package handling thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/reminders/RemindersListenerService;->zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/RemindersListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
