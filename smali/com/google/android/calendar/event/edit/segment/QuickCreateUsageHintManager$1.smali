.class Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$1;
.super Ljava/lang/Object;
.source "QuickCreateUsageHintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->doUpdateHints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$1;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->updateHints()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->access$100(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;)V

    .line 369
    return-void
.end method
