.class Lcom/android/calendar/event/EventInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mController:Lcom/android/calendar/CalendarController;

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$1;->mController:Lcom/android/calendar/CalendarController;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$1;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->notifyEventsChanged(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity$1;->onChange(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/calendar/newapi/screen/ViewScreenController;->notifyContentProviderUpdateIfAvailable(Landroid/app/FragmentManager;Landroid/net/Uri;)V

    .line 108
    return-void
.end method
