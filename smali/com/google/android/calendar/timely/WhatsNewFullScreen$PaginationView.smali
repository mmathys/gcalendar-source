.class Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;
.super Landroid/view/View;
.source "WhatsNewFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaginationView"
.end annotation


# instance fields
.field private mCurrentPage:I

.field private final mDotColor:I

.field private final mDotMargin:I

.field private final mDotRadius:I

.field private mDots:[Landroid/graphics/drawable/ShapeDrawable;

.field private mFadeValue:F

.field private mLastPage:I

.field private final mSelectedDotAlpha:I

.field private final mUnselectedDotAlpha:I

.field final synthetic this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    .line 639
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 630
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mSelectedDotAlpha:I

    .line 631
    const/16 v0, 0x33

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mUnselectedDotAlpha:I

    .line 641
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 642
    sget v1, Lcom/android/calendar/R$dimen;->oobe_pagination_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    .line 643
    sget v1, Lcom/android/calendar/R$dimen;->oobe_pagination_dot_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotMargin:I

    .line 645
    sget v1, Lcom/android/calendar/R$color;->oobe_dot_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotColor:I

    .line 648
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mLastPage:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mCurrentPage:I

    .line 650
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F

    .line 654
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$1;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 671
    return-void
.end method

.method static synthetic access$700(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;)Z
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->initializeDrawables()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;F)F
    .locals 0

    .prologue
    .line 625
    iput p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F

    return p1
.end method

.method private initializeDrawables()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->getWidth()I

    move-result v0

    .line 697
    if-nez v0, :cond_0

    move v0, v1

    .line 735
    :goto_0
    return v0

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->getHeight()I

    move-result v2

    .line 702
    div-int/lit8 v2, v2, 0x2

    .line 704
    iget-object v3, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
    invoke-static {v3}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$800(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCount()I

    move-result v3

    .line 705
    new-array v4, v3, [Landroid/graphics/drawable/ShapeDrawable;

    iput-object v4, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDots:[Landroid/graphics/drawable/ShapeDrawable;

    .line 711
    div-int/lit8 v0, v0, 0x2

    .line 713
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    .line 714
    iget v4, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotMargin:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 715
    iget v4, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    sub-int/2addr v0, v4

    .line 718
    :cond_1
    add-int/lit8 v4, v3, -0x1

    div-int/lit8 v4, v4, 0x2

    .line 719
    iget v5, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotMargin:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 721
    :goto_1
    if-ge v1, v3, :cond_2

    .line 722
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 725
    iget v5, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotMargin:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    .line 726
    iget v6, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    sub-int v6, v5, v6

    iget v7, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    sub-int v7, v2, v7

    iget v8, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotRadius:I

    add-int/2addr v8, v2

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 732
    iget-object v5, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDots:[Landroid/graphics/drawable/ShapeDrawable;

    aput-object v4, v5, v1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 735
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x434c0000    # 204.0f

    .line 740
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDots:[Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_1

    .line 765
    :cond_0
    return-void

    .line 746
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDots:[Landroid/graphics/drawable/ShapeDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDots:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v2, v1, v0

    .line 750
    iget v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mLastPage:I

    if-ne v0, v1, :cond_2

    .line 751
    iget v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    .line 760
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mDotColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 763
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_2
    iget v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mCurrentPage:I

    if-ne v0, v1, :cond_3

    .line 754
    iget v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x33

    goto :goto_1

    .line 757
    :cond_3
    const/16 v1, 0x33

    goto :goto_1
.end method

.method public setCurrentPage(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 674
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->clearAnimation()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->this$0:Lcom/google/android/calendar/timely/WhatsNewFullScreen;

    # getter for: Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
    invoke-static {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->access$800(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 678
    :cond_0
    iget v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mCurrentPage:I

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mLastPage:I

    .line 679
    iput p1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mCurrentPage:I

    .line 681
    iget v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->mFadeValue:F

    sub-float v0, v3, v0

    .line 682
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 683
    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView$2;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 692
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    return-void
.end method
