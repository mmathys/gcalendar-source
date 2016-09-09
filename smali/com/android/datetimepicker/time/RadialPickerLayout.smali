.class public Lcom/android/datetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/android/datetimepicker/time/CircleView;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

.field private mHideAmPm:Z

.field private mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 107
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 109
    new-instance v0, Lcom/android/datetimepicker/time/CircleView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    .line 110
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v0, Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    .line 113
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v0, Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    .line 116
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    .line 118
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 121
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v0, Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 123
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 128
    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 131
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/R$color;->transparent_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 138
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 140
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/AmPmCirclesView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/datetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/datetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 280
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 278
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    .line 503
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isHourInnerCircle(I)Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePrefer30sMap()V
    .locals 7

    .prologue
    const/16 v6, 0x169

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 344
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 353
    const/16 v1, 0x8

    move v4, v0

    move v3, v0

    move v0, v1

    move v1, v2

    .line 355
    :goto_0
    if-ge v4, v6, :cond_3

    .line 357
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v5, v4

    .line 360
    if-ne v1, v0, :cond_2

    .line 361
    add-int/lit8 v1, v3, 0x6

    .line 362
    const/16 v0, 0x168

    if-ne v1, v0, :cond_0

    .line 363
    const/4 v0, 0x7

    :goto_1
    move v3, v1

    move v1, v2

    .line 355
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    :cond_0
    rem-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_1

    .line 365
    const/16 v0, 0xe

    goto :goto_1

    .line 367
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/16 v2, 0x168

    const/4 v3, 0x0

    .line 435
    if-ne p1, v0, :cond_0

    .line 478
    :goto_0
    return v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v6

    .line 441
    if-nez p3, :cond_1

    if-ne v6, v5, :cond_1

    move v0, v5

    .line 442
    :goto_1
    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result v4

    .line 449
    :goto_2
    if-nez v6, :cond_3

    .line 450
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 451
    const/16 v1, 0x1e

    .line 456
    :goto_3
    invoke-virtual {v0, v4, p2, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 457
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialSelectorView;->invalidate()V

    .line 460
    if-nez v6, :cond_6

    .line 461
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_5

    .line 462
    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    move v0, v2

    .line 474
    :goto_4
    div-int v1, v0, v1

    .line 475
    if-nez v6, :cond_7

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    if-eqz v0, :cond_7

    .line 476
    add-int/lit8 v0, v1, 0xc

    goto :goto_0

    :cond_1
    move v0, v3

    .line 441
    goto :goto_1

    .line 445
    :cond_2
    invoke-static {p1, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v4

    goto :goto_2

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 454
    const/4 v1, 0x6

    goto :goto_3

    .line 464
    :cond_4
    if-ne v4, v2, :cond_8

    if-nez p2, :cond_8

    move v0, v3

    .line 465
    goto :goto_4

    .line 467
    :cond_5
    if-nez v4, :cond_8

    move v0, v2

    .line 468
    goto :goto_4

    .line 470
    :cond_6
    if-ne v4, v2, :cond_8

    if-ne v6, v5, :cond_8

    move v0, v3

    .line 471
    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v4

    goto :goto_4
.end method

.method private setItem(II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 240
    invoke-direct {p0, v3, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 241
    rem-int/lit8 v0, p2, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 242
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 243
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialSelectorView;->invalidate()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    if-ne p1, v0, :cond_0

    .line 245
    invoke-direct {p0, v0, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 246
    mul-int/lit8 v0, p2, 0x6

    .line 247
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 248
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialSelectorView;->invalidate()V

    goto :goto_0
.end method

.method private setValueForItem(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 297
    if-nez p1, :cond_1

    .line 298
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-ne p1, v1, :cond_2

    .line 300
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    if-nez p2, :cond_3

    .line 303
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0

    .line 304
    :cond_3
    if-ne p2, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0
.end method

.method private static snapOnly30s(II)I
    .locals 4

    .prologue
    .line 400
    const/16 v2, 0x1e

    .line 401
    div-int v0, p0, v2

    mul-int/2addr v0, v2

    .line 402
    add-int v1, v0, v2

    .line 403
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v0, v1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 406
    if-ne p0, v0, :cond_0

    .line 407
    sub-int/2addr v0, v2

    goto :goto_0

    .line 411
    :cond_2
    sub-int v2, p0, v0

    sub-int v3, v1, p0

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 414
    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 385
    const/4 v0, -0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 754
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 756
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 757
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 758
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 759
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->minute:I

    .line 760
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 762
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    .line 763
    const/16 v0, 0x81

    .line 765
    :goto_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_1
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 4

    .prologue
    .line 511
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 512
    const-string v0, "RadialPickerLayout"

    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current item showing was unfortunately set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, -0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/datetimepicker/HapticFeedbackController;IIZ)V
    .locals 13

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "RadialPickerLayout"

    const-string v2, "Time has already been initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-object p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    .line 177
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 178
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    .line 181
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/datetimepicker/time/CircleView;->initialize(Landroid/content/Context;Z)V

    .line 182
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/CircleView;->invalidate()V

    .line 183
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v1, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    const/16 v1, 0xc

    move/from16 v0, p3

    if-ge v0, v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, p1, v1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;I)V

    .line 185
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 190
    const/16 v1, 0xc

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    .line 191
    const/16 v1, 0xc

    new-array v7, v1, [I

    fill-array-data v7, :array_1

    .line 192
    const/16 v1, 0xc

    new-array v8, v1, [I

    fill-array-data v8, :array_2

    .line 193
    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/String;

    .line 194
    const/16 v1, 0xc

    new-array v4, v1, [Ljava/lang/String;

    .line 195
    const/16 v1, 0xc

    new-array v9, v1, [Ljava/lang/String;

    .line 196
    const/4 v1, 0x0

    move v5, v1

    :goto_3
    const/16 v1, 0xc

    if-ge v5, v1, :cond_5

    .line 197
    if-eqz p5, :cond_4

    .line 198
    const-string v1, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v7, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    aput-object v1, v3, v5

    .line 199
    const-string v1, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v6, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 200
    const-string v1, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v8, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v5

    .line 196
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 178
    :cond_2
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    goto/16 :goto_1

    .line 184
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 198
    :cond_4
    const-string v1, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget v12, v6, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 202
    :cond_5
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    if-eqz p5, :cond_6

    .line 203
    :goto_5
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v6, 0x1

    .line 202
    invoke-virtual/range {v1 .. v6}, Lcom/android/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 204
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialTextsView;->invalidate()V

    .line 205
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v6, 0x0

    move-object v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 206
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialTextsView;->invalidate()V

    .line 209
    const/4 v1, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 210
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 211
    rem-int/lit8 v1, p3, 0xc

    mul-int/lit8 v6, v1, 0x1e

    .line 212
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v5, 0x1

    .line 213
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v7

    move-object v2, p1

    move/from16 v4, p5

    .line 212
    invoke-virtual/range {v1 .. v7}, Lcom/android/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 214
    mul-int/lit8 v6, p4, 0x6

    .line 215
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 203
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 190
    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 191
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 192
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 744
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 745
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 746
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 747
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 152
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 155
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 154
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 156
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 565
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 568
    new-array v4, v1, [Ljava/lang/Boolean;

    .line 569
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    .line 571
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 721
    :cond_1
    :goto_1
    return v1

    .line 573
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-eqz v5, :cond_1

    .line 577
    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 578
    iput v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 580
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 581
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 582
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 584
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v2, :cond_3

    .line 585
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2, v0, v3}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v2

    iput v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 589
    :goto_2
    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v2, v1, :cond_4

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 593
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 594
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/datetimepicker/time/RadialPickerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V

    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 587
    :cond_3
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 606
    invoke-direct {p0, v0, v3, v2, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 607
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-eq v0, v8, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 611
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/datetimepicker/time/RadialPickerLayout$2;

    invoke-direct {v2, p0, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 625
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v5, :cond_5

    .line 627
    const-string v0, "RadialPickerLayout"

    const-string v2, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    :cond_5
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 632
    iget v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 634
    iget-boolean v7, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    .line 642
    :cond_6
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v5, v1, :cond_8

    .line 643
    :cond_7
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, v0, v3}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v0

    .line 645
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, v8}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 647
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 648
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 653
    :cond_8
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-eq v5, v8, :cond_0

    .line 659
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 660
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 661
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    .line 662
    if-eq v0, v8, :cond_1

    .line 663
    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    .line 664
    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    if-eq v0, v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v3}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 666
    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 667
    iget-object v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v4

    invoke-interface {v3, v4, v0, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto/16 :goto_1

    .line 672
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v5, :cond_9

    .line 674
    const-string v0, "RadialPickerLayout"

    const-string v3, "Input was disabled, but received ACTION_UP."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto/16 :goto_1

    .line 679
    :cond_9
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 680
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 683
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v5, v1, :cond_c

    .line 684
    :cond_a
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, v0, v3}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, v8}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 686
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 688
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v0, v1, :cond_b

    .line 689
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 690
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    if-eq v1, v0, :cond_b

    .line 691
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    iget v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    invoke-interface {v1, v6, v3, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 692
    invoke-direct {p0, v6, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 695
    :cond_b
    iput v8, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 700
    :cond_c
    iget v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    if-eq v5, v8, :cond_e

    .line 701
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    invoke-direct {p0, v0, v3, v5, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 702
    if-eq v3, v8, :cond_e

    .line 703
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    .line 704
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v3, :cond_d

    .line 705
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    .line 706
    if-nez v3, :cond_10

    const/16 v4, 0xc

    if-ne v0, v4, :cond_10

    move v0, v2

    .line 712
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 713
    iget-object v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v4

    invoke-interface {v3, v4, v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 716
    :cond_e
    iput-boolean v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 703
    goto :goto_3

    .line 708
    :cond_10
    if-ne v3, v1, :cond_d

    const/16 v3, 0xc

    if-eq v0, v3, :cond_d

    .line 709
    add-int/lit8 v0, v0, 0xc

    goto :goto_4

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 779
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 827
    :cond_0
    :goto_0
    return v1

    .line 784
    :cond_1
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    move v3, v4

    .line 789
    :goto_1
    if-eqz v3, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v2

    .line 792
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    .line 793
    if-nez v5, :cond_3

    .line 794
    const/16 v0, 0x1e

    .line 795
    rem-int/lit8 v2, v2, 0xc

    .line 800
    :goto_2
    mul-int/2addr v2, v0

    .line 801
    invoke-static {v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 802
    div-int v3, v2, v0

    .line 805
    if-nez v5, :cond_5

    .line 806
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_4

    .line 807
    const/16 v2, 0x17

    move v0, v1

    .line 815
    :goto_3
    if-le v3, v2, :cond_6

    .line 822
    :goto_4
    invoke-direct {p0, v5, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 823
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v2, v5, v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    move v1, v4

    .line 824
    goto :goto_0

    .line 786
    :cond_2
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_9

    .line 787
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    .line 796
    :cond_3
    if-ne v5, v4, :cond_8

    .line 797
    const/4 v0, 0x6

    goto :goto_2

    .line 809
    :cond_4
    const/16 v2, 0xc

    move v0, v4

    .line 810
    goto :goto_3

    .line 813
    :cond_5
    const/16 v2, 0x37

    move v0, v1

    goto :goto_3

    .line 818
    :cond_6
    if-ge v3, v0, :cond_7

    move v0, v2

    .line 820
    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v3, v1

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 316
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 317
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 318
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 6

    .prologue
    const/16 v0, 0xff

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 523
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    .line 524
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TimePicker does not support view at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 529
    iput p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 531
    if-eqz p2, :cond_4

    if-eq p1, v2, :cond_4

    .line 532
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/ObjectAnimator;

    .line 533
    if-ne p1, v3, :cond_3

    .line 534
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    .line 536
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 537
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    .line 545
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 548
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 549
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 550
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 538
    :cond_3
    if-nez p1, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 540
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    .line 541
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 542
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_1

    .line 552
    :cond_4
    if-nez p1, :cond_5

    move v2, v0

    .line 553
    :goto_2
    if-ne p1, v3, :cond_6

    .line 554
    :goto_3
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lcom/android/datetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 555
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 556
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 557
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialSelectorView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 552
    goto :goto_2

    :cond_6
    move v0, v1

    .line 553
    goto :goto_3
.end method

.method public setOnValueSelectedListener(Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 160
    return-void
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/CircleView;->setTheme(Landroid/content/Context;Z)V

    .line 223
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setTheme(Landroid/content/Context;Z)V

    .line 224
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialTextsView;->setTheme(Landroid/content/Context;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialTextsView;->setTheme(Landroid/content/Context;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialSelectorView;->setTheme(Landroid/content/Context;Z)V

    .line 227
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialSelectorView;->setTheme(Landroid/content/Context;Z)V

    .line 228
    return-void
.end method

.method public setTime(II)V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 233
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 728
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 735
    :goto_0
    return v0

    .line 733
    :cond_0
    iput-boolean p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 734
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 735
    const/4 v0, 0x1

    goto :goto_0
.end method
