.class Lcom/android/calendar/AllInOneCalendarActivity$12;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onResume()V
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
    .line 1059
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$12;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$12;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/SpeedDialLayout;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$12;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDialPulseId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2800(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/SpeedDialLayout;->restoreExpanded(Ljava/lang/Integer;)V

    .line 1066
    :cond_0
    return-void
.end method
