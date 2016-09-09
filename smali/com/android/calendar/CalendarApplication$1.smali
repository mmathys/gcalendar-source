.class Lcom/android/calendar/CalendarApplication$1;
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
    .line 78
    iput-object p1, p0, Lcom/android/calendar/CalendarApplication$1;->this$0:Lcom/android/calendar/CalendarApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$1;->this$0:Lcom/android/calendar/CalendarApplication;

    # getter for: Lcom/android/calendar/CalendarApplication;->mRunningActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/calendar/CalendarApplication;->access$000(Lcom/android/calendar/CalendarApplication;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 83
    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$1;->this$0:Lcom/android/calendar/CalendarApplication;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/CalendarApplication$1;->this$0:Lcom/android/calendar/CalendarApplication;

    # getter for: Lcom/android/calendar/CalendarApplication;->mCalendarLoaderManager:Lcom/android/calendar/timely/data/CalendarLoaderManager;
    invoke-static {v0}, Lcom/android/calendar/CalendarApplication;->access$100(Lcom/android/calendar/CalendarApplication;)Lcom/android/calendar/timely/data/CalendarLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager;->stopLoaders()V

    .line 89
    invoke-static {}, Lcom/google/android/calendar/PermissionsUtil;->clearCachedPermissions()V

    .line 91
    :cond_0
    return-void
.end method
