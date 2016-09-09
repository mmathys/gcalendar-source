.class Lcom/android/calendar/timely/DelayedUpdateHelper$2;
.super Ljava/lang/Object;
.source "DelayedUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DelayedUpdateHelper;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

.field final synthetic val$updateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DelayedUpdateHelper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$2;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    iput-object p2, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$2;->val$updateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$2;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    iget-object v1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$2;->val$updateRunnable:Ljava/lang/Runnable;

    # setter for: Lcom/android/calendar/timely/DelayedUpdateHelper;->mDelayedUpdate:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/calendar/timely/DelayedUpdateHelper;->access$102(Lcom/android/calendar/timely/DelayedUpdateHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$2;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    # invokes: Lcom/android/calendar/timely/DelayedUpdateHelper;->updateIfIdleAndNeeded()V
    invoke-static {v0}, Lcom/android/calendar/timely/DelayedUpdateHelper;->access$200(Lcom/android/calendar/timely/DelayedUpdateHelper;)V

    .line 54
    return-void
.end method
