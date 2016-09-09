.class Lcom/android/calendar/timely/DelayedUpdateHelper$3;
.super Ljava/lang/Object;
.source "DelayedUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DelayedUpdateHelper;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DelayedUpdateHelper;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$3;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$3;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    # invokes: Lcom/android/calendar/timely/DelayedUpdateHelper;->updateIfIdleAndNeeded()V
    invoke-static {v0}, Lcom/android/calendar/timely/DelayedUpdateHelper;->access$200(Lcom/android/calendar/timely/DelayedUpdateHelper;)V

    .line 97
    return-void
.end method
