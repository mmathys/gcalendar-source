.class public Lcom/android/calendar/timely/TimelyChip;
.super Landroid/view/View;
.source "TimelyChip.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/calendar/BirthdayManagerInterface$Callback;
.implements Lcom/android/calendar/timely/PartitionItem;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;,
        Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;,
        Lcom/android/calendar/timely/TimelyChip$ChipType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMELY_CHIP_FIND_TIME_TYPEFACE:Landroid/graphics/Typeface;

.field private static final TIMELY_CHIP_TYPEFACE:Landroid/graphics/Typeface;

.field private static sGridHourThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasContactsPermissions:Z

.field private static sIsTablet:Z

.field private static sLastPermissionCheckMs:J

.field private static sMediumSpan:Landroid/text/style/TypefaceSpan;

.field private static final sTextDir:Landroid/text/TextDirectionHeuristic;

.field private static sTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAgendaXEnd:I

.field private mAgendaXStart:I

.field private mAgendaYEnd:I

.field private mAgendaYStart:I

.field private mAssistChipHeight:I

.field private mAssistChipTextPaddingTop:I

.field private mAssistChipVerticalPaddingBottom:I

.field private mAssistChipVerticalPaddingTop:I

.field private mAssistLayout:Landroid/text/StaticLayout;

.field private mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mAssistTextRect:Landroid/graphics/Rect;

.field private mAttendeeEventTextColor:I

.field private mBoldSpan:Landroid/text/style/StyleSpan;

.field private mBorderRect:Landroid/graphics/RectF;

.field private mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

.field private mChipCornerRadius:I

.field private mChipVerticalPadding:I

.field private mChipVerticalPaddingGrids:I

.field private mChipVerticalPaddingTimeline:I

.field private mClipRecycle:Landroid/graphics/Rect;

.field private mContactPhotoActualHeight:I

.field private mContactPhotoActualWidth:I

.field private mContactPhotoDisplayHeight:I

.field private mContactPhotoDisplayWidth:I

.field private mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

.field private mContentDescriptionPrefix:Ljava/lang/String;

.field private mContentDescriptionSuffix:Ljava/lang/String;

.field private mCurrentJulianDay:I

.field private mDoubleChipHeight:I

.field private mDoubleChipVerticalPadding:I

.field private mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

.field private mEventImageHeight:I

.field private mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

.field private mEventImageWidth:I

.field private mEventTextBuilder:Landroid/text/SpannableStringBuilder;

.field private mEventTextRect:Landroid/graphics/Rect;

.field private mEventTextSizeDefault:I

.field private mEventTextSizeMonth:I

.field private mEventTextSizeScalableGrid:I

.field private mEventTextSizeTimeline:I

.field private mFocusChanged:Z

.field private mFocusedColor:I

.field private mForceCompatibilityBackgroundColorForStyledCorners:I

.field private mForceCompatibilityModeForStyledCorners:Z

.field private mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridHorizontalPadding:I

.field private mGridHourHeight:I

.field private mGridIconLeftPadding:I

.field private mGridXEnd:I

.field private mGridXStart:I

.field private mGridYEnd:I

.field private mGridYStart:I

.field private mGrooveIcon:Landroid/graphics/drawable/Drawable;

.field private mHalfChipBorderWidth:F

.field private mHasRipples:Z

.field private mIconExtraTopPaddingAssist:I

.field private mIconExtraTopPaddingGroove:I

.field private mIconExtraTopPaddingTimelineDouble:I

.field private mIconLeftPadding:I

.field private mInMultiDayContext:Z

.field private mIsInitialized:Z

.field private mIsRtl:Z

.field private mItem:Lcom/android/calendar/timely/TimelineItem;

.field private mLayout:Landroid/text/StaticLayout;

.field private mMinimumWidthRightPadding:I

.field private mMinimumWidthToShowText:I

.field private mMonthHorizontalPadding:I

.field private mMonthIconLeftPadding:I

.field private mMonthTextLeftPaddingWithIcon:I

.field private mNumTextLines:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

.field private mPassive:Z

.field private mRefreshLayout:Z

.field private mReminderIcon:Landroid/graphics/drawable/Drawable;

.field private mResources:Landroid/content/res/Resources;

.field private mRightDrawablePadding:I

.field private mShowImages:Z

.field private mShowingTime:Z

.field private mSingleChipHeight:I

.field private mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

.field private mSwipeIcon:Landroid/graphics/drawable/Drawable;

.field private mSwipeThreshold:I

.field private mTextLeftPaddingWithIcon:I

.field private mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

.field private mTextTimelineLeftPaddingWithIcon:I

.field private mTimeLocationString:Ljava/lang/String;

.field private mTimelineHorizontalPadding:I

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

.field private mTripleChipHeight:I

.field private mTripleChipVerticalPaddingBottom:I

.field private mTripleChipVerticalPaddingTop:I

.field private mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const-class v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyChip;->TAG:Ljava/lang/String;

    .line 103
    const-string v0, "Roboto-Light"

    .line 104
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyChip;->TIMELY_CHIP_TYPEFACE:Landroid/graphics/Typeface;

    .line 105
    const-string v0, "sans-serif"

    .line 106
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyChip;->TIMELY_CHIP_FIND_TIME_TYPEFACE:Landroid/graphics/Typeface;

    .line 114
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    sput-object v0, Lcom/android/calendar/timely/TimelyChip;->sTextDir:Landroid/text/TextDirectionHeuristic;

    .line 276
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 278
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 166
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 167
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 168
    iput v1, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/SpannableStringBuilder;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    .line 213
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 254
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusChanged:Z

    .line 290
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->init(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelyChip;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->launchDetailsImpl()V

    return-void
.end method

.method private addLine(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    aput-object v1, v0, p2

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1785
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1787
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1789
    :cond_1
    return-void
.end method

.method private addTextLine(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1773
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/TimelyChip;->addLine(Ljava/lang/String;I)V

    .line 1774
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    .line 1775
    return-void
.end method

.method private computeIconVerticalPaddingForNonSingleLineChip()I
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v0, v1, :cond_1

    .line 1317
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingAssist:I

    .line 1320
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingTimelineDouble:I

    goto :goto_0
.end method

.method private computeIconX(Landroid/graphics/drawable/Drawable;)I
    .locals 3

    .prologue
    .line 1327
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIconLeftPadding:I

    .line 1328
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1329
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthIconLeftPadding:I

    .line 1333
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    return v0

    .line 1330
    :cond_2
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1331
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGridIconLeftPadding:I

    goto :goto_0
.end method

.method private static convertCoordinate(IIF)I
    .locals 2

    .prologue
    .line 2253
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private convertVerticalPadding(I)I
    .locals 4

    .prologue
    .line 1569
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 1570
    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1569
    return v0
.end method

.method private drawBgColor(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1425
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getBgColor()I

    move-result v0

    .line 1426
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1430
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1435
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1437
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1438
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1439
    return-void

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private drawChipFootprint(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 1110
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isParentSupportingSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1117
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    .line 1120
    neg-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1123
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1125
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 1126
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1127
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    float-to-int v0, v0

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1132
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1135
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getFootprintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1137
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1138
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1141
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-nez v0, :cond_3

    .line 1142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1129
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1130
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1147
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1148
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getRippleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1150
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v2, v2, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleRadius:F

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    .line 1149
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1153
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawSwipeIcon(Landroid/graphics/Canvas;)V

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawMaskOverFootprint(Landroid/graphics/Canvas;)V

    .line 1159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method private drawContactPhoto(Landroid/graphics/Canvas;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1337
    sget-boolean v1, Lcom/android/calendar/timely/TimelyChip;->sHasContactsPermissions:Z

    if-nez v1, :cond_1

    .line 1338
    sget-object v1, Lcom/android/calendar/timely/TimelyChip;->TAG:Ljava/lang/String;

    const-string v2, "No contacts permission granted. Do not draw contact photo."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1368
    :cond_0
    :goto_0
    return v0

    .line 1343
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mShowImages:Z

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1352
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    .line 1353
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->showContactPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mRightDrawablePadding:I

    .line 1357
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mRightDrawablePadding:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mRightDrawablePadding:I

    iget v5, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setBounds(IIII)V

    .line 1363
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1364
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setAlpha(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1366
    const/4 v0, 0x1

    goto :goto_0

    .line 1356
    :cond_3
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mRightDrawablePadding:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayWidth:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method private drawInvitationBorder(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1443
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1445
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1446
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    .line 1447
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    sub-float/2addr v4, v5

    .line 1446
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1448
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    sub-float/2addr v0, v1

    .line 1449
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1450
    return-void
.end method

.method private drawItemAssist(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 1818
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1819
    const/4 v0, -0x1

    .line 1820
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldInvertColors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1825
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1827
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1828
    new-instance v4, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1830
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1832
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    int-to-float v1, v5

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v4, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1835
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    .line 1836
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    .line 1841
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    .line 1843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1844
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipHeight:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipVerticalPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipTextPaddingTop:I

    add-int/2addr v0, v1

    .line 1846
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1848
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1849
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1850
    return-void
.end method

.method private drawItemText(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1855
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v12, v0, Landroid/graphics/Rect;->top:I

    .line 1856
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 1858
    const-string v0, "drawItemText"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mMinimumWidthToShowText:I

    if-ge v0, v1, :cond_0

    .line 1862
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1995
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldRefreshLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 1872
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->setItemText()V

    .line 1874
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1875
    const/4 v0, -0x1

    .line 1877
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAttendeeEvent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1878
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAttendeeEventTextColor:I

    move v1, v0

    .line 1883
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_c

    .line 1884
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1888
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1890
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1891
    new-instance v4, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 1895
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1896
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-eq v0, v9, :cond_5

    .line 1897
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_5
    move v0, v9

    .line 1900
    :goto_3
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v1

    .line 1904
    if-nez v1, :cond_6

    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    move v1, v9

    .line 1909
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1910
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextDir:Landroid/text/TextDirectionHeuristic;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    if-nez v0, :cond_7

    .line 1911
    mul-int/lit8 v5, v5, 0x3

    .line 1914
    :cond_7
    if-eqz v1, :cond_8

    .line 1915
    invoke-direct {p0, v4}, Lcom/android/calendar/timely/TimelyChip;->ellipsizeText(Landroid/text/TextPaint;)V

    .line 1918
    :cond_8
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1920
    :goto_4
    new-instance v0, Landroid/text/StaticLayout;

    .line 1921
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    .line 1926
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    .line 1927
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mRefreshLayout:Z

    .line 1930
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v1

    .line 1931
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    .line 1933
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a

    if-nez v4, :cond_f

    .line 1934
    :cond_a
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 1879
    :cond_b
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldInvertColors()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1880
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 1886
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setFlags(I)V

    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 1897
    goto :goto_3

    .line 1919
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1938
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    .line 1939
    :goto_5
    if-ge v9, v4, :cond_10

    .line 1940
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    .line 1941
    if-gt v1, v3, :cond_10

    .line 1939
    add-int/lit8 v9, v9, 0x1

    move v0, v1

    goto :goto_5

    .line 1948
    :cond_10
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v1, v13, :cond_11

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    if-ge v1, v12, :cond_12

    .line 1950
    :cond_11
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 1954
    :cond_12
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1957
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1958
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1960
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 1961
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 1962
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1963
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1968
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1969
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1971
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1972
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 1975
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1979
    :goto_6
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1981
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->scaleGrooveIcon()V

    .line 1982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1983
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    if-eqz v0, :cond_16

    .line 1984
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGrooveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingGroove:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1989
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGrooveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1992
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1993
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1994
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 1977
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_6

    .line 1987
    :cond_16
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingGroove:I

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_17
    move v1, v0

    goto/16 :goto_1
.end method

.method private drawMaskOverFootprint(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->footprintMaskAlpha:I

    if-lez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v1, v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->footprintMaskAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1203
    :cond_0
    return-void
.end method

.method private drawReminderIcon(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInGridView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getScalingRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1287
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 1292
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->computeIconX(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 1294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1295
    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1296
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->scaleReminderIcon()V

    .line 1297
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1299
    return-void

    .line 1289
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->computeIconVerticalPaddingForNonSingleLineChip()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private drawSwipeIcon(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1163
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v1

    .line 1165
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v0

    if-nez v0, :cond_0

    cmpl-float v0, v1, v4

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    cmpg-float v0, v1, v4

    if-gez v0, :cond_2

    .line 1166
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1168
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 1169
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v0

    sget v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeIconIndent:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    .line 1171
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1173
    :goto_0
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1176
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeThreshold:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v1}, Lcom/android/calendar/Utils;->clamp(FFF)F

    move-result v0

    .line 1179
    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v1, v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconScaleAddend:F

    add-float/2addr v0, v1

    .line 1182
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    .line 1183
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1182
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1185
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldTintTheFootprint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1191
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1194
    :cond_2
    return-void

    .line 1172
    :cond_3
    sget v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeIconIndent:I

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2185
    if-gtz p2, :cond_0

    .line 2186
    const-string v0, ""

    .line 2198
    :goto_0
    return-object v0

    .line 2188
    :cond_0
    const-string v0, "drawTextSanitizer"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2191
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 2194
    invoke-virtual {v0, p2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2196
    :cond_1
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method private durationIsHalfHourOrLess()Z
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1558
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1559
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v2, v4, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1559
    goto :goto_0

    .line 1560
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFirstDayOfEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1561
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v2

    rsub-int v2, v2, 0x5a0

    if-le v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1562
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isLastDayOfEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1563
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v2

    if-le v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1565
    goto :goto_0
.end method

.method private ellipsizeText(Landroid/text/TextPaint;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1796
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1797
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    move v0, v1

    .line 1798
    :goto_0
    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    if-ge v0, v2, :cond_1

    .line 1801
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getIndentForIcon()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 1802
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    .line 1805
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1803
    invoke-static {v4, p1, v2, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1802
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1807
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mEllipsizeTextBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1801
    goto :goto_1

    .line 1809
    :cond_1
    return-void
.end method

.method private getBgColor()I
    .locals 1

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusedColor:I

    .line 1420
    :goto_0
    return v0

    .line 1417
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldInvertColors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    const/4 v0, -0x1

    goto :goto_0

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method private getEndX(F)I
    .locals 2

    .prologue
    .line 2265
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXEnd:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXEnd:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/timely/TimelyChip;->convertCoordinate(IIF)I

    move-result v0

    return v0
.end method

.method private getEndY(F)I
    .locals 2

    .prologue
    .line 2269
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYEnd:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYEnd:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/timely/TimelyChip;->convertCoordinate(IIF)I

    move-result v0

    return v0
.end method

.method private getFootprintColor()I
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-boolean v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->aboveThreshold:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    .line 1222
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldTintTheFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getLightDisplayColorForColor(I)I

    move-result v0

    .line 1231
    :goto_0
    return v0

    .line 1226
    :cond_0
    sget v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintRippleColor:I

    goto :goto_0

    .line 1229
    :cond_1
    sget v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintColor:I

    goto :goto_0
.end method

.method private getHorizontalPadding()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1531
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-ne v1, v0, :cond_0

    .line 1532
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthHorizontalPadding:I

    :goto_1
    return v0

    .line 1531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1533
    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGridHorizontalPadding:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineHorizontalPadding:I

    goto :goto_1
.end method

.method private getIndentForIcon()I
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-nez v0, :cond_0

    .line 2036
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextTimelineLeftPaddingWithIcon:I

    .line 2041
    :goto_0
    return v0

    .line 2038
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthTextLeftPaddingWithIcon:I

    goto :goto_0

    .line 2041
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLeftPaddingWithIcon:I

    goto :goto_0
.end method

.method private getMaxTextSizeGrid()I
    .locals 2

    .prologue
    .line 2529
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMultiDayPhoneGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2532
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private getRippleColor()I
    .locals 1

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldTintTheFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getLightDisplayColorForColor(I)I

    move-result v0

    .line 1214
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintRippleColor:I

    goto :goto_0
.end method

.method private getScalingRatio()F
    .locals 2

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInScalableTimegrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getMaxTextSizeGrid()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1267
    :goto_0
    return v0

    .line 1268
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getShortTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 893
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 894
    :goto_0
    if-nez v0, :cond_2

    .line 895
    const-string v0, ""

    .line 897
    :cond_0
    :goto_1
    return-object v0

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getStartX(F)I
    .locals 2

    .prologue
    .line 2257
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXStart:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXStart:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/timely/TimelyChip;->convertCoordinate(IIF)I

    move-result v0

    return v0
.end method

.method private getStartY(F)I
    .locals 2

    .prologue
    .line 2261
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYStart:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYStart:I

    invoke-static {v0, v1, p1}, Lcom/android/calendar/timely/TimelyChip;->convertCoordinate(IIF)I

    move-result v0

    return v0
.end method

.method private getTextSize()I
    .locals 1

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2017
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInScalableTimegrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeScalableGrid:I

    .line 2028
    :goto_0
    return v0

    .line 2020
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getMaxTextSizeGrid()I

    move-result v0

    goto :goto_0

    .line 2022
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineAgendaView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeTimeline:I

    goto :goto_0

    .line 2025
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2026
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeMonth:I

    goto :goto_0

    .line 2028
    :cond_3
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeDefault:I

    goto :goto_0
.end method

.method private getTextSizeScalableGrid()I
    .locals 3

    .prologue
    .line 2514
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2516
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sIsTablet:Z

    if-nez v0, :cond_1

    .line 2514
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2519
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2520
    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mGridHourHeight:I

    if-lt v2, v0, :cond_0

    .line 2521
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2524
    :goto_1
    return v0

    :cond_2
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private getVerticalPadding()I
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1537
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineAgendaView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingTimeline:I

    .line 1554
    :goto_0
    return v0

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->durationIsHalfHourOrLess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1541
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1545
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1550
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 1551
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    float-to-int v0, v0

    sub-int v0, v1, v0

    .line 1552
    goto :goto_0

    .line 1554
    :cond_3
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingGrids:I

    goto :goto_0
.end method

.method private hasIcon()Z
    .locals 1

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 310
    const-string v3, "TimelyChip init"

    invoke-static {v3}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->setFocusable(Z)V

    .line 312
    invoke-virtual {p0, p0}, Lcom/android/calendar/timely/TimelyChip;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    .line 315
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mBoldSpan:Landroid/text/style/StyleSpan;

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    .line 319
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sMediumSpan:Landroid/text/style/TypefaceSpan;

    if-nez v3, :cond_0

    .line 320
    new-instance v3, Lcom/android/calendar/CustomTypefaceSpan;

    const-string v4, "Roboto-Light"

    .line 321
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/calendar/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    sput-object v3, Lcom/android/calendar/timely/TimelyChip;->sMediumSpan:Landroid/text/style/TypefaceSpan;

    .line 324
    :cond_0
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    if-nez v3, :cond_1

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    .line 326
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grids_event_text_size_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grids_event_text_size_mid:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sTextSizes:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grids_event_text_size_small:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    .line 331
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grid_hour_threshold_max:I

    .line 332
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 331
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grid_hour_threshold_mid:I

    .line 334
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 333
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v3, Lcom/android/calendar/timely/TimelyChip;->sGridHourThresholds:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$dimen;->grid_hour_threshold_min:I

    .line 336
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 335
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v3

    sput-boolean v3, Lcom/android/calendar/timely/TimelyChip;->sIsTablet:Z

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->single_chip_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSingleChipHeight:I

    .line 342
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->double_chip_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipHeight:I

    .line 343
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->triple_chip_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipHeight:I

    .line 344
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->triple_chip_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipHeight:I

    .line 346
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    .line 347
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_border_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mHalfChipBorderWidth:F

    .line 349
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$color;->selection:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusedColor:I

    .line 350
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$color;->attendee_event_chip_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAttendeeEventTextColor:I

    .line 352
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->timeline_single_chip_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingTimeline:I

    .line 354
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_grid_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingGrids:I

    .line 356
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->double_chip_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipVerticalPadding:I

    .line 358
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->triple_chip_vertical_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingTop:I

    .line 360
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->triple_chip_vertical_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingBottom:I

    .line 362
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->assist_chip_vertical_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipVerticalPaddingTop:I

    .line 364
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->assist_chip_vertical_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipVerticalPaddingBottom:I

    .line 366
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->assist_text_vertical_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipTextPaddingTop:I

    .line 369
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mGridHorizontalPadding:I

    .line 371
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_timeline_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineHorizontalPadding:I

    .line 373
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->month_chip_horizontal_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthHorizontalPadding:I

    .line 376
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_text_left_padding_with_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLeftPaddingWithIcon:I

    .line 378
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_timeline_text_left_padding_with_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTextTimelineLeftPaddingWithIcon:I

    .line 380
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->month_chip_text_left_padding_with_icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthTextLeftPaddingWithIcon:I

    .line 382
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_icon_left_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mIconLeftPadding:I

    .line 383
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->month_chip_icon_left_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mMonthIconLeftPadding:I

    .line 385
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->grid_chip_icon_left_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mGridIconLeftPadding:I

    .line 387
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->timeline_chip_icon_extra_top_padding_double:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingTimelineDouble:I

    .line 389
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->assist_chip_icon_extra_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingAssist:I

    .line 391
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->groove_chip_icon_extra_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mIconExtraTopPaddingGroove:I

    .line 394
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->default_event_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeDefault:I

    .line 395
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->month_event_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeMonth:I

    .line 396
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->timeline_event_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeTimeline:I

    .line 397
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mGridHourHeight:I

    .line 399
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSizeScalableGrid()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeScalableGrid:I

    .line 401
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->event_min_width_to_display_text:I

    .line 402
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mMinimumWidthToShowText:I

    .line 403
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->event_min_width_to_right_padding:I

    .line 404
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mMinimumWidthRightPadding:I

    .line 406
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 407
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 408
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 410
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_image_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageWidth:I

    .line 411
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_image_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageHeight:I

    .line 413
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_contact_photo_actual_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoActualWidth:I

    .line 415
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_contact_photo_actual_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoActualHeight:I

    .line 417
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_contact_photo_display_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayWidth:I

    .line 419
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_contact_photo_display_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayHeight:I

    .line 422
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_right_drawable_padding:I

    .line 423
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mRightDrawablePadding:I

    .line 425
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$string;->timely_chip_time_location:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTimeLocationString:Ljava/lang/String;

    .line 427
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 428
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$dimen;->chip_swipe_threshold:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeThreshold:I

    .line 435
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_scale"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v3

    .line 436
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 438
    const v4, 0x3f99999a    # 1.2f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const v2, 0x3e99999a    # 0.3f

    .line 439
    :cond_2
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingGrids:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingGrids:I

    .line 440
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingTimeline:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPaddingTimeline:I

    .line 441
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipVerticalPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipVerticalPadding:I

    .line 442
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingTop:I

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingTop:I

    .line 443
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingBottom:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingBottom:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_3
    :goto_0
    new-array v2, v1, [I

    const v3, 0x101030e

    aput v3, v2, v0

    .line 450
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 451
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 455
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mHasRipples:Z

    .line 457
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyChipSwipeData;->initialize(Landroid/content/Context;)V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 460
    sget-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sHasContactsPermissions:Z

    if-nez v0, :cond_5

    long-to-double v4, v2

    sget-wide v6, Lcom/android/calendar/timely/TimelyChip;->sLastPermissionCheckMs:J

    long-to-double v6, v6

    const-wide v8, 0x40b3880000000000L    # 5000.0

    add-double/2addr v6, v8

    cmpl-double v0, v4, v6

    if-lez v0, :cond_5

    .line 462
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sHasContactsPermissions:Z

    .line 463
    sput-wide v2, Lcom/android/calendar/timely/TimelyChip;->sLastPermissionCheckMs:J

    .line 466
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->setFocusable(Z)V

    .line 467
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 468
    return-void

    .line 445
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initBirthdayItem(Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 3

    .prologue
    .line 761
    const-string v1, "initBirthdayItemAsync - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 763
    const-string v1, "preferences_birthdays_color"

    const v2, -0x6d1e40

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 767
    invoke-virtual {p1, v1}, Lcom/android/calendar/timely/TimelineBirthday;->setColor(I)V

    .line 768
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2, p1}, Lcom/android/calendar/BirthdayManagerInterface;->updateTitle(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 770
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v1

    .line 772
    invoke-interface {v1, v0, p1, p0}, Lcom/android/calendar/BirthdayManagerInterface;->initBirthdayItemAsync(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/BirthdayManagerInterface$Callback;)V

    .line 774
    :cond_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 775
    return-void

    .line 761
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTaskBundleItem(Lcom/android/calendar/task/TimelineTaskBundle;)V
    .locals 3

    .prologue
    .line 778
    const-string v1, "initTaskBundleItem - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->updateTitles(Landroid/content/res/Resources;)V

    .line 780
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 781
    return-void

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeSwipeDataIfNeeded()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isParentSupportingSwipe()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->supportsSwipe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1044
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/android/calendar/timely/TimelyChipSwipeData;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    .line 1047
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/calendar/timely/TimelyChip$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/TimelyChip$4;-><init>(Lcom/android/calendar/timely/TimelyChip;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 1055
    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v2

    mul-float/2addr v0, v2

    sget v2, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeThreshold:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 1057
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-boolean v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->aboveThreshold:Z

    if-eq v0, v1, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iput-boolean v1, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->aboveThreshold:Z

    .line 1059
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->triggerSwipeThresholdCrossingAnimations()V

    .line 1067
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 1054
    goto :goto_0

    .line 1055
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1062
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;->dispose()V

    .line 1064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    goto :goto_2
.end method

.method private isBirthday()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isBirthday(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private isInAgendaView()Z
    .locals 2

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInGridView()Z
    .locals 1

    .prologue
    .line 2067
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineAgendaView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInMonthView()Z
    .locals 2

    .prologue
    .line 2074
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInMultiDayPhoneGridView()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2060
    sget-boolean v1, Lcom/android/calendar/timely/TimelyChip;->sIsTablet:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInScalableTimegrid()Z
    .locals 1

    .prologue
    .line 2053
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInTimelineAgendaView()Z
    .locals 1

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInTimelineView()Z
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastDayOfEvent()Z
    .locals 2

    .prologue
    .line 2140
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mCurrentJulianDay:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchDetailsImpl()V
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2423
    :goto_0
    return-void

    .line 2420
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;

    .line 2421
    invoke-interface {v0, p0}, Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;->onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V

    .line 2422
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    goto :goto_0
.end method

.method private scaleGrooveIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1305
    sget-boolean v1, Lcom/android/calendar/timely/TimelyChip;->sIsTablet:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    invoke-static {v0}, Lcom/android/calendar/groove/TimelineGroove;->getChipIconPhoneMonthDimension(Landroid/content/res/Resources;)I

    move-result v0

    .line 1311
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGrooveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1312
    return-void

    .line 1308
    :cond_0
    invoke-static {v0}, Lcom/android/calendar/groove/TimelineGroove;->getChipIconDimension(Landroid/content/res/Resources;)I

    move-result v0

    .line 1309
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getScalingRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private scaleReminderIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1272
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getScalingRatio()F

    move-result v0

    .line 1276
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1277
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1278
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setChipType()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasAssist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/TimelineItem;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    .line 886
    :goto_1
    return-void

    .line 833
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_0

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 838
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->hasDeclinedStatus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_2

    .line 839
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    :goto_2
    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_2

    .line 840
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isBirthday()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_1

    .line 843
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 845
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    :goto_3
    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_3

    .line 848
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->showImageBackground()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 850
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_1

    .line 853
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 855
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto :goto_1

    .line 858
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 860
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 862
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFirstDayOfEvent()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isLastDayOfEvent()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 864
    :cond_9
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto/16 :goto_1

    .line 867
    :cond_a
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->SINGLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto/16 :goto_1

    .line 871
    :cond_b
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFirstDayOfEvent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 873
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto/16 :goto_1

    .line 876
    :cond_c
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->ZERO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto/16 :goto_1

    .line 881
    :cond_d
    sget-object v0, Lcom/android/calendar/timely/TimelyChip$ChipType;->DOUBLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    goto/16 :goto_1
.end method

.method private setEventImage(Lcom/android/calendar/timely/EventImageRequestKey;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 929
    const-string v1, "setEventImage - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    .line 935
    invoke-virtual {v0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->hasAlphaFeature()Z

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->hasAssist()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 936
    iput-object v6, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    if-nez v0, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 941
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasAssist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 942
    const/16 v0, 0x100

    .line 943
    :goto_1
    or-int/lit8 v0, v0, 0x4

    .line 944
    new-instance v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    invoke-direct {v2, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 949
    const v0, -0x777778

    iput v0, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 950
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    .line 951
    const v0, 0x3efae148    # 0.49f

    iput v0, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    .line 953
    new-instance v0, Lcom/android/calendar/timely/EventChipBitmapDrawable;

    .line 954
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/calendar/timely/EventChipBitmapDrawable;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/EventImageCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    .line 956
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForceCompatibilityModeForStyledCorners:Z

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    invoke-virtual {v0, v5}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->setCompatibilityMode(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForceCompatibilityModeForStyledCorners:Z

    if-eqz v0, :cond_7

    .line 961
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForceCompatibilityBackgroundColorForStyledCorners:I

    .line 959
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->setCompatibilityModeBackgroundColor(I)V

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v1}, Lcom/android/calendar/timely/EventImageRequestKey;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 964
    invoke-virtual {v2}, Lcom/android/calendar/timely/EventImageRequestKey;->getHeight()I

    move-result v2

    .line 963
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->setDecodeDimensions(II)V

    .line 967
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    iput v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 971
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v0

    if-nez v0, :cond_4

    .line 972
    invoke-virtual {p0, v5, v6}, Lcom/android/calendar/timely/TimelyChip;->setLayerType(ILandroid/graphics/Paint;)V

    .line 974
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 975
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 976
    return-void

    .line 929
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    :cond_6
    const/16 v0, 0x200

    goto :goto_1

    .line 961
    :cond_7
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getBgColor()I

    move-result v0

    goto :goto_2
.end method

.method private setItemText()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x1

    const/16 v8, 0x21

    const/4 v3, 0x0

    .line 1581
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-nez v0, :cond_0

    .line 1767
    :goto_0
    return-void

    .line 1585
    :cond_0
    iput v3, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    .line 1587
    const-string v0, "setItemText"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1589
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1590
    const-string v0, "setItemText/title"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1594
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isBirthday()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1596
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 1597
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSingleLineTitle()Ljava/lang/String;

    move-result-object v0

    .line 1616
    :goto_1
    if-eqz v0, :cond_3

    .line 1617
    const/16 v1, 0x1f3

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/TimelyChip;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1618
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    .line 1623
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    add-int/lit8 v1, v1, -0x1

    .line 1624
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1625
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldEmboldenText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mBoldSpan:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1627
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1626
    invoke-virtual {v0, v4, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1628
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v0, v0, v1

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mBoldSpan:Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1629
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1628
    invoke-virtual {v0, v4, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1631
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1632
    :cond_2
    new-instance v0, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 1633
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getIndentForIcon()I

    move-result v4

    invoke-direct {v0, v4, v3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 1634
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1635
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1634
    invoke-virtual {v4, v0, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1636
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mTextLinesBuilder:[Landroid/text/SpannableStringBuilder;

    aget-object v1, v4, v1

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1637
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1636
    invoke-virtual {v1, v0, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1640
    :cond_3
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1642
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isBirthday()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1643
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 1644
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1645
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1646
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineBirthday;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 1647
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1655
    :cond_4
    const-string v0, "setItemText/setTimeAndLocation"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1661
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineView()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1662
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1663
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 1664
    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 1665
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1667
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1668
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    .line 1724
    :cond_5
    :goto_2
    if-nez v2, :cond_7

    .line 1725
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 1726
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1727
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1728
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1730
    :cond_6
    const-string v1, "TimelyChip - drawTextSanitizer"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1731
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1732
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    rsub-int v1, v1, 0x1f4

    .line 1731
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/TimelyChip;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->forceTextAlignmentOrUseDefault(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1736
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1741
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v0, v1, :cond_a

    .line 1742
    :cond_8
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasAssist()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1743
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1744
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1745
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/TimelineItem;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1746
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2, v0}, Lcom/android/calendar/timely/TimelineItem;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    if-eqz v1, :cond_9

    .line 1748
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1749
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1750
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/android/calendar/timely/TimelyChip;->sMediumSpan:Landroid/text/style/TypefaceSpan;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    .line 1751
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1750
    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1752
    if-eqz v0, :cond_9

    .line 1753
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1756
    :cond_9
    if-eqz v0, :cond_a

    .line 1758
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1762
    :cond_a
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1765
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1766
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 1598
    :cond_b
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1599
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1600
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInTimelineView()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1602
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getSingleLineTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1604
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1670
    :cond_d
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1672
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mShowingTime:Z

    .line 1673
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1674
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1702
    :cond_e
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v4

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1703
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1704
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v0

    .line 1702
    :goto_3
    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/android/calendar/DateTimeFormatHelper;->getTimeRangeText(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1706
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v4, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-eq v1, v4, :cond_10

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1707
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimeLocationString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1708
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1707
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1709
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1711
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1712
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    move v0, v2

    :goto_4
    move v2, v0

    .line 1719
    goto/16 :goto_2

    .line 1704
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v0

    goto :goto_3

    .line 1715
    :cond_10
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1716
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1717
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->addTextLine(Ljava/lang/String;)V

    move v0, v3

    goto :goto_4

    .line 1720
    :cond_11
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyChip;->mShowingTime:Z

    move v2, v3

    goto/16 :goto_2
.end method

.method private setPassiveForAccessibility(Z)V
    .locals 1

    .prologue
    .line 2381
    if-eqz p1, :cond_0

    .line 2382
    const/4 v0, 0x4

    .line 2381
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setImportantForAccessibility(I)V

    .line 2384
    return-void

    .line 2383
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupEventRects(Z)V
    .locals 6

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getHorizontalPadding()I

    move-result v2

    .line 1454
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getVerticalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    .line 1455
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    .line 1456
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipVerticalPadding:I

    .line 1458
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v3, :cond_0

    .line 1459
    sget-object v3, Lcom/android/calendar/timely/TimelyChip$6;->$SwitchMap$com$android$calendar$timely$TimelyChip$ChipType:[I

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyChip$ChipType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1476
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 1477
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1478
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1479
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1483
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v3, Lcom/android/calendar/timely/TimelyChip$ChipType;->TRIPLE:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 1484
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    .line 1486
    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mNumTextLines:I

    rsub-int/lit8 v3, v3, 0x3

    .line 1487
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v5

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 1490
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v3, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1491
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1492
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1493
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1494
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1495
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1496
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineMax(I)F

    move-result v0

    float-to-int v0, v0

    .line 1498
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1505
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mMinimumWidthRightPadding:I

    if-gt v0, v1, :cond_3

    .line 1506
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    if-eqz v0, :cond_9

    .line 1507
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1512
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 1513
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDisplayWidth:I

    add-int/2addr v0, v2

    .line 1514
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1515
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1520
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_6

    .line 1522
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1523
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1525
    :cond_6
    return-void

    .line 1461
    :pswitch_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipVerticalPadding:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v1

    .line 1462
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipVerticalPadding:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v0

    goto/16 :goto_0

    .line 1465
    :pswitch_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingTop:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v1

    .line 1466
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipVerticalPaddingBottom:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v0

    goto/16 :goto_0

    .line 1470
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipVerticalPaddingTop:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v1

    .line 1471
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipVerticalPaddingBottom:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->convertVerticalPadding(I)I

    move-result v0

    goto/16 :goto_0

    .line 1497
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1

    .line 1500
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 1509
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1517
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 1459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private shouldEmboldenText()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2003
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2012
    :goto_0
    return v0

    .line 2006
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAttendeeEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2007
    goto :goto_0

    .line 2009
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 2010
    goto :goto_0

    .line 2012
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldInvertColors()Z
    .locals 1

    .prologue
    .line 1998
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAttendeeEvent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1999
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasInvitedStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1998
    :goto_0
    return v0

    .line 1999
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldRefreshLayout()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2156
    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mRefreshLayout:Z

    if-eqz v2, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return v0

    .line 2159
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusChanged:Z

    if-nez v2, :cond_0

    .line 2162
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v2, :cond_4

    .line 2165
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 2168
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2169
    goto :goto_0

    .line 2171
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mShowingTime:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2174
    :cond_3
    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChip;->mShowingTime:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 2178
    goto :goto_0
.end method

.method private shouldTintTheFootprint()Z
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    return v0
.end method

.method private showContactPhoto()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1372
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 1373
    invoke-virtual {v2}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 1374
    invoke-virtual {v2}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->getBitmap()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1383
    :cond_1
    :goto_0
    return v0

    .line 1379
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isBirthday()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->showImageBackground()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1384
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1385
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private triggerSwipeThresholdCrossingAnimations()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1235
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v1, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleRadius:F

    .line 1236
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget v2, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconScaleAddend:F

    .line 1237
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1240
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1241
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1242
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-boolean v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->aboveThreshold:Z

    if-eqz v3, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mChipCornerRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1246
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v4, v4, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v8, [F

    aput v1, v5, v6

    aput v3, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1247
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v8, [F

    aput v2, v4, v6

    const v5, 0x3e99999a    # 0.3f

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1249
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/calendar/timely/TimelyChipSwipeData;->SPRING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1257
    :goto_1
    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v0, v3

    float-to-long v4, v0

    .line 1258
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1259
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1260
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1261
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1262
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iput v1, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleRadius:F

    .line 1263
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iput v2, v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconScaleAddend:F

    .line 1264
    return-void

    .line 1239
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 1252
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v8, [F

    aput v1, v4, v6

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1253
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v8, [F

    aput v2, v4, v6

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 1254
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    iget-object v3, v3, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private updateInteractionListeners()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isPassive()Z

    move-result v2

    .line 719
    if-nez v2, :cond_0

    .line 720
    new-instance v0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeThreshold:I

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;-><init>(Lcom/android/calendar/timely/TimelyChip;ILandroid/view/ViewConfiguration;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 722
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/timely/TimelyChip$1;

    invoke-direct {v4, p0}, Lcom/android/calendar/timely/TimelyChip$1;-><init>(Lcom/android/calendar/timely/TimelyChip;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGestureDetector:Landroid/view/GestureDetector;

    .line 735
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->hasOnClickListeners()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 742
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 748
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    if-nez v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setClickable(Z)V

    .line 753
    :cond_1
    return-void

    .line 742
    :cond_2
    new-instance v0, Lcom/android/calendar/timely/TimelyChip$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelyChip$2;-><init>(Lcom/android/calendar/timely/TimelyChip;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 751
    goto :goto_1
.end method

.method private widthIsChanging()Z
    .locals 3

    .prologue
    .line 1390
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXEnd:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXStart:I

    sub-int/2addr v0, v1

    .line 1391
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXEnd:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXStart:I

    sub-int/2addr v1, v2

    .line 1392
    sub-int v1, v0, v1

    div-int/lit8 v0, v0, 0x3

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearItem()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 493
    const-string v1, "TimelyChip.clearItem - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->unbind()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->unbind()V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;->dispose()V

    .line 502
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->clearChip()V

    .line 506
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 508
    :cond_3
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mGrooveIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    .line 509
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/TimelyChip;->setChipAccessibilityDelegate(Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;)V

    .line 510
    iput-boolean v4, p0, Lcom/android/calendar/timely/TimelyChip;->mPassive:Z

    .line 511
    invoke-direct {p0, v4}, Lcom/android/calendar/timely/TimelyChip;->setPassiveForAccessibility(Z)V

    .line 512
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 513
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    .line 514
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mLayout:Landroid/text/StaticLayout;

    .line 515
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistLayout:Landroid/text/StaticLayout;

    .line 516
    iput-boolean v4, p0, Lcom/android/calendar/timely/TimelyChip;->mInMultiDayContext:Z

    .line 517
    iput-boolean v4, p0, Lcom/android/calendar/timely/TimelyChip;->mIsInitialized:Z

    .line 518
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/TimelyChip;->setTranslationX(F)V

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/TimelyChip;->setTranslationY(F)V

    .line 520
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setAlpha(F)V

    .line 521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setEnabled(Z)V

    .line 522
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionPrefix:Ljava/lang/String;

    .line 523
    iput-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionSuffix:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 525
    return-void

    .line 493
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public couldParentSupportSwipe()Z
    .locals 1

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->initializeSwipeDataIfNeeded()V

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawChipFootprint(Landroid/graphics/Canvas;)V

    .line 1083
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1085
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1086
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1404
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1406
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1407
    return-void
.end method

.method public enableImages(Z)V
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelyChip;->mShowImages:Z

    .line 299
    return-void
.end method

.method public getAgendaCoordinates()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 550
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXStart:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYStart:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXEnd:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getAgendaViewHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2273
    sget-object v1, Lcom/android/calendar/timely/TimelyChip$6;->$SwitchMap$com$android$calendar$timely$TimelyChip$ChipType:[I

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyChip$ChipType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2286
    :goto_0
    :pswitch_0
    return v0

    .line 2277
    :pswitch_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSingleChipHeight:I

    goto :goto_0

    .line 2279
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mDoubleChipHeight:I

    goto :goto_0

    .line 2281
    :pswitch_3
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTripleChipHeight:I

    goto :goto_0

    .line 2284
    :pswitch_4
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistChipHeight:I

    goto :goto_0

    .line 2273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 2342
    invoke-super {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2343
    if-nez v0, :cond_0

    .line 2344
    const-string v0, "setItemText/computeContentDescription"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 2345
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 2355
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 2356
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInAgendaView()Z

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionSuffix:Ljava/lang/String;

    .line 2355
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/timely/TimelineItemUtil;->createContentDescription(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2357
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 2359
    const-string v1, "setItemText/setContentDescription"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2361
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 2363
    :cond_0
    return-object v0
.end method

.method public getCurrentJulianDay()I
    .locals 1

    .prologue
    .line 2148
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mCurrentJulianDay:I

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v0

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGridCoordinates()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 546
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXStart:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYStart:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXEnd:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYEnd:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMaxPartitions()I
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getMaxPartitions()I

    move-result v0

    return v0
.end method

.method public getPartition()I
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v0

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v0

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSwipeData()Lcom/android/calendar/timely/TimelyChipSwipeData;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    return-object v0
.end method

.method public getSwipeHelper()Lcom/android/calendar/timely/TimelyChipSwipeHelper;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    return-object v0
.end method

.method public getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    return-object v0
.end method

.method public getTimelineItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    return v0
.end method

.method public initItem(I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iput p1, p0, Lcom/android/calendar/timely/TimelyChip;->mViewType:I

    .line 573
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sIsTablet:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isInMonthView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    sget v0, Lcom/android/calendar/R$drawable;->ic_reminders_phone_month:I

    .line 574
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mReminderIcon:Landroid/graphics/drawable/Drawable;

    .line 577
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->scaleReminderIcon()V

    .line 580
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 582
    sget v1, Lcom/android/calendar/R$drawable;->quantum_ic_flag_white_18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGrooveIcon:Landroid/graphics/drawable/Drawable;

    .line 583
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->scaleGrooveIcon()V

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->supportsSwipe()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->couldParentSupportSwipe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 590
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_sweep_grey600_24:I

    .line 599
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    .line 600
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeIcon:Landroid/graphics/drawable/Drawable;

    .line 601
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 600
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 605
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->setChipType()V

    .line 607
    const-string v0, "setAndInitItem/initItem"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 608
    iput-boolean v10, p0, Lcom/android/calendar/timely/TimelyChip;->mIsInitialized:Z

    .line 609
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->isBirthday()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 610
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->initBirthdayItem(Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 615
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isAttendeeEvent(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 616
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->TIMELY_CHIP_FIND_TIME_TYPEFACE:Landroid/graphics/Typeface;

    .line 615
    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 620
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->showImageBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 621
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_e

    .line 625
    new-instance v1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 626
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageWidth:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageHeight:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 627
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->setEventImage(Lcom/android/calendar/timely/EventImageRequestKey;)V

    .line 645
    :goto_5
    const-string v0, "setAndInitItem/setBackground"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageDrawable:Lcom/android/calendar/timely/EventChipBitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 654
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->setItemText()V

    .line 656
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 657
    iput-boolean v10, p0, Lcom/android/calendar/timely/TimelyChip;->mRefreshLayout:Z

    .line 660
    :cond_6
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mShowImages:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->showImageBackground()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 661
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->shouldShowOrganizerImage()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sHasContactsPermissions:Z

    if-eqz v0, :cond_7

    .line 662
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    .line 664
    new-instance v2, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelyChip;->setContactPhoto(Lcom/android/calendar/timely/ContactPhotoRequestKey;)V

    .line 669
    :cond_7
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    .line 576
    :cond_8
    sget v0, Lcom/android/calendar/R$drawable;->ic_reminders:I

    goto/16 :goto_1

    .line 591
    :cond_9
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 592
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_done_grey600_24:I

    goto/16 :goto_2

    .line 593
    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 594
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_done_grey600_24:I

    goto/16 :goto_2

    .line 596
    :cond_b
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_delete_grey600_24:I

    goto/16 :goto_2

    .line 611
    :cond_c
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 612
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->initTaskBundleItem(Lcom/android/calendar/task/TimelineTaskBundle;)V

    goto/16 :goto_3

    .line 617
    :cond_d
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->TIMELY_CHIP_TYPEFACE:Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 629
    :cond_e
    const-string v0, "setAndInitItem/setEventImage"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 630
    new-instance v1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 631
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageWidth:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyChip;->mEventImageHeight:I

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 632
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getCalendarId()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v8

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IILjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_f

    .line 634
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 635
    iget-object v2, v0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 636
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setUrlString(Ljava/lang/String;)V

    .line 642
    :cond_f
    :goto_7
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->setEventImage(Lcom/android/calendar/timely/EventImageRequestKey;)V

    .line 643
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_5

    .line 638
    :cond_10
    new-instance v2, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;

    invoke-direct {v2, v0}, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;-><init>(Lcom/android/calendar/groove/TimelineGroove;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/EventImageRequestKey;->setAsyncImageUrlLoader(Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;)V

    goto :goto_7

    .line 649
    :cond_11
    const-string v0, "setAndInitItem/setBackground"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 651
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_6
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->invalidate()V

    .line 2292
    return-void
.end method

.method public invalidateIncludingFootprint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1101
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->getHitRect(Landroid/graphics/Rect;)V

    .line 1102
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1103
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1104
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mClipRecycle:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->invalidate()V

    .line 1106
    return-void
.end method

.method public isAnyReminder()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public isAttendeeEvent()Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isAttendeeEvent(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method isFirstDayOfEvent()Z
    .locals 2

    .prologue
    .line 2136
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mCurrentJulianDay:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroove()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isGroove(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public isParentSupportingSwipe()Z
    .locals 1

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 2103
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->supportsSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2102
    :goto_0
    return v0

    .line 2103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassive()Z
    .locals 1

    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPassive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->isChipClickable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReminder()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public isReminderBundle()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isReminderBundle(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1095
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1097
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1098
    return-void
.end method

.method public launchDetails()Z
    .locals 4

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;

    if-eqz v0, :cond_1

    .line 2399
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mHasRipples:Z

    if-eqz v0, :cond_0

    .line 2400
    new-instance v0, Lcom/android/calendar/timely/TimelyChip$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelyChip$5;-><init>(Lcom/android/calendar/timely/TimelyChip;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/timely/TimelyChip;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2410
    :goto_0
    const/4 v0, 0x1

    .line 2412
    :goto_1
    return v0

    .line 2407
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->launchDetailsImpl()V

    goto :goto_0

    .line 2412
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public layout()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 983
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->getStartX(F)I

    move-result v1

    .line 984
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->getEndX(F)I

    move-result v0

    .line 985
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/TimelyChip;->layout(II)V

    .line 986
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    goto :goto_0
.end method

.method public layout(II)V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 996
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->getStartY(F)I

    move-result v1

    .line 997
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->getEndY(F)I

    move-result v0

    .line 1000
    if-ne v0, v1, :cond_1

    if-ne p2, p1, :cond_1

    .line 1005
    :goto_1
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    goto :goto_0

    .line 1004
    :cond_1
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/calendar/timely/TimelyChip;->layout(IIII)V

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 2427
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2429
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    .line 2428
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/TimelyChip;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 2431
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2433
    return-void
.end method

.method public onBirthdayItemLoaded(Lcom/android/calendar/timely/TimelineBirthday;)V
    .locals 3

    .prologue
    .line 791
    sget-boolean v0, Lcom/android/calendar/timely/TimelyChip;->sHasContactsPermissions:Z

    if-nez v0, :cond_0

    .line 792
    sget-object v0, Lcom/android/calendar/timely/TimelyChip;->TAG:Ljava/lang/String;

    const-string v1, "No contacts permission granted. Don\'t load birthday contact photo."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 801
    :goto_0
    return-void

    .line 796
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/ContactPhotoRequestKey;

    .line 797
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/ContactPhotoRequestKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setContactPhoto(Lcom/android/calendar/timely/ContactPhotoRequestKey;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->refreshLayout()V

    .line 800
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->invalidate()V

    goto :goto_0
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2502
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 2503
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGridHourHeight:I

    .line 2504
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getTextSizeScalableGrid()I

    move-result v0

    .line 2505
    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeScalableGrid:I

    if-eq v0, v1, :cond_0

    .line 2506
    iput v0, p0, Lcom/android/calendar/timely/TimelyChip;->mEventTextSizeScalableGrid:I

    .line 2507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mRefreshLayout:Z

    .line 2508
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->invalidate()V

    .line 2511
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2437
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2438
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2440
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 1009
    const-string v1, "TimelyChip onDraw - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1011
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawBgColor(Landroid/graphics/Canvas;)V

    .line 1015
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->shouldInvertColors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawInvitationBorder(Landroid/graphics/Canvas;)V

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->widthIsChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1040
    :goto_1
    return-void

    .line 1009
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawContactPhoto(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 1027
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setupEventRects(Z)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawItemText(Landroid/graphics/Canvas;)V

    .line 1029
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v2, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v2, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST_INFO:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v1, v2, :cond_4

    .line 1030
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setupEventRects(Z)V

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawItemAssist(Landroid/graphics/Canvas;)V

    .line 1034
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->drawReminderIcon(Landroid/graphics/Canvas;)V

    .line 1038
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusChanged:Z

    .line 1039
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mFocusChanged:Z

    .line 690
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2317
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2318
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;->onInitializeChipAccessibilityEvent(Lcom/android/calendar/timely/TimelyChip;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2321
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 2309
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2310
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

    invoke-interface {v0, p0, p1}, Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;->onInitializeChipAccessibilityInfo(Lcom/android/calendar/timely/TimelyChip;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2313
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 2242
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2243
    packed-switch p2, :pswitch_data_0

    .line 2248
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2245
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->launchDetails()Z

    move-result v0

    goto :goto_0

    .line 2243
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 473
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    .line 475
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    if-eq v1, v0, :cond_0

    .line 476
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mIsRtl:Z

    .line 477
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->setItemText()V

    .line 479
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1399
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1400
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isPassive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2237
    :goto_0
    return v0

    .line 2210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2222
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mHasRipples:Z

    if-eqz v0, :cond_1

    .line 2223
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 2225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 2226
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2227
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 2231
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2233
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isParentSupportingSwipe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2234
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    move v0, v1

    .line 2237
    goto :goto_0

    .line 2212
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyChip;->setPressed(Z)V

    goto :goto_1

    .line 2217
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setPressed(Z)V

    goto :goto_1

    .line 2210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public refreshLayout()V
    .locals 1

    .prologue
    .line 2152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mRefreshLayout:Z

    .line 2153
    return-void
.end method

.method public setAgendaCoordinates(IIII)V
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXEnd:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYStart:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYEnd:I

    if-ne p4, v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXStart:I

    .line 533
    iput p3, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaXEnd:I

    .line 534
    iput p2, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYStart:I

    .line 535
    iput p4, p0, Lcom/android/calendar/timely/TimelyChip;->mAgendaYEnd:I

    goto :goto_0
.end method

.method public setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V
    .locals 0

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 757
    invoke-virtual {p0, p2}, Lcom/android/calendar/timely/TimelyChip;->initItem(I)V

    .line 758
    return-void
.end method

.method public setChipAccessibilityDelegate(Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;)V
    .locals 0

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mChipAccessibilityDelegate:Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;

    .line 2297
    return-void
.end method

.method public setContactPhoto(Lcom/android/calendar/timely/ContactPhotoRequestKey;)V
    .locals 5

    .prologue
    .line 901
    const-string v1, "setContactPhoto - "

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    if-nez v0, :cond_0

    .line 903
    const-string v0, "setContactPhoto/createDrawable"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 905
    new-instance v1, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 906
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/calendar/timely/TimelyChip$3;

    invoke-direct {v4, p0}, Lcom/android/calendar/timely/TimelyChip$3;-><init>(Lcom/android/calendar/timely/TimelyChip;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    .line 917
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 918
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    iget v1, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoActualWidth:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoActualHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->setDecodeDimensions(II)V

    .line 920
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 922
    :cond_0
    const-string v0, "setContactPhoto/bind"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 924
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 925
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 926
    return-void

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentDescriptionPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionPrefix:Ljava/lang/String;

    .line 2326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2327
    return-void
.end method

.method public setContentDescriptionSuffix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mContentDescriptionSuffix:Ljava/lang/String;

    .line 2332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2333
    return-void
.end method

.method public setCurrentJulianDay(I)V
    .locals 0

    .prologue
    .line 2144
    iput p1, p0, Lcom/android/calendar/timely/TimelyChip;->mCurrentJulianDay:I

    .line 2145
    return-void
.end method

.method public setGridCoordinates(IIII)V
    .locals 0

    .prologue
    .line 539
    iput p1, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXStart:I

    .line 540
    iput p2, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYStart:I

    .line 541
    iput p3, p0, Lcom/android/calendar/timely/TimelyChip;->mGridXEnd:I

    .line 542
    iput p4, p0, Lcom/android/calendar/timely/TimelyChip;->mGridYEnd:I

    .line 543
    return-void
.end method

.method public setInMultiDayContext(Z)V
    .locals 0

    .prologue
    .line 2300
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelyChip;->mInMultiDayContext:Z

    .line 2301
    return-void
.end method

.method public setItem(Lcom/android/calendar/timely/PartitionItem;)V
    .locals 2

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    if-eq v1, v0, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    .line 709
    :cond_1
    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 710
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    .line 712
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->updateInteractionListeners()V

    goto :goto_0
.end method

.method public setItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 698
    :goto_0
    return-void

    .line 697
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/SimplePartitionItem;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/SimplePartitionItem;-><init>(Lcom/android/calendar/timely/TimelineItem;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChip;->setItem(Lcom/android/calendar/timely/PartitionItem;)V

    goto :goto_0
.end method

.method public setMaxPartitions(I)V
    .locals 1

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/PartitionItem;->setMaxPartitions(I)V

    .line 2462
    return-void
.end method

.method public setPartition(I)V
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/PartitionItem;->setPartition(I)V

    .line 2452
    return-void
.end method

.method public setPassive(ZZ)V
    .locals 1

    .prologue
    .line 2375
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChip;->setPassiveForAccessibility(Z)V

    .line 2376
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPassive:Z

    .line 2377
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChip;->updateInteractionListeners()V

    .line 2378
    return-void

    .line 2376
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 295
    return-void
.end method

.method public shouldShowImages()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mShowImages:Z

    return v0
.end method

.method public showImageBackground()Z
    .locals 1

    .prologue
    .line 2118
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChip;->mShowImages:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 2119
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 2122
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 2123
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasInvitedStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->isFirstDayOfEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2118
    :goto_0
    return v0

    .line 2124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public singleTapUp(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mType:Lcom/android/calendar/timely/TimelyChip$ChipType;

    sget-object v1, Lcom/android/calendar/timely/TimelyChip$ChipType;->ASSIST:Lcom/android/calendar/timely/TimelyChip$ChipType;

    if-ne v0, v1, :cond_0

    .line 674
    invoke-direct {p0, v3}, Lcom/android/calendar/timely/TimelyChip;->setupEventRects(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mAssistTextRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/TimelyChip;->playSoundEffect(I)V

    .line 678
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/TimelineItem;->gotoAssist(Landroid/content/Context;)V

    .line 684
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChip;->performClick()Z

    goto :goto_0
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mPartitionItem:Lcom/android/calendar/timely/PartitionItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->spansAtLeastOneDay()Z

    move-result v0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->supportsSwipe()Z

    move-result v0

    return v0
.end method

.method public swipe()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/android/calendar/timely/TimelyChipSwipeData;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mSwipeData:Lcom/android/calendar/timely/TimelyChipSwipeData;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeGestureStart()V

    .line 489
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mTimelyChipSwipeHelper:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateDismiss(FZ)V

    .line 490
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1090
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
