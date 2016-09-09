.class Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;
.super Landroid/os/AsyncTask;
.source "GrooveEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrooveSaveAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

.field final synthetic this$0:Lcom/android/calendar/groove/GrooveEditManager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 556
    iput-object p2, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    .line 557
    return-void
.end method

.method private getNewInstanceDuration()J
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2400(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->access$2500(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    sub-long/2addr v0, v2

    .line 646
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 551
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$300(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarId(J)V

    .line 563
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$400(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStartTimeChanges()Z

    move-result v1

    .line 567
    if-eqz v1, :cond_0

    .line 568
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->access$500(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 569
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 570
    const-string v4, "dtstart"

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v5}, Lcom/android/calendar/groove/GrooveEditManager;->access$600(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v4}, Lcom/android/calendar/groove/GrooveEditManager;->access$700(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->getNewInstanceDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 572
    const-string v6, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    invoke-virtual {v0, v2, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 574
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mTimelineGroove:Lcom/android/calendar/groove/TimelineGroove;
    invoke-static {v3}, Lcom/android/calendar/groove/GrooveEditManager;->access$900(Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/groove/TimelineGroove;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/calendar/groove/GrooveEditManager;->access$800(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/groove/TimelineGroove;->dismissNotification(Landroid/content/Context;)V

    .line 575
    if-lez v0, :cond_0

    .line 576
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/GrooveEditManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Updated habit instance time"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 577
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1200(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9, v1}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveFeedbackMessage(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    const-string v2, "HabitModifications should not be null."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v2

    .line 589
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveUtils;->hasContractChanges(Lcom/google/android/calendar/api/HabitModifications;)Z

    move-result v3

    .line 591
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->saveModifications(Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V
    invoke-static {v0, v4}, Lcom/android/calendar/groove/GrooveEditManager;->access$1300(Lcom/android/calendar/groove/GrooveEditManager;Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;)V

    .line 594
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v4, v4, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, v4}, Lcom/google/android/calendar/api/HabitClient;->update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$GenericResult;

    .line 596
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$GenericResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/GrooveEditManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error updating habit.  Exiting save."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 598
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    .line 599
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1400(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    .line 598
    invoke-static {v0, v3, v1}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveFeedbackMessage(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1500(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 607
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasStartTimeChanges()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    iget-object v0, v0, Lcom/android/calendar/groove/GrooveEditManager;->mMods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1700(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    .line 610
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/calendar/groove/GrooveEditManager;->access$1600(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v4

    .line 609
    invoke-static {v4, v2}, Lcom/android/calendar/alerts/HabitsIntentService;->createRefreshNotificationsIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 611
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->mEventDiff:Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->hasRemindersChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->getCurrentReminderMinutes()Ljava/lang/Integer;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$1800(Lcom/android/calendar/groove/GrooveEditManager;)Ljava/lang/Integer;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_4

    .line 615
    iget-object v4, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v4}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 616
    iget-object v5, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/calendar/groove/GrooveEditManager;->access$2000(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    .line 617
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/calendar/groove/GrooveEditManager;->access$1900(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 618
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x1

    invoke-direct {v7, v9, v0, v8}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    .line 616
    invoke-virtual {v5, v6, v4, v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateRecentlyUsedNotification(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 622
    :cond_4
    if-eqz v3, :cond_5

    .line 624
    invoke-static {}, Lcom/android/calendar/groove/GrooveSyncTracker;->getInstance()Lcom/android/calendar/groove/GrooveSyncTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveSyncTracker;->requestGrooveOperationSyncIfNecessary(Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    .line 628
    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2100(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    .line 627
    invoke-static {v0, v3, v1}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveFeedbackMessage(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 551
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    # getter for: Lcom/android/calendar/groove/GrooveEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveEditManager;->access$2200(Lcom/android/calendar/groove/GrooveEditManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveEditManager$GrooveSaveAsyncTask;->this$0:Lcom/android/calendar/groove/GrooveEditManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/calendar/groove/GrooveEditManager;->onEventSaved(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveEditManager;->access$2300(Lcom/android/calendar/groove/GrooveEditManager;Ljava/lang/String;Z)V

    .line 637
    return-void
.end method
