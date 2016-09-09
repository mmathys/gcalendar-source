.class final Lcom/google/android/calendar/api/FuturePendingResult$1;
.super Ljava/lang/Object;
.source "FuturePendingResult.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/FuturePendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 29
    # getter for: Lcom/google/android/calendar/api/FuturePendingResult;->FOREGROUND_HANDLER:Landroid/os/Handler;
    invoke-static {}, Lcom/google/android/calendar/api/FuturePendingResult;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method
