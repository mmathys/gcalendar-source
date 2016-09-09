.class Lcom/android/calendar/event/EventInfoActivity$2;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoActivity;

.field final synthetic val$fragment:Lcom/android/calendar/OverlayFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/OverlayFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$2;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoActivity$2;->val$fragment:Lcom/android/calendar/OverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$2;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity$2;->val$fragment:Lcom/android/calendar/OverlayFragment;

    # invokes: Lcom/android/calendar/event/EventInfoActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->access$000(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/OverlayFragment;)V

    .line 392
    return-void
.end method
