.class Lcom/android/calendar/groove/GrooveSummaryView$2;
.super Ljava/lang/Object;
.source "GrooveSummaryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSummaryView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSummaryView;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSummaryView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GrooveSummaryView$Listener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$100(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/android/calendar/utils/widgets/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setClickable(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$200(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mContractFrameView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$300(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$400(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$500(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mDivider:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$600(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mFab:Lcom/android/calendar/utils/widgets/FloatingActionButton;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$100(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/android/calendar/utils/widgets/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setIcon(I)V

    .line 117
    # setter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextIndex:I
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveSummaryView;->access$702(I)I

    .line 118
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$802(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 119
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$800(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->waitingTextUpdateTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$900(Lcom/android/calendar/groove/GrooveSummaryView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # invokes: Lcom/android/calendar/groove/GrooveSummaryView;->announceWaitingText()V
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$1000(Lcom/android/calendar/groove/GrooveSummaryView;)V

    .line 121
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$2;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveSummaryView$Listener;

    invoke-interface {v0}, Lcom/android/calendar/groove/GrooveSummaryView$Listener;->onConfirmContract()V

    .line 123
    :cond_0
    return-void
.end method
