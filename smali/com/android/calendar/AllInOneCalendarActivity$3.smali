.class Lcom/android/calendar/AllInOneCalendarActivity$3;
.super Landroid/database/ContentObserver;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$3;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$3;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$3;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->notifyEventsChanged(Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$3;->onChange(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$3;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/calendar/newapi/screen/ViewScreenController;->notifyContentProviderUpdateIfAvailable(Landroid/app/FragmentManager;Landroid/net/Uri;)V

    .line 404
    return-void
.end method
