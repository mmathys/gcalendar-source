.class Lcom/android/calendar/OverlayFragment$1;
.super Ljava/lang/Object;
.source "OverlayFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/OverlayFragment;->onGlobalLayout(Landroid/view/View;Lcom/android/calendar/OverlayFragment$LayoutChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/OverlayFragment;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/calendar/OverlayFragment$1;->this$0:Lcom/android/calendar/OverlayFragment;

    iput-object p2, p0, Lcom/android/calendar/OverlayFragment$1;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$1;->val$contentView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$1;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v0}, Lcom/android/calendar/OverlayFragment;->onFinalLayoutFinished()V

    .line 731
    return-void
.end method
