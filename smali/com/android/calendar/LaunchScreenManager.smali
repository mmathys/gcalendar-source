.class public Lcom/android/calendar/LaunchScreenManager;
.super Ljava/lang/Object;
.source "LaunchScreenManager.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/calendar/AllInOneCalendarActivity;

.field private mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

.field private mShouldHideLaunchScreen:Z

.field private mShouldHoldLaunchScreen:Z

.field private mShouldLaunchTaskBundle:Z

.field private mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHideLaunchScreen:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldLaunchTaskBundle:Z

    .line 63
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager;->mActivity:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/LaunchScreenManager;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/LaunchScreenManager;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHideLaunchScreen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/LaunchScreenManager;)Lcom/android/calendar/AllInOneCalendarActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mActivity:Lcom/android/calendar/AllInOneCalendarActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/LaunchScreenManager;)Lcom/android/calendar/timely/TaskBundleFragment;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/LaunchScreenManager;Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/TaskBundleFragment;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager;->mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;

    return-object p1
.end method


# virtual methods
.method createLaunchScreenDialog(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;-><init>(Lcom/android/calendar/LaunchScreenManager;Landroid/content/Context;)V

    return-object v0
.end method

.method hideLaunchScreen()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->dismiss()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldLaunchTaskBundle:Z

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldLaunchTaskBundle:Z

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/calendar/LaunchScreenManager$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/LaunchScreenManager$3;-><init>(Lcom/android/calendar/LaunchScreenManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_1
    return-void
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventsAndTasksReady()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHideLaunchScreen:Z

    .line 158
    iget-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/LaunchScreenManager;->hideLaunchScreen()V

    .line 161
    :cond_0
    return-void
.end method

.method setLaunchScreenTimeout(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 99
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z

    if-eqz v0, :cond_2

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/LaunchScreenManager$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/LaunchScreenManager$1;-><init>(Lcom/android/calendar/LaunchScreenManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    .line 121
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/LaunchScreenManager$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/LaunchScreenManager$2;-><init>(Lcom/android/calendar/LaunchScreenManager;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method setTaskBundleFragment(Lcom/android/calendar/timely/TaskBundleFragment;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldLaunchTaskBundle:Z

    .line 90
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager;->mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;

    .line 91
    return-void
.end method

.method showLaunchScreen(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean p1, p0, Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z

    .line 76
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mActivity:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {p0, v0}, Lcom/android/calendar/LaunchScreenManager;->createLaunchScreenDialog(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    .line 77
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager;->mLaunchScreenDialog:Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager$LaunchScreenDialog;->show()V

    goto :goto_0
.end method
