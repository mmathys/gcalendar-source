.class Lcom/android/calendar/event/EventInfoFragment$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onFinalLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2850
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$25;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$25;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$25;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2854
    return-void
.end method
