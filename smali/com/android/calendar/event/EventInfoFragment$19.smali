.class Lcom/android/calendar/event/EventInfoFragment$19;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$analyticsAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$19;->val$analyticsAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 2409
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    .line 2410
    invoke-virtual {v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$19;->val$analyticsAction:Ljava/lang/String;

    .line 2409
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$4002(Lcom/android/calendar/event/EventInfoFragment;I)I

    .line 2414
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$19;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mCheckedResponseId:I
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$4000(Lcom/android/calendar/event/EventInfoFragment;)I

    move-result v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->onResponseChanged(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$4100(Lcom/android/calendar/event/EventInfoFragment;I)V

    .line 2415
    return-void
.end method
