.class final Lcom/google/android/gms/reminders/RemindersListenerService$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/RemindersListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/reminders/RemindersListenerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zzb;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zzb;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/RemindersListenerService;->onHandleIntentInternal(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/RemindersListenerService$zzb;->zzbyR:Lcom/google/android/gms/reminders/RemindersListenerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/RemindersListenerService;->stopSelf(I)V

    return-void
.end method
