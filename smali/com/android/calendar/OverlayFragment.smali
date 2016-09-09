.class public abstract Lcom/android/calendar/OverlayFragment;
.super Landroid/app/DialogFragment;
.source "OverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/OverlayFragment$PreDrawListener;,
        Lcom/android/calendar/OverlayFragment$LayoutChangeListener;,
        Lcom/android/calendar/OverlayFragment$OverlayBackground;,
        Lcom/android/calendar/OverlayFragment$ShadowTouchListener;,
        Lcom/android/calendar/OverlayFragment$OverlayDialog;,
        Lcom/android/calendar/OverlayFragment$OverlaySetting;,
        Lcom/android/calendar/OverlayFragment$OverlayListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mMinimumGutter:I

.field protected mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

.field protected mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

.field protected mShadowPaddingBottom:I

.field protected mShadowPaddingHorizontal:I

.field protected mShadowPaddingTop:I

.field private sIsTabletConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/calendar/OverlayFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_0

    .line 773
    new-instance v0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V

    .line 774
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected adjustMarginForShadow(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 527
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 528
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 529
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 530
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 532
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 533
    if-eqz p3, :cond_2

    .line 534
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 535
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 536
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 543
    :goto_0
    if-eq v3, v1, :cond_0

    .line 544
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 545
    sget-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestLayout for margin"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 549
    :cond_0
    return-void

    .line 540
    :cond_1
    if-eqz p2, :cond_2

    .line 541
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v4, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingTop:I

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public adjustViewLayout(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v3

    .line 556
    if-nez v3, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    if-eqz v0, :cond_0

    .line 565
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x7

    or-int v4, p1, v1

    .line 567
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v4, v1, :cond_2

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq p2, v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 568
    :goto_1
    if-eqz v1, :cond_0

    .line 569
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 570
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 571
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    sget-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestLayout for view layout"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 567
    goto :goto_1
.end method

.method public adjustWindowSize(Landroid/view/Window;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 581
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 582
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/calendar/OverlayFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 589
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 591
    return-void

    .line 587
    :cond_0
    sget v1, Lcom/android/calendar/R$fraction;->card_background_dim_amount:I

    invoke-virtual {p2, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0
.end method

.method protected abstract getDialogTheme()I
.end method

.method protected getFinishOverlayTouchProvider()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method protected getOverlayContentFrame(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 651
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 652
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 653
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 656
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 657
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 658
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 660
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 661
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 662
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 664
    :cond_0
    return-void
.end method

.method protected getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method protected getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWindowHeight([I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 598
    const/4 v0, -0x2

    aput v0, p1, v1

    .line 599
    return v1
.end method

.method protected getWindowWidth(Landroid/view/Window;)I
    .locals 6

    .prologue
    .line 627
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 628
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 630
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 631
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 633
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 635
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 636
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 638
    iget v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingHorizontal:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingHorizontal:I

    add-int/2addr v0, v2

    .line 639
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 638
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public isFullScreen(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method

.method public isTabletConfig()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/calendar/OverlayFragment;->sIsTabletConfig:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    invoke-virtual {p0, v0}, Lcom/android/calendar/OverlayFragment;->onOverlaySettingCreated(Lcom/android/calendar/OverlayFragment$OverlaySetting;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 408
    instance-of v0, p1, Lcom/android/calendar/OverlayFragment$OverlaySetting;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 409
    check-cast v0, Lcom/android/calendar/OverlayFragment$OverlaySetting;

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    .line 412
    :cond_0
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/OverlayFragment;->sIsTabletConfig:Z

    .line 413
    return-void
.end method

.method protected abstract onBackgroundChanged(Lcom/android/calendar/OverlayFragment$OverlayBackground;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 491
    sget-object v1, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->getBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 492
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 493
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingHorizontal:I

    .line 495
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingTop:I

    .line 496
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingBottom:I

    .line 500
    :goto_0
    sget v1, Lcom/android/calendar/R$dimen;->card_float_tall_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/OverlayFragment;->mMinimumGutter:I

    .line 501
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingBottom:I

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingTop:I

    iput v1, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingHorizontal:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Lcom/android/calendar/OverlayFragment$OverlayDialog;

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method protected abstract onDialogBackPressed()V
.end method

.method protected onFinalLayoutFinished()V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method public onGlobalLayout(Landroid/view/View;Lcom/android/calendar/OverlayFragment$LayoutChangeListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v1

    .line 671
    if-nez v1, :cond_1

    .line 672
    invoke-virtual {p2}, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->remove()V

    .line 673
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->onFinalLayoutFinished()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 681
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 682
    iget-object v4, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    invoke-interface {v4}, Lcom/android/calendar/OverlayFragment$OverlaySetting;->getOverlaySettingWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 685
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 687
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 688
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 689
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 691
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 692
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 693
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 696
    :cond_2
    if-le v0, v2, :cond_3

    .line 697
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v2

    sub-int/2addr v1, v5

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 702
    :cond_3
    iget v1, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    .line 706
    if-gt v2, v0, :cond_4

    div-int/lit8 v0, v1, 0x2

    iget v1, p0, Lcom/android/calendar/OverlayFragment;->mMinimumGutter:I

    iget v2, p0, Lcom/android/calendar/OverlayFragment;->mShadowPaddingBottom:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_4

    .line 711
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    if-eq v1, v0, :cond_5

    .line 717
    invoke-virtual {v0, p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 719
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 720
    invoke-virtual {p2}, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->remove()V

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_0

    .line 725
    new-instance v1, Lcom/android/calendar/OverlayFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/OverlayFragment$1;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0

    .line 713
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    goto :goto_1

    .line 736
    :cond_5
    invoke-virtual {p2}, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->remove()V

    .line 737
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->onFinalLayoutFinished()V

    goto/16 :goto_0
.end method

.method public onOverlaySettingCreated(Lcom/android/calendar/OverlayFragment$OverlaySetting;)V
    .locals 2

    .prologue
    .line 763
    invoke-interface {p1}, Lcom/android/calendar/OverlayFragment$OverlaySetting;->getOverlaySettingWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/OverlayFragment;->adjustWindowSize(Landroid/view/Window;Landroid/content/res/Resources;)V

    .line 764
    return-void
.end method

.method public onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 467
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    new-instance v1, Lcom/android/calendar/OverlayFragment$ShadowTouchListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/OverlayFragment$ShadowTouchListener;-><init>(Lcom/android/calendar/OverlayFragment;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getFinishOverlayTouchProvider()Z

    move-result v2

    .line 468
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/OverlayFragment$OverlaySetting;->initOverlaySetting(Landroid/view/GestureDetector$OnGestureListener;Z)V

    .line 471
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    invoke-interface {v0}, Lcom/android/calendar/OverlayFragment$OverlaySetting;->resetOverlaySetting()V

    .line 478
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 479
    return-void
.end method

.method protected abstract onTouchOutside()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 419
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 420
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 430
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/OverlayFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment;->getOverlayView()Landroid/view/View;

    move-result-object v1

    .line 434
    if-nez v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 439
    if-eqz v0, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    invoke-interface {v2}, Lcom/android/calendar/OverlayFragment$OverlaySetting;->getOverlaySettingWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/OverlayFragment;->getWindowWidth(Landroid/view/Window;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 444
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v5, v2, v4

    .line 445
    invoke-virtual {p0, v2}, Lcom/android/calendar/OverlayFragment;->getWindowHeight([I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    aget v2, v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 450
    :goto_1
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 451
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    sget-object v0, Lcom/android/calendar/OverlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestLayout for view layout"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 448
    :cond_2
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1
.end method
