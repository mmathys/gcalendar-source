.class Lcom/android/calendar/groove/GrooveSummaryView$3;
.super Ljava/lang/Object;
.source "GrooveSummaryView.java"

# interfaces
.implements Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSummaryView;->changeTheme(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSummaryView;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSummaryView;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    iput p2, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fadeOutAnimationEnd()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mContractView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$1100(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->val$color:I

    # invokes: Lcom/android/calendar/groove/GrooveSummaryView;->changeTextColorOfChildViews(Landroid/view/ViewGroup;I)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveSummaryView;->access$1200(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/view/ViewGroup;I)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$200(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mEditButtonContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$1300(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->val$color:I

    # invokes: Lcom/android/calendar/groove/GrooveSummaryView;->changeTextColorOfChildViews(Landroid/view/ViewGroup;I)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveSummaryView;->access$1200(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/view/ViewGroup;I)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mWaitingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->access$500(Lcom/android/calendar/groove/GrooveSummaryView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$3;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    return-void
.end method
