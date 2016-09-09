.class public Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field final synthetic this$0:Lcom/android/datetimepicker/date/DayPickerView;


# direct methods
.method protected constructor <init>(Lcom/android/datetimepicker/date/DayPickerView;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/android/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    iput p2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    .line 310
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget-object v0, v0, Lcom/android/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xfa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v3, v2, Lcom/android/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 316
    const-string v2, "MonthFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string v2, "MonthFragment"

    iget v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iget-object v4, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v4, v4, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x34

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "new scroll state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " old state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v2, v2, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v2, v2, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eq v2, v0, :cond_6

    .line 324
    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v3, v2, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 326
    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v1

    .line 327
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gtz v4, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 330
    :cond_1
    if-nez v2, :cond_3

    .line 350
    :cond_2
    :goto_1
    return-void

    .line 334
    :cond_3
    iget-object v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 335
    iget-object v4, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/date/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    .line 336
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/DayPickerView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_4

    .line 337
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 339
    iget-object v3, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 340
    if-eqz v0, :cond_2

    sget v0, Lcom/android/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    if-ge v1, v0, :cond_2

    .line 341
    if-le v2, v3, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v1, v7}, Lcom/android/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 336
    goto :goto_2

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v2, v7}, Lcom/android/datetimepicker/date/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->mNewState:I

    iput v1, v0, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    goto :goto_1
.end method
