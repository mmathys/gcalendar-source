.class Lcom/android/calendar/timely/FindTimeGridSlabPage$1;
.super Ljava/lang/Object;
.source "FindTimeGridSlabPage.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridSlabPage;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptionNumLinesUpdated(I)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$000(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage$1$1;-><init>(Lcom/android/calendar/timely/FindTimeGridSlabPage$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$000(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # invokes: Lcom/android/calendar/timely/FindTimeGridSlabPage;->computeSlabBarMinHeight(I)I
    invoke-static {v1, p1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$200(Lcom/android/calendar/timely/FindTimeGridSlabPage;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 82
    return-void
.end method
