.class Lcom/android/calendar/event/edit/EditDetailsFragment$2;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 247
    sub-int v0, p9, p7

    .line 248
    sub-int v1, p5, p3

    .line 249
    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->postUpdateAuxiliaryViewLayoutParams()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$200(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->postUpdateAuxiliaryViewLayoutParams()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$200(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    goto :goto_0
.end method
