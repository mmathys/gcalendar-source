.class Lcom/android/calendar/groove/CreateGrooveActivity$3$1;
.super Ljava/lang/Object;
.source "CreateGrooveActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CreateGrooveActivity$3;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity$3;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 6

    .prologue
    .line 387
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    check-cast p1, Lcom/google/android/calendar/api/HabitClient$CreateResult;

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitClient$CreateResult;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    .line 390
    iget-object v0, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    .line 391
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v1, v1, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-virtual {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->async_scheduling_offline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/calendar/groove/CreateGrooveActivity;->finishWithMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$500(Lcom/android/calendar/groove/CreateGrooveActivity;Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v3, v3, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    new-instance v4, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;

    invoke-direct {v4, p0}, Lcom/android/calendar/groove/CreateGrooveActivity$3$1$1;-><init>(Lcom/android/calendar/groove/CreateGrooveActivity$3$1;)V

    iget-object v5, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v5, v5, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    .line 406
    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v5}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$200(Lcom/android/calendar/groove/CreateGrooveActivity;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v5

    .line 396
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/calendar/groove/GrooveSyncTracker;->requestGrooveCreationSyncIfNecessary(Landroid/content/Context;Lcom/android/calendar/groove/GrooveSyncTracker$Listener;Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 407
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v0, v0, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$700(Lcom/android/calendar/groove/CreateGrooveActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/groove/CreateGrooveActivity$3$1;->this$1:Lcom/android/calendar/groove/CreateGrooveActivity$3;

    iget-object v3, v3, Lcom/android/calendar/groove/CreateGrooveActivity$3;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->forceFinishTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$600(Lcom/android/calendar/groove/CreateGrooveActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 411
    iget-object v4, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarId(J)V

    goto :goto_0
.end method
