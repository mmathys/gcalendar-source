.class Lcom/android/calendar/AllInOneCalendarActivity$2;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$302(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->invalidateOptionsMenu()V

    .line 374
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$400(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$500(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$2;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$300(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 375
    return-void
.end method
