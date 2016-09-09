.class Lcom/android/calendar/timely/BottomSheet$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/BottomSheet;->showDelayed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/BottomSheet;

.field final synthetic val$bottomUp:Landroid/view/animation/Animation;

.field final synthetic val$fadeIn:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/BottomSheet;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    iput-object p2, p0, Lcom/android/calendar/timely/BottomSheet$1;->val$bottomUp:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/calendar/timely/BottomSheet$1;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BottomSheet;->onShow()V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BottomSheet;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    # getter for: Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/BottomSheet;->access$000(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet$1;->val$bottomUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->val$fadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    # getter for: Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/BottomSheet;->access$100(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet$1;->val$fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet$1;->this$0:Lcom/android/calendar/timely/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/timely/BottomSheet;->mRunnable:Ljava/lang/Runnable;

    .line 132
    return-void
.end method
