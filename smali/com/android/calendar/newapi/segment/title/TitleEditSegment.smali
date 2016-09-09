.class public Lcom/android/calendar/newapi/segment/title/TitleEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "TitleEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/title/TitleEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/title/TitleEditSegment$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private mRippleView:Landroid/view/View;

.field private mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget v0, Lcom/android/calendar/R$layout;->newapi_title_edit_segment:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget v0, Lcom/android/calendar/R$id;->ripple_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;

    .line 50
    sget v0, Lcom/android/calendar/R$id;->title_edit_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    new-instance v1, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$1;-><init>(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;

    return-object v0
.end method

.method private animateColor(I)V
    .locals 6

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 114
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;

    const/4 v4, 0x0

    .line 115
    invoke-static {v3, v0, v1, v4, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;-><init>(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 138
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .prologue
    .line 76
    sget v0, Lcom/android/calendar/R$id;->titlesegment_content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-object p1
.end method

.method public setColor(IZ)V
    .locals 1

    .prologue
    .line 99
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->animateColor(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setReadOnly(Z)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->setEnabled(Z)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->setTextStealthily(Ljava/lang/CharSequence;)V

    .line 88
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mTitleEditText:Lcom/android/calendar/newapi/segment/common/NinjaEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->setSelection(I)V

    .line 92
    :cond_0
    return-void
.end method
