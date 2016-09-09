.class Lcom/android/calendar/event/edit/EditDetailsFragment$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineViewVisibility(ZZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

.field final synthetic val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/event/edit/EditFragmentLayout;)V
    .locals 0

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$18;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$18;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$18;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditFragmentLayout;->setAnimatedShift(F)V

    .line 1758
    return-void
.end method
