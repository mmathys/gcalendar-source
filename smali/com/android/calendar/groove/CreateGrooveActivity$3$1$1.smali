.class Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;
.super Ljava/lang/Object;
.source "CreateGrooveActivity.java"

# interfaces
.implements Lcom/android/calendar/groove/GrooveSyncTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->onResult(Lcom/google/android/gms/common/api/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/calendar/groove/CreateGrooveActivity$3$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity$3$1;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;->this$2:Lcom/android/calendar/groove/CreateGrooveActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstanceCreationSyncComplete()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;->this$2:Lcom/android/calendar/groove/CreateGrooveActivity$3$1;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$700(Lcom/android/calendar/groove/CreateGrooveActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;->this$2:Lcom/android/calendar/groove/CreateGrooveActivity$3$1;

    iget-object v1, v1, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v1, v1, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->forceFinishTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$600(Lcom/android/calendar/groove/CreateGrooveActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;->this$2:Lcom/android/calendar/groove/CreateGrooveActivity$3$1;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-virtual {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->finish()V

    .line 404
    return-void
.end method
