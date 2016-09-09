.class Lcom/android/calendar/timely/LoadingStateManager$1;
.super Ljava/lang/Object;
.source "LoadingStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/LoadingStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/LoadingStateManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/LoadingStateManager;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/calendar/timely/LoadingStateManager$1;->this$0:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager$1;->this$0:Lcom/android/calendar/timely/LoadingStateManager;

    # invokes: Lcom/android/calendar/timely/LoadingStateManager;->runLoadingPhase()V
    invoke-static {v0}, Lcom/android/calendar/timely/LoadingStateManager;->access$000(Lcom/android/calendar/timely/LoadingStateManager;)V

    .line 79
    return-void
.end method
