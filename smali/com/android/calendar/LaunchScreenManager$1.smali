.class Lcom/android/calendar/LaunchScreenManager$1;
.super Ljava/lang/Object;
.source "LaunchScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/LaunchScreenManager;->setLaunchScreenTimeout(Z)V
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
    .line 105
    iput-object p1, p0, Lcom/android/calendar/LaunchScreenManager$1;->this$0:Lcom/android/calendar/LaunchScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$1;->this$0:Lcom/android/calendar/LaunchScreenManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/LaunchScreenManager;->mShouldHoldLaunchScreen:Z
    invoke-static {v0, v1}, Lcom/android/calendar/LaunchScreenManager;->access$002(Lcom/android/calendar/LaunchScreenManager;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$1;->this$0:Lcom/android/calendar/LaunchScreenManager;

    # getter for: Lcom/android/calendar/LaunchScreenManager;->mShouldHideLaunchScreen:Z
    invoke-static {v0}, Lcom/android/calendar/LaunchScreenManager;->access$100(Lcom/android/calendar/LaunchScreenManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/calendar/LaunchScreenManager$1;->this$0:Lcom/android/calendar/LaunchScreenManager;

    invoke-virtual {v0}, Lcom/android/calendar/LaunchScreenManager;->hideLaunchScreen()V

    .line 112
    :cond_0
    return-void
.end method
