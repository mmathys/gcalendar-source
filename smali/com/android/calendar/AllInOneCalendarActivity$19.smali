.class Lcom/android/calendar/AllInOneCalendarActivity$19;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->updateCalendarConfiguration(Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;)V
    .locals 0

    .prologue
    .line 2709
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 2713
    invoke-virtual {v1, v2}, Lcom/android/calendar/task/BaseTaskDataFactory;->areCreationOfTasksSupported(Landroid/content/Context;)Z

    move-result v1

    .line 2712
    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTaskCreationSupported:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$702(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 2714
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$19;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->checkForSpeedDialAccounts(Lcom/android/calendar/timely/data/CalendarsCache;)Z
    invoke-static {v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3600(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;)Z

    move-result v1

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$902(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 2715
    return-void
.end method
