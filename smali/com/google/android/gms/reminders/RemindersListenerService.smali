.class public abstract Lcom/google/android/gms/reminders/RemindersListenerService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/RemindersListenerService$1;,
        Lcom/google/android/gms/reminders/RemindersListenerService$zza;,
        Lcom/google/android/gms/reminders/RemindersListenerService$zzb;
    }
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private zzaJp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzoL:I

.field private zzoM:Landroid/os/Handler;

.field private zzoN:Landroid/os/IBinder;

.field private zzoO:Ljava/lang/Object;

.field private zzoP:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoL:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoO:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/reminders/RemindersListenerService;Lcom/google/android/gms/common/data/DataHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzak(Lcom/google/android/gms/common/data/DataHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/reminders/RemindersListenerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    return-void
.end method

.method private zzaT()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoL:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zze(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoL:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zzak(Lcom/google/android/gms/common/data/DataHolder;)I
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/reminders/RemindersListenerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaT()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/reminders/RemindersListenerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoO:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/reminders/RemindersListenerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoP:Z

    return v0
.end method

.method private zzdR(Ljava/lang/String;)V
    .locals 2

    const-string v0, "RemindersLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemindersLS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private zznf(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    monitor-enter v1

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "com.google.android.gms.reminders.BIND_LISTENER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoN:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->verifyPackageIsGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemindersLS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/google/android/gms/reminders/RemindersListenerService$zzb;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService$zzb;-><init>(Lcom/google/android/gms/reminders/RemindersListenerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoM:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/reminders/RemindersListenerService$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService$zza;-><init>(Lcom/google/android/gms/reminders/RemindersListenerService;Lcom/google/android/gms/reminders/RemindersListenerService$1;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoN:Landroid/os/IBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoO:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoP:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoM:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final onHandleIntentInternal(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "api_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "reminder_event"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReminderFiredInternal Handling thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->onReminderFired(Lcom/google/android/gms/reminders/model/ReminderEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "data_holder_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zznf(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemindersChangedInternal Handling thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->onRemindersChanged(Lcom/google/android/gms/reminders/model/ReminderEventBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    throw v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "data_holder_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zznf(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzaJp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemindersChangedInternal Handling thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->onSnoozePresetChanged(Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;->release()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;->release()V

    throw v0
.end method

.method protected abstract onReminderFired(Lcom/google/android/gms/reminders/model/ReminderEvent;)V
.end method

.method protected abstract onRemindersChanged(Lcom/google/android/gms/reminders/model/ReminderEventBuffer;)V
.end method

.method protected abstract onSnoozePresetChanged(Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->zzdR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoM:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService;->zzoM:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x3

    return v0
.end method
