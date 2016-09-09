.class Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskSuggestEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

.field final synthetic val$localChanges:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;->val$localChanges:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$5;->val$localChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 509
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method
