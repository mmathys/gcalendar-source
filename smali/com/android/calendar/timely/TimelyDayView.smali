.class public Lcom/android/calendar/timely/TimelyDayView;
.super Landroid/view/ViewGroup;
.source "TimelyDayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
.implements Lcom/android/calendar/timely/AbstractTimelineGridFragment$SimpleOnScrollListener;
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
.implements Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static GRID_START_HOUR:I

.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;

.field private static final TAG:Ljava/lang/String;

.field private static mCalendarHourLabelColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private final ROBOTO_MEDIUM_TYPE:Landroid/graphics/Typeface;

.field private mAllDayChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllDayEventCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatingDoneBundleIn:Z

.field private mAnimationHeightAdjustement:I

.field private mBaseDate:Lcom/android/calendar/time/Time;

.field private final mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mCollapsingChips:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

.field private mCurrentTime:Lcom/android/calendar/time/Time;

.field protected mDataLoaded:Z

.field private mDateInfo:[I

.field private final mDayHeaderBottomMargin:I

.field private final mDayHeaderHeight:I

.field private mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

.field private mDayHeaderViewTop:I

.field private final mDayHeaderWidth:I

.field private mDayViewAgendaMeasuredHeight:I

.field private mDayViewGridMeasuredHeight:I

.field private mDayViewLocation:[I

.field private mDayViewVisibleRect:Landroid/graphics/Rect;

.field private final mDefaultMargin:I

.field mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

.field private mDoNotDraw:Z

.field private final mDoubleChipHeight:I

.field private mEventLayoutStartX:I

.field private mEventLayoutStopX:I

.field private mFirstCanOpenEvent:Z

.field private mForceShow:Z

.field protected final mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGridChipsAllDayTopMargin:I

.field private final mGridlineColor:I

.field private mHasItems:Z

.field private final mHorizontalMargin:I

.field private final mHourStartMargin:I

.field private final mHoursMaskHeight:I

.field private mHoursTextSize:I

.field private mIsMeasured:Z

.field private final mIsRtl:Z

.field private final mIsTablet:Z

.field private mJulianDay:I

.field private final mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

.field private final mMonthHeaderBottomMargin:I

.field private mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

.field private final mMonthHeaderHeight:I

.field private final mMonthHeaderLeftMargin:I

.field private mMonthHeaderText:Ljava/lang/String;

.field private final mMonthHeaderTextSize:I

.field private final mMonthHeaderTopMargin:I

.field private mNoEventsView:Landroid/widget/TextView;

.field private final mNowLineColor:I

.field private final mNowLineDiameter:I

.field private final mNowLineSpacing:I

.field private final mNowLineStrokeWidth:I

.field private final mNowLineStyle:Landroid/graphics/Paint$Style;

.field private mNowLineYAgenda:I

.field private mNowLineYGrid:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRecycleTime:Lcom/android/calendar/time/Time;

.field private mSetToParentHeight:Z

.field private mShouldDrawYearHeader:Z

.field private mShowMonthHeaderImages:Z

.field private final mSingleChipHeight:I

.field private final mSolidLines:[F

.field private mStartOfDay:I

.field private mStartOfGrid:I

.field private mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

.field private mTimedChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimelineChipVerticalSpacing:I

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

.field private mUpdateListenerType:I

.field private mViewWidth:I

.field private mWaitingForMeasurement:Z

.field private final mWeekHeaderBackgroundColor:I

.field private final mWeekHeaderBottomMargin:I

.field private final mWeekHeaderHeight:I

.field private final mWeekHeaderLeftMargin:I

.field private mWeekHeaderText:Ljava/lang/String;

.field private final mWeekHeaderTextColor:I

.field private final mWeekHeaderTextSize:I

.field private final mWeekHeaderTextStrokeWidth:I

.field private mYearHeaderText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const-class v0, Lcom/android/calendar/timely/TimelyDayView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyDayView;->TAG:Ljava/lang/String;

    .line 108
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyDayView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    .line 112
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/timely/TimelyDayView;->GRID_START_HOUR:I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/timely/TimelyDayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 131
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/timely/TimelyDayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/timely/TimelyDayView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 628
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCollapsingChips:Ljava/util/HashSet;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYGrid:I

    .line 213
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    .line 215
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWaitingForMeasurement:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mFirstCanOpenEvent:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    .line 233
    new-instance v0, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;

    invoke-direct {v0}, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayEventCmp:Ljava/util/Comparator;

    .line 246
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewVisibleRect:Landroid/graphics/Rect;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewLocation:[I

    .line 257
    new-instance v0, Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-direct {v0, p0, p0, v5}, Lcom/android/calendar/timely/DelayedUpdateHelper;-><init>(Landroid/view/View;Lcom/android/calendar/timely/DataFactory$OnUpdateListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    .line 261
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setClipChildren(Z)V

    .line 633
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    .line 634
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsTablet:Z

    .line 636
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 639
    iput-object p2, p0, Lcom/android/calendar/timely/TimelyDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 640
    iput-object p3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 641
    iput-object p4, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    .line 642
    iput p5, p0, Lcom/android/calendar/timely/TimelyDayView;->mUpdateListenerType:I

    .line 644
    invoke-static {v3}, Lcom/android/calendar/timely/MonthBackgrounds;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/timely/MonthBackgrounds;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    .line 646
    new-instance v0, Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-direct {v0, p1, p3}, Lcom/android/calendar/timely/StickyAllDayEventsView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineInfo;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    .line 647
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setLayoutDirection(I)V

    .line 649
    new-instance v0, Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelyDayHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    .line 650
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 651
    invoke-interface {p3}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawDayHeader()Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setVisibility(I)V

    .line 656
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 657
    sget v0, Lcom/android/calendar/R$layout;->create_new_event_view:I

    .line 658
    invoke-virtual {v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CreateNewEventView;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    .line 660
    sget v0, Lcom/android/calendar/R$layout;->no_events_view:I

    invoke-virtual {v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    .line 661
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/calendar/timely/TimelyDayView$5;

    invoke-direct {v4, p0}, Lcom/android/calendar/timely/TimelyDayView$5;-><init>(Lcom/android/calendar/timely/TimelyDayView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    sget v0, Lcom/android/calendar/R$dimen;->single_chip_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    .line 682
    sget v0, Lcom/android/calendar/R$dimen;->double_chip_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoubleChipHeight:I

    .line 683
    sget v0, Lcom/android/calendar/R$dimen;->chip_timeline_vertical_spacing:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    .line 685
    sget v0, Lcom/android/calendar/R$dimen;->phone_day_view_all_day_top_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGridChipsAllDayTopMargin:I

    .line 688
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 689
    :goto_1
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGridlineColor:I

    .line 690
    sget v0, Lcom/android/calendar/R$dimen;->timely_hours_left_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHourStartMargin:I

    .line 691
    sget v0, Lcom/android/calendar/R$dimen;->timely_hours_mask_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursMaskHeight:I

    .line 693
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 694
    :goto_2
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    .line 695
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 696
    :goto_3
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHorizontalMargin:I

    .line 698
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    .line 699
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    sget v0, Lcom/android/calendar/R$dimen;->paged_day_header_width:I

    .line 699
    :goto_4
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    .line 701
    sget v0, Lcom/android/calendar/R$dimen;->day_header_bottom_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderBottomMargin:I

    .line 703
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_text_size:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextSize:I

    .line 704
    sget v0, Lcom/android/calendar/R$dimen;->week_header_text_stroke_width:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextStrokeWidth:I

    .line 706
    sget v0, Lcom/android/calendar/R$color;->timeline_week_header_bg_color:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderBackgroundColor:I

    .line 707
    sget v0, Lcom/android/calendar/R$color;->timeline_week_header_text_color:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextColor:I

    .line 708
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderHeight:I

    .line 710
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_bottom_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderBottomMargin:I

    .line 713
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0, v3}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawMonthHeader(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    .line 714
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_6

    .line 715
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 716
    :goto_5
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    .line 717
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_text_size:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderTextSize:I

    .line 718
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_top_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderTopMargin:I

    .line 719
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_bottom_margin:I

    .line 720
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderBottomMargin:I

    .line 722
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    sget v0, Lcom/android/calendar/R$dimen;->tablet_day_view_hours_text_size:I

    .line 722
    :goto_6
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursTextSize:I

    .line 725
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 726
    sget v0, Lcom/android/calendar/R$dimen;->tablet_day_view_now_line_diameter:I

    .line 725
    :goto_7
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    .line 727
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 728
    sget v0, Lcom/android/calendar/R$dimen;->tablet_day_view_now_line_stroke_width:I

    .line 727
    :goto_8
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    .line 729
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_9
    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStyle:Landroid/graphics/Paint$Style;

    .line 730
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineColor:I

    .line 731
    sget v0, Lcom/android/calendar/R$dimen;->now_line_spacing_horizontal:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineSpacing:I

    .line 733
    new-instance v0, Lcom/android/calendar/timely/GridChipGeometry;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/GridChipGeometry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    .line 735
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;

    invoke-direct {v4, p0}, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;-><init>(Lcom/android/calendar/timely/TimelyDayView;)V

    invoke-direct {v0, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 737
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->ROBOTO_MEDIUM_TYPE:Landroid/graphics/Typeface;

    .line 739
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setFocusable(Z)V

    .line 740
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setFocusableInTouchMode(Z)V

    .line 742
    sget v0, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setBackgroundColor(I)V

    .line 744
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    .line 745
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 747
    sget v0, Lcom/android/calendar/R$color;->timegrid_hour_label:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarHourLabelColor:I

    .line 749
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 751
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 758
    const/16 v0, 0x64

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    .line 760
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->isToday()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNoItemsAgendaViewHeight()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    .line 761
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    if-eqz v0, :cond_c

    .line 762
    iput v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderLeftMargin:I

    .line 763
    iput v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderLeftMargin:I

    .line 785
    :goto_b
    return-void

    .line 653
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 689
    :cond_2
    sget v0, Lcom/android/calendar/R$color;->day_grid_line:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    .line 694
    :cond_3
    sget v0, Lcom/android/calendar/R$dimen;->day_view_default_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_2

    .line 696
    :cond_4
    sget v0, Lcom/android/calendar/R$dimen;->day_view_end_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_3

    .line 700
    :cond_5
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_width:I

    goto/16 :goto_4

    .line 716
    :cond_6
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_height_no_image:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_5

    .line 723
    :cond_7
    sget v0, Lcom/android/calendar/R$dimen;->hours_text_size:I

    goto/16 :goto_6

    .line 726
    :cond_8
    sget v0, Lcom/android/calendar/R$dimen;->now_line_diameter:I

    goto/16 :goto_7

    .line 728
    :cond_9
    sget v0, Lcom/android/calendar/R$dimen;->now_line_stroke_width:I

    goto/16 :goto_8

    .line 729
    :cond_a
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_9

    :cond_b
    move v0, v1

    .line 760
    goto :goto_a

    .line 766
    :cond_c
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->remeasure()V

    .line 767
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 768
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStartX:I

    .line 772
    :goto_c
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHorizontalMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStopX:I

    .line 776
    sget v0, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_padding:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 778
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStartX:I

    add-int/2addr v1, v0

    .line 779
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_f

    .line 780
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_left_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 781
    :goto_d
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderLeftMargin:I

    .line 782
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_d

    .line 783
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_left_margin:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 784
    :cond_d
    iput v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderLeftMargin:I

    goto :goto_b

    .line 770
    :cond_e
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineSpacing:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStartX:I

    goto :goto_c

    :cond_f
    move v0, v1

    .line 781
    goto :goto_d
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/calendar/timely/TimelyDayView;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/TimelineInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/CreateNewEventView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->installCreateEventView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/TimelyDayView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/TimelyDayView;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawWeekHeader()Z

    move-result v0

    return v0
.end method

.method private addChipFootprintFadeOutAnimator(Ljava/util/ArrayList;Lcom/android/calendar/timely/TimelyChip;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/calendar/timely/TimelyChip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelyChip;->getSwipeData()Lcom/android/calendar/timely/TimelyChipSwipeData;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v1, "footprintMaskAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    new-instance v1, Lcom/android/calendar/timely/TimelyDayView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/timely/TimelyDayView$1;-><init>(Lcom/android/calendar/timely/TimelyDayView;Lcom/android/calendar/timely/TimelyChip;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    new-instance v1, Lcom/android/calendar/timely/TimelyDayView$2;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/timely/TimelyDayView$2;-><init>(Lcom/android/calendar/timely/TimelyDayView;Lcom/android/calendar/timely/TimelyChip;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private addCollapseToEmptyStateAnimators(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNoItemsAgendaViewHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    .line 383
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getBottomPadding()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNowLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/calendar/timely/TimelyDayView;->createMoveViewsAnimator(IFZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 391
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mForceShow:Z

    if-nez v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 432
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 433
    sget-object v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 435
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_2
    return-void

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNoEventsView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->layoutNoEventsTodayView()V

    .line 400
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/calendar/timely/TimelyDayView;->addViewIfPossible(Landroid/view/View;Z)V

    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    sget v1, Lcom/android/calendar/R$string;->no_events_for_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNowLine()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    .line 408
    new-array v2, v5, [I

    aput v4, v2, v4

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 409
    sget-object v2, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 411
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 414
    new-instance v2, Lcom/android/calendar/timely/TimelyDayView$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/TimelyDayView$3;-><init>(Lcom/android/calendar/timely/TimelyDayView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 427
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addViewIfPossible(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1980
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/TimelyDayView;->addView(Landroid/view/View;I)V

    .line 1983
    :cond_0
    if-eqz p2, :cond_1

    .line 1984
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 1986
    :cond_1
    return-void
.end method

.method private createMoveDownForNewReminderDoneChipAnimator(Lcom/android/calendar/timely/TimelyChip;)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 447
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    .line 448
    invoke-interface {v0, v3}, Lcom/android/calendar/task/TimelineTaskType;->setDone(Z)V

    .line 450
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->getNewReminderDoneChipY(Lcom/android/calendar/timely/TimelyChip;)F

    move-result v1

    .line 452
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/calendar/task/TimelineTaskType;->setDone(Z)V

    .line 454
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimatingDoneBundleIn:Z

    .line 458
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    :goto_0
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v2

    .line 461
    invoke-direct {p0, v0, v1, v3}, Lcom/android/calendar/timely/TimelyDayView;->createMoveViewsAnimator(IFZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    goto :goto_0
.end method

.method private createMoveViewsAnimator(IFZ)Landroid/animation/ValueAnimator;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 472
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 474
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    cmpl-float v6, v6, p2

    if-ltz v6, :cond_0

    .line 475
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 472
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_3

    .line 481
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    cmpl-float v6, v6, p2

    if-ltz v6, :cond_2

    .line 483
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 480
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 488
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 491
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_5

    move v1, v2

    .line 493
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v3

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 494
    sget-object v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 506
    if-eqz p3, :cond_4

    if-lez p1, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 508
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 509
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimationHeightAdjustement:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimationHeightAdjustement:I

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    :cond_4
    new-instance v0, Lcom/android/calendar/timely/TimelyDayView$4;

    invoke-direct {v0, p0, v1, v4}, Lcom/android/calendar/timely/TimelyDayView$4;-><init>(Lcom/android/calendar/timely/TimelyDayView;ZLjava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 542
    return-object v2

    :cond_5
    move v1, v3

    .line 491
    goto :goto_2
.end method

.method private drawGridlines(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1542
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1544
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getVerticalGridX()I

    move-result v0

    int-to-float v1, v0

    .line 1545
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1550
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v2

    int-to-float v5, v2

    .line 1552
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    int-to-float v2, v2

    move v4, v2

    move v2, v3

    .line 1553
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 1554
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    add-int/lit8 v7, v2, 0x1

    aput v1, v6, v2

    .line 1555
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    add-int/lit8 v6, v7, 0x1

    aput v4, v2, v7

    .line 1556
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    add-int/lit8 v7, v6, 0x1

    aput v0, v2, v6

    .line 1557
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    add-int/lit8 v2, v7, 0x1

    aput v4, v6, v7

    .line 1553
    add-float/2addr v4, v5

    goto :goto_1

    .line 1545
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    int-to-float v0, v0

    goto :goto_0

    .line 1547
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v0

    int-to-float v1, v0

    .line 1548
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 1559
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1560
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mSolidLines:[F

    array-length v1, v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1561
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 1513
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1514
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    add-int/2addr v0, v1

    .line 1515
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v1

    add-int v2, v0, v1

    .line 1517
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 1519
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    :cond_0
    move v1, v0

    .line 1523
    :goto_0
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/DateTimeFormatHelper;->getHoursStrings()Ljava/util/List;

    move-result-object v4

    .line 1524
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1525
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    .line 1526
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-float v6, v1

    int-to-float v7, v3

    iget-object v8, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1527
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v0

    add-int/2addr v3, v0

    .line 1525
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1521
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHourStartMargin:I

    sub-int/2addr v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHourStartMargin:I

    goto :goto_2

    .line 1529
    :cond_3
    return-void
.end method

.method private drawMonthHeader(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawMonthHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1354
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    invoke-static {v0, p1, v1}, Lcom/android/calendar/Utils;->drawRtlCompatibleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Z)V

    .line 1356
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderTopMargin:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderTextSize:I

    add-int/2addr v0, v1

    .line 1361
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderTextX(Landroid/graphics/Canvas;)I

    move-result v1

    .line 1362
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderText:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1364
    :cond_0
    return-void

    .line 1358
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderBottomMargin:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private drawNowLine(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNowLine()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1433
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    .line 1434
    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYGrid:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1435
    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1437
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineStartX()I

    move-result v1

    .line 1438
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineEndX()I

    move-result v3

    .line 1439
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineCircleX()I

    move-result v2

    .line 1440
    int-to-float v2, v2

    int-to-float v4, v0

    iget v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1441
    int-to-float v1, v1

    int-to-float v2, v0

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1443
    :cond_0
    return-void
.end method

.method private drawWeekHeader(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawWeekHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawWeekHeaderBackground(Landroid/graphics/Canvas;)V

    .line 1399
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1401
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    .line 1402
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1407
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderTextX(Landroid/graphics/Canvas;)I

    move-result v1

    .line 1408
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderText:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1410
    :cond_0
    return-void

    .line 1405
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderBottomMargin:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private drawWeekHeaderBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_0

    .line 1421
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1422
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    .line 1423
    const/4 v1, 0x0

    int-to-float v2, v0

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1425
    :cond_0
    return-void
.end method

.method private drawYearHeader(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawYearHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawWeekHeaderBackground(Landroid/graphics/Canvas;)V

    .line 1385
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1386
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderBottomMargin:I

    sub-int/2addr v0, v1

    .line 1387
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mYearHeaderText:Ljava/lang/String;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderLeftMargin:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1389
    :cond_0
    return-void
.end method

.method private getCreateNewEventYStart()I
    .locals 4

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getRecycleTime()Lcom/android/calendar/time/Time;

    move-result-object v0

    .line 959
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 960
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getCreateNewEventTime()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 961
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 962
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getGridHourHeight()I
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Lcom/android/calendar/timely/GridChipGeometry;->getHourWithGridlineHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLayoutHeaderEndX()I
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 974
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    .line 976
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    goto :goto_0
.end method

.method private getLayoutHeaderStartX()I
    .locals 2

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 967
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    sub-int/2addr v0, v1

    .line 969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLimitedNegativeOffset(I)I
    .locals 2

    .prologue
    .line 2130
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2131
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2132
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2133
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewGridMeasuredHeight:I

    sub-int v0, v1, v0

    .line 2134
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2137
    :cond_0
    mul-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private getMaskGradientHeight()I
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursMaskHeight:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMonthHeaderSize()I
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawExtraHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getMonthHeaderOffset()I

    move-result v0

    .line 1323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewReminderDoneChipY(Lcom/android/calendar/timely/TimelyChip;)F
    .locals 4

    .prologue
    .line 565
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 567
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayEventCmp:Ljava/util/Comparator;

    invoke-interface {v3, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getY()F

    move-result v0

    .line 580
    :goto_1
    return v0

    .line 565
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 576
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    .line 580
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method private getNoItemsAgendaViewHeight()I
    .locals 3

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 923
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mForceShow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    .line 924
    return v0

    .line 923
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNowLineEventIndex(J)I
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    const/4 v0, -0x1

    .line 1302
    :cond_0
    :goto_0
    return v0

    .line 1295
    :cond_1
    const/4 v1, 0x0

    .line 1296
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 1297
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/timely/TimelyDayView;->isEventHalfOver(JI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1296
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getNowLineOffsetOneHour()I
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getTimeOffsetOneHour(Lcom/android/calendar/time/Time;)I

    move-result v0

    return v0
.end method

.method private getNowLineYBusy()I
    .locals 3

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->hour:I

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 1315
    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->minute:I

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1316
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRecycleTime()Lcom/android/calendar/time/Time;
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method private getTimeOffsetOneHour(Lcom/android/calendar/time/Time;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2174
    iget v0, p1, Lcom/android/calendar/time/Time;->minute:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 2175
    :goto_0
    iget v2, p1, Lcom/android/calendar/time/Time;->hour:I

    sub-int v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0

    .line 2174
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVerticalGridX()I
    .locals 2

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    goto :goto_0
.end method

.method private getWeekHeaderSize()I
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawExtraHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getWeekHeaderOffset()I

    move-result v0

    .line 1331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWeekNumber()I
    .locals 2

    .prologue
    .line 2352
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2354
    const/4 v0, -0x1

    .line 2358
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    .line 2359
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v1

    .line 2358
    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    goto :goto_0
.end method

.method private getYearHeaderSize()I
    .locals 1

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawYearHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderHeight:I

    .line 1340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRemindersDoneChip(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineItemUtil;->isAnyReminder(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getOrganizer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 556
    :goto_1
    return v0

    .line 549
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 556
    goto :goto_1
.end method

.method private initializeMonthHeader([I)V
    .locals 4

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 1811
    invoke-virtual {v0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move-result-object v0

    .line 1812
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthToShow(Landroid/content/Context;I)I

    move-result v1

    .line 1813
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthTopColor(I)I

    move-result v2

    .line 1814
    iget v3, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    if-eq v2, v3, :cond_0

    .line 1815
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthTopColor(I)I

    move-result v2

    iput v2, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 1816
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->onOptsChanged()V

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/timely/MonthHeaderBitmapRequestKey;->forMonth(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 1821
    :cond_1
    return-void
.end method

.method private initializeYearHeader([I)V
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mYearHeaderText:Ljava/lang/String;

    .line 1845
    return-void
.end method

.method private installCreateEventView()V
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->refreshFromModel()V

    .line 1825
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->addView(Landroid/view/View;)V

    .line 1827
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    new-instance v1, Lcom/android/calendar/timely/TimelyDayView$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelyDayView$6;-><init>(Lcom/android/calendar/timely/TimelyDayView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CreateNewEventView;->post(Ljava/lang/Runnable;)Z

    .line 1836
    :cond_0
    return-void
.end method

.method private instantiateMonthHeaderDrawable()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1769
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawMonthHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1805
    :cond_1
    :goto_0
    return v0

    .line 1773
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-nez v2, :cond_1

    .line 1778
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    if-nez v2, :cond_3

    .line 1780
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWaitingForMeasurement:Z

    move v0, v1

    .line 1781
    goto :goto_0

    .line 1784
    :cond_3
    new-instance v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 1790
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    invoke-static {v3}, Lcom/android/calendar/Utils;->getDateInfo(I)[I

    move-result-object v3

    .line 1791
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v4

    aget v3, v3, v0

    invoke-static {v4, v3}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthToShow(Landroid/content/Context;I)I

    move-result v3

    .line 1794
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v4, v3}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthTopColor(I)I

    move-result v3

    iput v3, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 1795
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    .line 1797
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getMonthHeaderBitmapCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v3

    .line 1798
    new-instance v4, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 1799
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 1800
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setDecodeDimensions(II)V

    .line 1801
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    iget v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setBounds(IIII)V

    .line 1803
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method private isCreateNewEventTimeInDay()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1505
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v1

    .line 1506
    invoke-virtual {v1}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getCreateNewEventTime()J

    move-result-wide v2

    .line 1507
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getSelectedTimeInMillis(I)J

    move-result-wide v4

    .line 1508
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    .line 1509
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEventHalfOver(JI)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1306
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1310
    :goto_0
    return v0

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 1310
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isTabletDayView()Z
    .locals 2

    .prologue
    .line 2378
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutAllDayEvents(II)V
    .locals 7

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/StickyAllDayEventsView;->layout(II)V

    .line 1575
    :cond_0
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    .line 1576
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    .line 1578
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1579
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 1580
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1581
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    .line 1582
    invoke-interface {v5}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v6

    if-gt v6, v2, :cond_1

    invoke-interface {v5}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v5

    if-ge v5, v2, :cond_2

    .line 1579
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1585
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    goto :goto_1

    .line 1588
    :cond_3
    return-void
.end method

.method private layoutCreateNewEventView()V
    .locals 8

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->isAnimating()Z

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isCreateNewEventTimeInDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getCreateNewEventYStart()I

    move-result v0

    .line 949
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v2

    .line 950
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    .line 951
    invoke-virtual {v5}, Lcom/android/calendar/timely/CreateNewEventView;->getDuration()J

    move-result-wide v6

    .line 950
    invoke-virtual {v4, v6, v7}, Lcom/android/calendar/timely/GridChipGeometry;->computeHeight(J)I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 949
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/calendar/timely/CreateNewEventView;->layout(IIII)V

    .line 955
    :cond_0
    return-void
.end method

.method private layoutHeaderView()V
    .locals 6

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 981
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutHeaderStartX()I

    move-result v1

    .line 982
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutHeaderEndX()I

    move-result v2

    .line 983
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    add-int/2addr v4, v0

    .line 986
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMaskGradientHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 983
    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/calendar/timely/TimelyDayHeaderView;->layout(IIII)V

    .line 988
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderViewTop:I

    .line 990
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->updateDayHeaderViewPosition()V

    .line 991
    return-void
.end method

.method private layoutNoEventsTodayView()V
    .locals 5

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v2

    .line 1001
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    add-int/2addr v4, v0

    .line 999
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1003
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1004
    return-void
.end method

.method private layoutTimedEvents()V
    .locals 3

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1592
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    .line 1592
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1595
    :cond_0
    return-void
.end method

.method private loadTimelineItems(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1853
    const-string v0, "DayView loadTimelineItems"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1855
    if-nez p1, :cond_0

    .line 1856
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1977
    :goto_0
    return-void

    .line 1860
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1861
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    .line 1864
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 1865
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    .line 1868
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1869
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1870
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCollapsingChips:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1871
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimatingDoneBundleIn:Z

    .line 1874
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v1, v2

    .line 1875
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1876
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1877
    instance-of v5, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v5, :cond_3

    .line 1878
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1875
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1882
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1883
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1884
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    .line 1885
    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v5, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    .line 1886
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    .line 1882
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1888
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v1, v2

    .line 1891
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1892
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1893
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    .line 1894
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v4, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    .line 1891
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1896
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->removeAllViews()V

    .line 1902
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v3

    :goto_4
    move v4, v2

    move v5, v0

    .line 1909
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_e

    .line 1910
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 1911
    if-nez v0, :cond_7

    move v1, v5

    .line 1909
    :goto_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto :goto_5

    .line 1915
    :cond_7
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v5

    .line 1916
    goto :goto_6

    .line 1919
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v1}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 1920
    invoke-virtual {v1, v3}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 1921
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v1, v6}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 1922
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v6}, Lcom/android/calendar/timely/TimelineInfo;->canDrawBackgroundImage()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 1923
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v6}, Lcom/android/calendar/timely/TimelineInfo;->isSingleDayOnly()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v6

    .line 1925
    :goto_7
    invoke-virtual {v1, v6}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 1926
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v3

    :goto_8
    invoke-virtual {v1, v0, v6}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 1927
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getSwipeHelper()Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1928
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getSwipeHelper()Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/timely/TimelyDayView;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-virtual {v6, v7}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->setTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 1929
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getSwipeHelper()Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->setAnimatorProvider(Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;)V

    .line 1933
    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getAgendaViewHeight()I

    move-result v6

    if-eqz v6, :cond_a

    move v5, v3

    .line 1949
    :cond_a
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1950
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->addView(Landroid/view/View;)V

    .line 1951
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_6

    .line 1924
    :cond_b
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    invoke-virtual {v6, v3}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    iget-wide v8, v8, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v6

    goto :goto_7

    :cond_c
    move v6, v2

    .line 1926
    goto :goto_8

    .line 1953
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->addView(Landroid/view/View;)V

    .line 1955
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->bringToFront()V

    move v1, v5

    goto/16 :goto_6

    .line 1959
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 1960
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-direct {p0, v0, v3}, Lcom/android/calendar/timely/TimelyDayView;->addViewIfPossible(Landroid/view/View;Z)V

    .line 1961
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayEventCmp:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1964
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Lcom/android/calendar/timely/GridChipGeometry;->getMinimumDurationMillis()J

    move-result-wide v0

    .line 1965
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-static {v4, v0, v1, v2}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZ)V

    .line 1966
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-static {v4, v0, v1, v3}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZ)V

    .line 1967
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isCreateNewEventTimeInDay()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1968
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->installCreateEventView()V

    .line 1972
    :cond_10
    if-nez v5, :cond_11

    .line 1973
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    .line 1976
    :cond_11
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_4
.end method

.method private maybeUpdateMonthHeaderParallax()V
    .locals 3

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-eqz v0, :cond_0

    .line 2012
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineRecyclerView;

    .line 2013
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderHeight:I

    add-int/2addr v1, v2

    .line 2014
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 2015
    int-to-float v2, v2

    .line 2016
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 2018
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->setParallaxFraction(F)V

    .line 2020
    :cond_0
    return-void
.end method

.method private measureChildren()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1007
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v5

    .line 1008
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v1

    sub-int v3, v0, v1

    .line 1009
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 1010
    :goto_0
    if-ge v4, v6, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1015
    if-eqz v5, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    .line 1017
    :goto_1
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1018
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1019
    invoke-virtual {v0, v7, v1}, Lcom/android/calendar/timely/TimelyChip;->measure(II)V

    .line 1010
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getAgendaViewHeight()I

    move-result v1

    goto :goto_1

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 1022
    :goto_2
    if-ge v4, v6, :cond_3

    .line 1023
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1026
    if-eqz v5, :cond_2

    .line 1027
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v1, v0, v3}, Lcom/android/calendar/timely/GridChipGeometry;->computeItemWidth(Lcom/android/calendar/timely/PartitionItem;I)I

    move-result v2

    .line 1028
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/calendar/timely/GridChipGeometry;->computeItemHeight(Lcom/android/calendar/timely/TimelineItem;)I

    move-result v1

    .line 1033
    :goto_3
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1034
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1035
    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/timely/TimelyChip;->measure(II)V

    .line 1022
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1031
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getAgendaViewHeight()I

    move-result v1

    move v2, v3

    goto :goto_3

    .line 1037
    :cond_3
    return-void
.end method

.method private remeasure()V
    .locals 15

    .prologue
    .line 1044
    const-string v0, "remeasure"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    .line 1048
    const/4 v3, 0x0

    .line 1050
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v2

    .line 1051
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v11

    .line 1052
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getScrollOffset()I

    move-result v6

    .line 1055
    const/4 v1, 0x0

    .line 1062
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    .line 1063
    invoke-virtual {v4}, Lcom/android/calendar/timely/GridChipGeometry;->getGridChipVerticalSpacing()I

    move-result v4

    add-int v7, v0, v4

    .line 1064
    const/4 v0, 0x0

    move v4, v3

    move v3, v1

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_0
    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1067
    mul-int v5, v7, v1

    sub-int/2addr v5, v6

    iget v8, p0, Lcom/android/calendar/timely/TimelyDayView;->mGridChipsAllDayTopMargin:I

    add-int/2addr v5, v8

    .line 1068
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v9

    iget v10, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    add-int/2addr v10, v5

    invoke-virtual {v0, v8, v5, v9, v10}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 1071
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getAgendaViewHeight()I

    move-result v8

    .line 1072
    add-int v5, v3, v8

    invoke-virtual {v0, v2, v3, v11, v5}, Lcom/android/calendar/timely/TimelyChip;->setAgendaCoordinates(IIII)V

    .line 1073
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v8

    add-int v5, v4, v0

    .line 1076
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v8

    add-int v4, v3, v0

    .line 1064
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    move v3, v4

    move v4, v5

    goto :goto_0

    .line 1079
    :cond_0
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    add-int v5, v0, v1

    .line 1080
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    add-int/2addr v3, v0

    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    .line 1084
    if-nez v4, :cond_5

    const/4 v0, 0x0

    .line 1085
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    iget v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    iget v8, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    add-int/2addr v8, v4

    sub-int v0, v8, v0

    invoke-virtual {v1, v6, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setAgendaCoordinates(II)V

    .line 1087
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1088
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 1089
    const/4 v0, 0x2

    .line 1090
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    .line 1092
    :cond_1
    mul-int/2addr v0, v7

    .line 1093
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1095
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getGridHeight()I

    move-result v0

    .line 1101
    :cond_2
    :goto_2
    int-to-float v1, v4

    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v6}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v6

    sub-int v4, v0, v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v1, v4

    float-to-int v12, v1

    .line 1104
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    int-to-float v4, v12

    sub-int/2addr v0, v12

    int-to-float v0, v0

    iget-object v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 1105
    invoke-interface {v6}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v6

    mul-float/2addr v0, v6

    add-float/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    iget v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderBottomMargin:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 1107
    invoke-interface {v7}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    .line 1109
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1111
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineEventIndex(J)I

    move-result v13

    .line 1112
    invoke-direct {p0, v0, v1, v13}, Lcom/android/calendar/timely/TimelyDayView;->isEventHalfOver(JI)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move v6, v0

    .line 1114
    :goto_3
    const/4 v1, 0x0

    .line 1116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    .line 1117
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    move v9, v5

    move v10, v3

    :goto_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 1118
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/timely/TimelyChip;

    .line 1120
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    sub-int v4, v11, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/GridChipGeometry;->computeGridRect(IIIILcom/android/calendar/timely/TimelyChip;)Z

    .line 1122
    invoke-virtual {v5}, Lcom/android/calendar/timely/TimelyChip;->getAgendaViewHeight()I

    move-result v4

    .line 1124
    if-ne v13, v7, :cond_8

    const/4 v0, 0x1

    move v1, v0

    .line 1125
    :goto_5
    if-eqz v1, :cond_3

    .line 1126
    if-eqz v6, :cond_9

    .line 1127
    iput v10, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    .line 1128
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNowLine()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1129
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v3

    add-int/2addr v10, v0

    .line 1138
    :cond_3
    :goto_6
    add-int v0, v10, v4

    invoke-virtual {v5, v2, v10, v11, v0}, Lcom/android/calendar/timely/TimelyChip;->setAgendaCoordinates(IIII)V

    .line 1140
    if-eqz v1, :cond_12

    .line 1147
    if-eqz v6, :cond_b

    .line 1164
    :goto_7
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1165
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    if-le v9, v0, :cond_4

    .line 1166
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    sub-int/2addr v9, v0

    .line 1169
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/calendar/timely/TimelyDayView;->getAgendaScrollOffsetNow(I)I

    move-result v1

    .line 1170
    const/4 v0, -0x1

    if-eq v1, v0, :cond_12

    move v3, v10

    .line 1179
    :goto_8
    if-lez v4, :cond_11

    .line 1180
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v4

    add-int v4, v3, v0

    .line 1117
    :goto_9
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v1

    move v9, v3

    move v10, v4

    goto :goto_4

    .line 1084
    :cond_5
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    goto/16 :goto_1

    .line 1097
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridHeight(I)V

    goto/16 :goto_2

    .line 1112
    :cond_7
    const/4 v0, 0x0

    move v6, v0

    goto :goto_3

    .line 1124
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    .line 1132
    :cond_9
    if-lez v4, :cond_a

    .line 1133
    add-int v0, v10, v4

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v3

    .line 1134
    :goto_a
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    goto :goto_6

    :cond_a
    move v0, v10

    goto :goto_a

    .line 1158
    :cond_b
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v0, v10

    move v9, v10

    move v10, v0

    goto :goto_7

    .line 1185
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 1186
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 1190
    :cond_d
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getBottomPadding()I

    move-result v0

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewAgendaMeasuredHeight:I

    .line 1192
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderHeight:I

    .line 1193
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursTextSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1196
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewGridMeasuredHeight:I

    .line 1198
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1201
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0, v8}, Lcom/android/calendar/timely/TimelineInfo;->setAgendaScrollOffsetToNow(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_10

    .line 1205
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mSingleChipHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    .line 1209
    :cond_e
    :goto_b
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineYBusy()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYGrid:I

    .line 1212
    :cond_f
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1213
    return-void

    .line 1206
    :cond_10
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1207
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    add-int/2addr v0, v12

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I

    goto :goto_b

    :cond_11
    move v4, v3

    goto/16 :goto_9

    :cond_12
    move v1, v8

    move v3, v10

    goto/16 :goto_8
.end method

.method private setObjectToDraw(I)V
    .locals 4

    .prologue
    const/high16 v0, -0x1000000

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x1

    .line 796
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 797
    packed-switch p1, :pswitch_data_0

    .line 849
    :goto_0
    :pswitch_0
    return-void

    .line 800
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mGridlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v1}, Lcom/android/calendar/timely/GridChipGeometry;->getGridlineHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 804
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 807
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 808
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v1}, Lcom/android/calendar/timely/GridChipGeometry;->getGridlineHeight()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 809
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/timely/TimelyDayView;->mCalendarHourLabelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHoursTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 811
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 816
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 817
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 820
    :pswitch_3
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 821
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 823
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->ROBOTO_MEDIUM_TYPE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 824
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 825
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_0

    .line 824
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_3

    .line 828
    :pswitch_4
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 829
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mShowMonthHeaderImages:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextColor:I

    :cond_3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 830
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 831
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 832
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/TimelyDayView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 833
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderTextStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 831
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_4

    .line 837
    :pswitch_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 838
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 841
    :pswitch_6
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 842
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private setViewWidth(I)V
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    if-eq p1, v0, :cond_0

    .line 868
    iput p1, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    .line 869
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHorizontalMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStopX:I

    .line 871
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWaitingForMeasurement:Z

    if-eqz v0, :cond_0

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWaitingForMeasurement:Z

    .line 873
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->instantiateMonthHeaderDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDateInfo(I)[I

    move-result-object v0

    .line 875
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->initializeMonthHeader([I)V

    .line 879
    :cond_0
    return-void
.end method

.method private shouldDrawMonthHeader()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawExtraHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDrawWeekHeader()Z
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawExtraHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawYearHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mShouldDrawYearHeader:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDayHeaderViewPosition()V
    .locals 3

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getLocationOnScreen([I)V

    .line 2027
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 2028
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderViewTop:I

    sub-int/2addr v0, v1

    .line 2029
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderViewTop:I

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    .line 2030
    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 2031
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2032
    if-lez v1, :cond_0

    .line 2033
    sub-int/2addr v0, v1

    .line 2036
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setTranslationY(F)V

    .line 2038
    :cond_1
    return-void
.end method


# virtual methods
.method public createCollapseAnimator(Lcom/android/calendar/timely/TimelyChip;)Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCollapsingChips:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lcom/android/calendar/timely/TimelyDayView;->TAG:Ljava/lang/String;

    const-string v1, "Same chip collapsing twice"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    const/4 v0, 0x0

    .line 348
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-direct {p0, v1, p1}, Lcom/android/calendar/timely/TimelyDayView;->addChipFootprintFadeOutAnimator(Ljava/util/ArrayList;Lcom/android/calendar/timely/TimelyChip;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 294
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v0, v3

    .line 296
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoubleChipHeight:I

    iget v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 303
    :cond_1
    neg-int v0, v0

    invoke-direct {p0, v0, v2, v5}, Lcom/android/calendar/timely/TimelyDayView;->createMoveViewsAnimator(IFZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isAnyReminder()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v2, :cond_2

    .line 310
    check-cast v0, Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getTodayViewIfVisible()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/calendar/timely/TimelyDayView;->hasRemindersDoneChip(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/android/calendar/timely/TimelyDayView;->mAnimatingDoneBundleIn:Z

    if-nez v2, :cond_2

    .line 334
    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelyDayView;->createMoveDownForNewReminderDoneChipAnimator(Lcom/android/calendar/timely/TimelyChip;)Landroid/animation/Animator;

    move-result-object v0

    .line 335
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCollapsingChips:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimatingDoneBundleIn:Z

    if-nez v0, :cond_3

    .line 342
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->addCollapseToEmptyStateAnimators(Ljava/util/ArrayList;)V

    .line 346
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 347
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1605
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1608
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1451
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1452
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawNowLine(Landroid/graphics/Canvas;)V

    .line 1457
    :cond_0
    return-void
.end method

.method public getAgendaScrollOffsetNow(I)I
    .locals 2

    .prologue
    .line 2153
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getYearHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2155
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2156
    mul-int/lit8 v0, v0, -0x1

    .line 2166
    :goto_0
    return v0

    .line 2157
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mSetToParentHeight:Z

    if-eqz v1, :cond_3

    .line 2160
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2165
    :cond_3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2166
    mul-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected getBottomPadding()I
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    return v0
.end method

.method public final getChipSpacingHeight()I
    .locals 1

    .prologue
    .line 2213
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineChipVerticalSpacing:I

    return v0
.end method

.method getCreateNewEventTime()J
    .locals 2

    .prologue
    .line 857
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getCreateNewEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultPaddingHeight()I
    .locals 1

    .prologue
    .line 2220
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDefaultMargin:I

    return v0
.end method

.method public getEventLayoutEndX()I
    .locals 2

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStartX:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStopX:I

    goto :goto_0
.end method

.method public getEventLayoutStartX()I
    .locals 1

    .prologue
    .line 1564
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHorizontalMargin:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mEventLayoutStartX:I

    goto :goto_0
.end method

.method public getGridBottomPadding()I
    .locals 3

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getGridHourStartOffset()I
    .locals 4

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineOffsetOneHour()I

    move-result v0

    .line 2107
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getLimitedNegativeOffset(I)I

    move-result v0

    return v0

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 2100
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2101
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getTimeOffsetOneHour(Lcom/android/calendar/time/Time;)I

    move-result v0

    goto :goto_0

    .line 2103
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStartOfDay:I

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I

    move-result v1

    sget v2, Lcom/android/calendar/timely/TimelyDayView;->GRID_START_HOUR:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getGridTimeStartOffset(Lcom/android/calendar/time/Time;)I
    .locals 1

    .prologue
    .line 2115
    if-nez p1, :cond_0

    .line 2117
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourStartOffset()I

    move-result v0

    .line 2123
    :goto_0
    return v0

    .line 2121
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->getTimeOffsetOneHour(Lcom/android/calendar/time/Time;)I

    move-result v0

    .line 2123
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getLimitedNegativeOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getJulianDay()I
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    return v0
.end method

.method public getListenerTag()I
    .locals 2

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2050
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2051
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2054
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 2065
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mUpdateListenerType:I

    return v0
.end method

.method protected getMonthHeaderTextX(Landroid/graphics/Canvas;)I
    .locals 2

    .prologue
    .line 1367
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderLeftMargin:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderLeftMargin:I

    goto :goto_0
.end method

.method public getNowLineCircleX()I
    .locals 1

    .prologue
    .line 2206
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineEndX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineStartX()I

    move-result v0

    goto :goto_0
.end method

.method protected getNowLineEndX()I
    .locals 2

    .prologue
    .line 2197
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutEndX()I

    move-result v0

    goto :goto_0
.end method

.method protected getNowLineMarginStart()I
    .locals 2

    .prologue
    .line 2201
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    :goto_0
    return v0

    .line 2202
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineSpacing:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final getNowLineRadius()I
    .locals 1

    .prologue
    .line 2227
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNowLineDiameter:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getNowLineStartX()I
    .locals 2

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNowLineMarginStart()I

    move-result v0

    .line 2190
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getEventLayoutStartX()I

    move-result v0

    .line 2193
    :cond_0
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getPosition()I

    move-result v0

    return v0
.end method

.method getSelectedTimeInMillis(I)J
    .locals 3

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getRecycleTime()Lcom/android/calendar/time/Time;

    move-result-object v0

    .line 617
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    iget-object v2, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0}, Lcom/android/calendar/time/Time;->calculateDayHourMillis(IILjava/lang/String;Lcom/android/calendar/time/Time;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickyAllDayEventsView()Lcom/android/calendar/timely/StickyAllDayEventsView;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mStickyAllDayEventsView:Lcom/android/calendar/timely/StickyAllDayEventsView;

    return-object v0
.end method

.method public getTime()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getTime()Lcom/android/calendar/time/Time;

    move-result-object v0

    return-object v0
.end method

.method public final getViewWidth()I
    .locals 1

    .prologue
    .line 2234
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mViewWidth:I

    return v0
.end method

.method protected getWeekHeaderTextX(Landroid/graphics/Canvas;)I
    .locals 2

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderLeftMargin:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderLeftMargin:I

    goto :goto_0
.end method

.method public final hasItems()Z
    .locals 1

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    return v0
.end method

.method public invalidateChips()V
    .locals 4

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getChildCount()I

    move-result v1

    .line 1220
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1221
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1222
    instance-of v3, v2, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v3, :cond_0

    .line 1223
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_1
    return-void
.end method

.method public isMeasured()Z
    .locals 1

    .prologue
    .line 2299
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsMeasured:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    return v0
.end method

.method public isWaitingForData()Z
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2272
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2273
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2275
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2276
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2277
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2278
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2280
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2304
    packed-switch p1, :pswitch_data_0

    .line 2345
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2306
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 2307
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateCurrentTime()V

    .line 2308
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->invalidate()V

    .line 2309
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    iput-object p2, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 2310
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 2311
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p2}, Lcom/android/calendar/time/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->invalidate()V

    goto :goto_0

    .line 2315
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    .line 2317
    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getMonth()I

    move-result v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0xc

    .line 2316
    invoke-static {v1, v2}, Lcom/android/calendar/timely/MonthHeaderBitmapRequestKey;->forMonth(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    goto :goto_0

    .line 2321
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateFirstDayOfWeek()V

    .line 2322
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->invalidate()V

    .line 2323
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDateInfo:[I

    if-eqz v0, :cond_1

    .line 2324
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDateInfo:[I

    .line 2325
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekNumber()I

    move-result v2

    .line 2324
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderText:Ljava/lang/String;

    .line 2327
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->remeasure()V

    .line 2328
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->requestLayout()V

    goto :goto_0

    .line 2333
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDateInfo:[I

    if-eqz v0, :cond_0

    .line 2334
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDateInfo:[I

    .line 2335
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekNumber()I

    move-result v2

    .line 2334
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderText:Ljava/lang/String;

    .line 2336
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->invalidate()V

    goto/16 :goto_0

    .line 2340
    :pswitch_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/GridChipGeometry;->setGridHourCellHeight(F)V

    .line 2341
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->remeasure()V

    .line 2342
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->requestLayout()V

    goto/16 :goto_0

    .line 2304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2072
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 2073
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2075
    sget v1, Lcom/android/calendar/R$string;->showing_view:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/calendar/R$string;->hourly_view_label:I

    .line 2076
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2075
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2077
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2079
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 2080
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2081
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "day_toggle"

    .line 2080
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getTop()I

    move-result v2

    .line 2083
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourStartOffset()I

    move-result v3

    move v5, v4

    .line 2082
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/timely/OnTimelineModeChangedListener;->onModeChanged(IIIII)V

    .line 2085
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2284
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2285
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2287
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2289
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2290
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2291
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 2293
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1461
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    if-eqz v0, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1465
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawHours(Landroid/graphics/Canvas;)V

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawGridlines(Landroid/graphics/Canvas;)V

    .line 1473
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isTabletDayView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1474
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getVerticalGridX()I

    move-result v0

    .line 1475
    invoke-direct {p0, v6}, Lcom/android/calendar/timely/TimelyDayView;->setObjectToDraw(I)V

    .line 1476
    int-to-float v1, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1478
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawWeekHeader(Landroid/graphics/Canvas;)V

    .line 1479
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawNowLine(Landroid/graphics/Canvas;)V

    .line 1484
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mFirstCanOpenEvent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "TimelyDayView onDraw"

    .line 1487
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 1488
    iput-boolean v6, p0, Lcom/android/calendar/timely/TimelyDayView;->mFirstCanOpenEvent:Z

    goto :goto_0

    .line 1468
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawMonthHeader(Landroid/graphics/Canvas;)V

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->drawYearHeader(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawWeekHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1616
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1617
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/android/calendar/timely/TimelyDayView;->layoutAllDayEvents(II)V

    .line 934
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->layoutTimedEvents()V

    .line 935
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->layoutCreateNewEventView()V

    .line 936
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->layoutHeaderView()V

    .line 937
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mForceShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNoEventsView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->layoutNoEventsTodayView()V

    .line 940
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->maybeUpdateMonthHeaderParallax()V

    .line 941
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->updateDayHeaderViewPosition()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 888
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDoNotDraw:Z

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p0, v3, v3}, Lcom/android/calendar/timely/TimelyDayView;->setMeasuredDimension(II)V

    .line 918
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 893
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 894
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setViewWidth(I)V

    .line 897
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewGridMeasuredHeight:I

    .line 901
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mSetToParentHeight:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->isToday()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->isWaitingForData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 905
    iput-boolean v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mSetToParentHeight:Z

    .line 906
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    .line 913
    :goto_1
    int-to-float v3, v0

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v4}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v4

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 915
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimationHeightAdjustement:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/TimelyDayView;->setMeasuredDimension(II)V

    .line 917
    iput-boolean v5, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsMeasured:Z

    goto :goto_0

    .line 907
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-eqz v0, :cond_2

    .line 908
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayViewAgendaMeasuredHeight:I

    .line 909
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->measureChildren()V

    goto :goto_1

    .line 911
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getNoItemsAgendaViewHeight()I

    move-result v0

    goto :goto_1
.end method

.method public onScrolled(I)V
    .locals 1

    .prologue
    .line 1995
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->maybeUpdateMonthHeaderParallax()V

    .line 1997
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 2001
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->updateDayHeaderViewPosition()V

    .line 2003
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->setViewWidth(I)V

    .line 863
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->remeasure()V

    .line 864
    return-void
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 2

    .prologue
    .line 1671
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    if-eq p2, v0, :cond_0

    .line 1678
    :goto_0
    return-void

    .line 1675
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/MonthData;->getDateInfo(I)[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Ljava/util/List;[IZ)V

    .line 1677
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1656
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    if-eq p2, v0, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1659
    :cond_0
    invoke-static {p2}, Lcom/android/calendar/Utils;->getDateInfo(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Ljava/util/List;[IZ)V

    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDataLoaded:Z

    goto :goto_0
.end method

.method protected onUpdate(Ljava/util/List;[IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1682
    const-string v0, "onUpdate"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 1683
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mIsMeasured:Z

    .line 1685
    iput-object p2, p0, Lcom/android/calendar/timely/TimelyDayView;->mDateInfo:[I

    .line 1686
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCurrentTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 1688
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setAlpha(F)V

    .line 1689
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    const v4, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setPosition(I)V

    .line 1690
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawMonthInDayHeader()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setShouldDrawMonthText(Z)V

    .line 1691
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v3

    invoke-virtual {v0, p2, v3}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setDateInfo([IZ)V

    .line 1693
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/calendar/DateTimeFormatHelper;->getMonthText([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderText:Ljava/lang/String;

    .line 1696
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->instantiateMonthHeaderDrawable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/TimelyDayView;->initializeMonthHeader([I)V

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfWeek()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1701
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    .line 1702
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->getWeekNumber()I

    move-result v3

    .line 1701
    invoke-virtual {v0, p2, v2, v3}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderText:Ljava/lang/String;

    .line 1705
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawYearHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1706
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/TimelyDayView;->initializeYearHeader([I)V

    .line 1709
    :cond_3
    if-eqz p1, :cond_b

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    .line 1710
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-eqz v0, :cond_4

    .line 1711
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mBaseDate:Lcom/android/calendar/time/Time;

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    invoke-virtual {v0, v3}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 1712
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayView;->loadTimelineItems(Ljava/util/List;)V

    .line 1713
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->initializeText()V

    .line 1714
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/TimelyDayView;->addViewIfPossible(Landroid/view/View;Z)V

    .line 1719
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mHasItems:Z

    if-nez v0, :cond_8

    .line 1720
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->removeAllViews()V

    .line 1721
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 1722
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 1723
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->initializeText()V

    .line 1725
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p3, :cond_8

    .line 1726
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/TimelyDayView;->addViewIfPossible(Landroid/view/View;Z)V

    .line 1727
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawNoEventsView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1729
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/TimelyDayView;->addViewIfPossible(Landroid/view/View;Z)V

    .line 1730
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    sget v3, Lcom/android/calendar/R$string;->no_events_for_day:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mNoEventsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1735
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isToday()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p3, :cond_c

    :cond_9
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mForceShow:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->isCreateNewEventTimeInDay()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1737
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->installCreateEventView()V

    .line 1744
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1745
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    .line 1746
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1747
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1748
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    :cond_a
    iput v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimationHeightAdjustement:I

    .line 1752
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->remeasure()V

    .line 1753
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->requestLayout()V

    .line 1754
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->invalidateChips()V

    .line 1757
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawWeekHeader()Z

    move-result v0

    .line 1758
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setFocusable(Z)V

    .line 1759
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setFocusableInTouchMode(Z)V

    .line 1760
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelyDayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1761
    if-eqz v0, :cond_e

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setImportantForAccessibility(I)V

    .line 1763
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 1764
    return-void

    :cond_b
    move v0, v2

    .line 1709
    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1735
    goto :goto_1

    .line 1739
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 1762
    :cond_e
    const/4 v1, 0x2

    goto :goto_3
.end method

.method public performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1262
    iget-object v3, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1268
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 1269
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1271
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1272
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->swipe()V

    .line 1286
    :goto_1
    return-void

    .line 1269
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 1277
    :goto_2
    if-ge v1, v4, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1279
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1280
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->swipe()V

    goto :goto_1

    .line 1277
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1285
    :cond_3
    sget-object v0, Lcom/android/calendar/timely/TimelyDayView;->TAG:Ljava/lang/String;

    const-string v1, "Failing to perform delayed action due to chip not found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/timely/DelayedUpdateHelper;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 1841
    return-void
.end method

.method public recycleDayView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2249
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2250
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/TimelyDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2251
    instance-of v0, v1, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2252
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 2253
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    .line 2254
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    .line 2256
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-eqz v0, :cond_2

    .line 2259
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;->unbind()V

    .line 2260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2263
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2264
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCollapsingChips:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2265
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mAnimatingDoneBundleIn:Z

    .line 2266
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayView;->mShouldDrawYearHeader:Z

    .line 2267
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDayHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setTranslationY(F)V

    .line 2268
    return-void
.end method

.method public removeCreateNewEventView()V
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->removeView(Landroid/view/View;)V

    .line 1601
    :cond_0
    return-void
.end method

.method public setJulianDay(I)V
    .locals 0

    .prologue
    .line 1641
    iput p1, p0, Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I

    .line 1642
    return-void
.end method

.method public setListenerTag(I)V
    .locals 1

    .prologue
    .line 2044
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayView;->setTag(Ljava/lang/Object;)V

    .line 2045
    return-void
.end method

.method public setOnTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DelayedUpdateHelper;->setOnTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 789
    return-void
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-object v3, p1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 1240
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1241
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mAllDayChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1243
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1244
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->supportsSwipe()Z

    move-result v0

    .line 1255
    :goto_1
    return v0

    .line 1241
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1248
    :goto_2
    if-ge v2, v4, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mTimedChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 1250
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1251
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->supportsSwipe()Z

    move-result v0

    goto :goto_1

    .line 1248
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1255
    goto :goto_1
.end method

.method public shouldDrawYearHeader(Z)V
    .locals 0

    .prologue
    .line 1493
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelyDayView;->mShouldDrawYearHeader:Z

    .line 1494
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 883
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView;->mMonthHeaderDrawable:Lcom/android/calendar/timely/LargeThreadpoolBitmapDrawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
