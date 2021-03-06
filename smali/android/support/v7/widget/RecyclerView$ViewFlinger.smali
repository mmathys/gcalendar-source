.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4415
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4406
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4410
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4413
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4416
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4417
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4576
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4577
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4578
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 4579
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4580
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4581
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4582
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4583
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4584
    int-to-float v7, v6

    int-to-float v6, v6

    .line 4585
    invoke-direct {p0, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4588
    if-lez v4, :cond_2

    .line 4589
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4594
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4578
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4581
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4591
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4592
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 4591
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4533
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4534
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4535
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 4570
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4571
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4572
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 4538
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 4539
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 4540
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4542
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4554
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4555
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 4558
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4559
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 4545
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 4546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 4551
    :goto_0
    return-void

    .line 4548
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 4421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 4422
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 4530
    :goto_0
    return-void

    .line 4425
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 4426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4429
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4430
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 4431
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4432
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v9

    .line 4433
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 4434
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v11, v9, v0

    .line 4435
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v12, v10, v0

    .line 4436
    const/4 v3, 0x0

    .line 4437
    const/4 v1, 0x0

    .line 4438
    iput v9, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4439
    iput v10, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 4440
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4441
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 4442
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4443
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)V

    .line 4444
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4445
    if-eqz v11, :cond_1

    .line 4446
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v11, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 4447
    sub-int v2, v11, v3

    .line 4449
    :cond_1
    if-eqz v12, :cond_2

    .line 4450
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v12, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 4451
    sub-int v0, v12, v1

    .line 4453
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4454
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)V

    .line 4456
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)V

    .line 4457
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4459
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_16

    .line 4460
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4461
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 4462
    if-nez v4, :cond_14

    .line 4463
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    move v14, v2

    move v2, v1

    move v1, v14

    .line 4472
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # getter for: Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4473
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4475
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 4476
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V
    invoke-static {v4, v11, v12}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4478
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_a

    .line 4479
    :cond_5
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v4

    float-to-int v5, v4

    .line 4481
    const/4 v4, 0x0

    .line 4482
    if-eq v1, v9, :cond_1f

    .line 4483
    if-gez v1, :cond_17

    neg-int v4, v5

    :goto_2
    move v6, v4

    .line 4486
    :goto_3
    const/4 v4, 0x0

    .line 4487
    if-eq v0, v10, :cond_1e

    .line 4488
    if-gez v0, :cond_19

    neg-int v5, v5

    .line 4491
    :cond_6
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v13, 0x2

    if-eq v4, v13, :cond_7

    .line 4492
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 4494
    :cond_7
    if-nez v6, :cond_8

    if-eq v1, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    if-nez v5, :cond_9

    if-eq v0, v10, :cond_9

    .line 4495
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-nez v0, :cond_a

    .line 4496
    :cond_9
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4499
    :cond_a
    if-nez v3, :cond_b

    if-eqz v2, :cond_c

    .line 4500
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4503
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3800(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4504
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4507
    :cond_d
    if-eqz v12, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v2, v12, :cond_1a

    const/4 v0, 0x1

    move v1, v0

    .line 4509
    :goto_5
    if-eqz v11, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v3, v11, :cond_1b

    const/4 v0, 0x1

    .line 4511
    :goto_6
    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_e
    if-nez v0, :cond_f

    if-eqz v1, :cond_1c

    :cond_f
    const/4 v0, 0x1

    .line 4514
    :goto_7
    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez v0, :cond_1d

    .line 4515
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4521
    :cond_11
    :goto_8
    if-eqz v8, :cond_13

    .line 4522
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4523
    const/4 v0, 0x0

    const/4 v1, 0x0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 4525
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v0, :cond_13

    .line 4526
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 4529
    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    goto/16 :goto_0

    .line 4464
    :cond_14
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v5

    if-lt v5, v4, :cond_15

    .line 4465
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4466
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4468
    :cond_15
    sub-int v4, v11, v2

    sub-int v5, v12, v0

    # invokes: Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V
    invoke-static {v8, v4, v5}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_16
    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_1

    .line 4483
    :cond_17
    if-lez v1, :cond_18

    move v4, v5

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4488
    :cond_19
    if-gtz v0, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4507
    :cond_1a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 4509
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6

    .line 4511
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 4517
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_8

    :cond_1e
    move v5, v4

    goto/16 :goto_4

    :cond_1f
    move v6, v4

    goto/16 :goto_3
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4562
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 4563
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    .prologue
    .line 4598
    # getter for: Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$3000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 4599
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1

    .prologue
    .line 4566
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 4567
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4603
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 4606
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    # invokes: Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V
    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3900(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4607
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 4608
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4609
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 4610
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 4613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4614
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4615
    return-void
.end method
