.class Lcom/android/calendar/CalendarController$1;
.super Ljava/lang/Object;
.source "CalendarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarController;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarController;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    # getter for: Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/CalendarController;->access$100(Lcom/android/calendar/CalendarController;)Lcom/android/calendar/time/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarController$1;->this$0:Lcom/android/calendar/CalendarController;

    # getter for: Lcom/android/calendar/CalendarController;->mActivity:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/CalendarController;->access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->switchTimezone(Ljava/lang/String;)V

    .line 81
    return-void
.end method
