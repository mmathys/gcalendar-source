.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickCreateEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$localChanges:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 936
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;->val$localChanges:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$8;->val$localChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 940
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 942
    :cond_0
    return-void
.end method
