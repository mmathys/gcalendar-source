.class Lcom/android/calendar/timely/gridviews/GridViewFrame$1;
.super Ljava/lang/Object;
.source "GridViewFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridViewFrame;->autoScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewFrame;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    .line 256
    .line 258
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    # getter for: Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->access$000(Lcom/android/calendar/timely/gridviews/GridViewFrame;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    # getter for: Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->access$000(Lcom/android/calendar/timely/gridviews/GridViewFrame;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    # invokes: Lcom/android/calendar/timely/gridviews/GridViewFrame;->getNowLinePosition()F
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->access$100(Lcom/android/calendar/timely/gridviews/GridViewFrame;)F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHourCellHeight()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v3, v1}, Lcom/android/calendar/timely/PagedScrollView;->scrollTo(II)V

    .line 285
    return-void

    :cond_0
    move v2, v3

    move v1, v4

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v6, v3

    move v5, v1

    .line 265
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 266
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 268
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getGridCoordinates()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 265
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 263
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v5

    goto :goto_1

    .line 275
    :cond_3
    if-ne v1, v4, :cond_4

    .line 276
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHourCellHeight()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_3
    move v1, v0

    .line 280
    goto :goto_0

    .line 278
    :cond_4
    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHourCellHeight()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method
