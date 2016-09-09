.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WhatsNewFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;->crossfadeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

.field final synthetic val$sameTop:Z


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;Z)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    iput-boolean p2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->val$sameTop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 259
    iget-boolean v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->val$sameTop:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$300(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$300(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->custom_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$400(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # invokes: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->focusPagerForAccessibility()V
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$500(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    .line 271
    return-void
.end method
