.class Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;->onFadeOutLoadingView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;->this$0:Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 933
    return-void
.end method
