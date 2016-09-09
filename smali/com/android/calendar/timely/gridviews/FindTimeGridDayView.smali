.class public Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;
.super Lcom/android/calendar/timely/gridviews/GridDayView;
.source "FindTimeGridDayView.java"

# interfaces
.implements Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mBorderRect:Landroid/graphics/RectF;

.field private final mContext:Landroid/content/Context;

.field private mIsMoreAttendeeColumn:Z

.field private mIsSuggestionView:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAttendeeShadeCornerRadius:I

.field private final mMoreAttendeeShadeLeftPadding:I

.field private final mMoreAttendeeShadePaint:Landroid/graphics/Paint;

.field private mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimezone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->AUTO_SCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/gridviews/GridDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadePaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mBorderRect:Landroid/graphics/RectF;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;-><init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 65
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->quantum_grey100:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    sget v1, Lcom/android/calendar/R$dimen;->grid_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadeLeftPadding:I

    .line 68
    sget v1, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadeCornerRadius:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsSuggestionView:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;I)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getMinuteFromPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChipCenteredY()I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->AUTO_SCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getChipCenteredY()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 266
    .line 267
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 268
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getGridCoordinates()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedScrollView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    .line 272
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 270
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private getMinuteFromPosition(I)I
    .locals 2

    .prologue
    .line 150
    const/high16 v0, 0x41c00000    # 24.0f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 151
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 152
    return v0
.end method


# virtual methods
.method public autoScroll(Z)V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;-><init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->post(Ljava/lang/Runnable;)Z

    .line 258
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreateCustomUserSuggestionChanged(Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsMoreAttendeeColumn:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mJulianDay:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdate(Ljava/util/List;ILcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsMoreAttendeeColumn:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadeLeftPadding:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 281
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadeCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadeCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mMoreAttendeeShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/timely/gridviews/GridDayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 285
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsSuggestionView:Z

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 222
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/calendar/timely/TimelineSuggestion;ILjava/util/TimeZone;)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsSuggestionView:Z

    .line 136
    iput-object p3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimezone:Ljava/util/TimeZone;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdate(Ljava/util/List;ILcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onUpdate(Ljava/util/List;ILcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;I",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 80
    iput-boolean v5, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsMoreAttendeeColumn:Z

    .line 81
    iput p2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mJulianDay:I

    .line 82
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mItems:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->clearChips()V

    .line 86
    if-eqz p1, :cond_3

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 88
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v1}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 101
    invoke-virtual {v1, v5}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 102
    invoke-virtual {v1, v5}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 103
    invoke-virtual {v1, p2}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 104
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v1, v3}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 106
    if-eq v0, p3, :cond_2

    .line 107
    invoke-virtual {v1, p4}, Lcom/android/calendar/timely/TimelyChip;->setContentDescriptionPrefix(Ljava/lang/String;)V

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/TimelyChip;->setChipAccessibilityDelegate(Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mAccountName:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, p3, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->talkback_find_time_suggestion_chip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Lcom/android/calendar/timely/TimelyChip;->setContentDescriptionPrefix(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyChip;->setContentDescriptionSuffix(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->remeasure()V

    .line 121
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->requestLayout()V

    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->invalidate()V

    .line 123
    return-void
.end method

.method public onUpdateAsMoreAttendeeColumn()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsMoreAttendeeColumn:Z

    .line 147
    return-void
.end method

.method protected remeasure()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->remeasure(ZZ)V

    .line 132
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mAccountName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mAccountType:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 228
    return-void
.end method

.method public updateCreateNewEventView()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method
