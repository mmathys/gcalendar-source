.class Lcom/android/calendar/AllInOneCalendarActivity$5;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onCreate(Landroid/os/Bundle;)V
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

.field final synthetic val$configureSpeedDial:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    iput-object p3, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->val$configureSpeedDial:Ljava/lang/Runnable;

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
    .line 510
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1200(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOnDataReadyListener:Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1202(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;

    .line 512
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->val$calendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$5;->val$configureSpeedDial:Ljava/lang/Runnable;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->updateCalendarConfiguration(Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1300(Lcom/android/calendar/AllInOneCalendarActivity;Lcom/android/calendar/timely/data/CalendarsCache;Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method
