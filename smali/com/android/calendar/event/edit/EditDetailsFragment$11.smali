.class Lcom/android/calendar/event/edit/EditDetailsFragment$11;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

.field final synthetic val$changeRunnable:Ljava/lang/Runnable;

.field final synthetic val$segment:Lcom/android/calendar/editor/EditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$11;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$11;->val$segment:Lcom/android/calendar/editor/EditSegment;

    iput-object p3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$11;->val$changeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$11;->val$segment:Lcom/android/calendar/editor/EditSegment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$11;->val$changeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditSegment;->applyChangeAnimated(Ljava/lang/Runnable;)V

    .line 1479
    return-void
.end method
