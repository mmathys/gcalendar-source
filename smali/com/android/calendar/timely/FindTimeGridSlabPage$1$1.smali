.class Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;
.super Ljava/lang/Object;
.source "FindTimeGridSlabPage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->onDescriptionNumLinesUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridSlabPage$1;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;->this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;->this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$000(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;->this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$100(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;->this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$100(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;->this$1:Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    iget-object v1, v1, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;->onSlabBarHeightUpdated(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    .line 79
    :cond_0
    return-void
.end method
