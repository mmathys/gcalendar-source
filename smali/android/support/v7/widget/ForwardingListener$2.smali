.class Landroid/support/v7/widget/ForwardingListener$2;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ForwardingListener;->addDetachListenerBase(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsAttached:Z

.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    # getter for: Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$100(Landroid/support/v7/widget/ForwardingListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 103
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    # getter for: Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/ForwardingListener;->access$100(Landroid/support/v7/widget/ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 104
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    # invokes: Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V
    invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$000(Landroid/support/v7/widget/ForwardingListener;)V

    .line 107
    :cond_0
    return-void
.end method
