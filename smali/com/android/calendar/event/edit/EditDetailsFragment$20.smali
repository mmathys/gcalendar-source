.class Lcom/android/calendar/event/edit/EditDetailsFragment$20;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$visibilityChangeCompleteHandler:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$20;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$20;->val$visibilityChangeCompleteHandler:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$20;->val$visibilityChangeCompleteHandler:Landroid/animation/AnimatorListenerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1791
    return-void
.end method
