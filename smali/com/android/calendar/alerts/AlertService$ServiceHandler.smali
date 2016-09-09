.class final Lcom/android/calendar/alerts/AlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    .line 953
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 954
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v0, p1}, Lcom/android/calendar/alerts/AlertService;->processMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/alerts/AlertService;->stopSelfResult(I)Z

    .line 972
    return-void

    .line 961
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/alerts/AlertService;->stopSelfResult(I)Z

    throw v1
.end method
