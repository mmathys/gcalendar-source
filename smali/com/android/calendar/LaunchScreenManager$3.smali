.class Lcom/android/calendar/LaunchScreenManager$3;
.super Ljava/lang/Object;
.source "LaunchScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/LaunchScreenManager;->hideLaunchScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/LaunchScreenManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/LaunchScreenManager;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager$3;->this$0:Lcom/android/calendar/LaunchScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$3;->this$0:Lcom/android/calendar/LaunchScreenManager;

    # getter for: Lcom/android/calendar/LaunchScreenManager;->mActivity:Lcom/android/calendar/AllInOneCalendarActivity;
    invoke-static {v0}, Lcom/android/calendar/LaunchScreenManager;->access$200(Lcom/android/calendar/LaunchScreenManager;)Lcom/android/calendar/AllInOneCalendarActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$3;->this$0:Lcom/android/calendar/LaunchScreenManager;

    # getter for: Lcom/android/calendar/LaunchScreenManager;->mActivity:Lcom/android/calendar/AllInOneCalendarActivity;
    invoke-static {v0}, Lcom/android/calendar/LaunchScreenManager;->access$200(Lcom/android/calendar/LaunchScreenManager;)Lcom/android/calendar/AllInOneCalendarActivity;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/LaunchScreenManager$3;->this$0:Lcom/android/calendar/LaunchScreenManager;

    # getter for: Lcom/android/calendar/LaunchScreenManager;->mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;
    invoke-static {v2}, Lcom/android/calendar/LaunchScreenManager;->access$300(Lcom/android/calendar/LaunchScreenManager;)Lcom/android/calendar/timely/TaskBundleFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/AllInOneCalendarActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 149
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$3;->this$0:Lcom/android/calendar/LaunchScreenManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/LaunchScreenManager;->mTaskBundleFragment:Lcom/android/calendar/timely/TaskBundleFragment;
    invoke-static {v0, v1}, Lcom/android/calendar/LaunchScreenManager;->access$302(Lcom/android/calendar/LaunchScreenManager;Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/TaskBundleFragment;

    goto :goto_0
.end method
