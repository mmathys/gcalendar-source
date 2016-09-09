.class Lcom/android/calendar/CalendarApplication$2;
.super Ljava/lang/Object;
.source "CalendarApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarApplication;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarApplication;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/CalendarApplication$2;->this$0:Lcom/android/calendar/CalendarApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$2;->this$0:Lcom/android/calendar/CalendarApplication;

    # getter for: Lcom/android/calendar/CalendarApplication;->mAliveActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/calendar/CalendarApplication;->access$200(Lcom/android/calendar/CalendarApplication;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$2;->this$0:Lcom/android/calendar/CalendarApplication;

    # getter for: Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;
    invoke-static {v0}, Lcom/android/calendar/CalendarApplication;->access$100(Lcom/android/calendar/CalendarApplication;)Lcom/android/calendar/timely/data/CalendarLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager;->destroyLoaders()V

    .line 103
    :cond_0
    return-void
.end method
