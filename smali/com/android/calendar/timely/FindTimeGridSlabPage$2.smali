.class Lcom/android/calendar/timely/FindTimeGridSlabPage$2;
.super Ljava/lang/Object;
.source "FindTimeGridSlabPage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 90
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$300(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    .line 96
    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$300(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$300(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 98
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;->this$0:Lcom/android/calendar/timely/FindTimeGridSlabPage;

    # getter for: Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->access$300(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method
