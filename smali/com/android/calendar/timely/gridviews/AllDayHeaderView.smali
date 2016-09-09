.class public Lcom/android/calendar/timely/gridviews/AllDayHeaderView;
.super Landroid/view/ViewGroup;
.source "AllDayHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;
    }
.end annotation


# static fields
.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllDayCellHeight:I

.field private final mAllDayEventChips:Ljava/util/ArrayList;
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

.field private final mAllDayTopMargin:I

.field private mCellWidth:F

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mColumnLeftPositions:[I

.field private final mContext:Landroid/content/Context;

.field private final mCountChipsCollapsed:I

.field private mCountOfDays:I

.field private final mExpandButtons:[Landroid/widget/TextView;

.field private mExpandingDay:I

.field private mFirstJulianDay:I

.field private mHeight:I

.field private mHorizontalMargin:I

.field private final mIsDayViewInPhone:Z

.field private mIsExpanded:Z

.field private final mIsPortraitWeekInPhone:Z

.field private final mIsRtl:Z

.field private final mMaxCollapseHeight:I

.field private final mResources:Landroid/content/res/Resources;

.field private final mRobotoMediumTypeface:Landroid/graphics/Typeface;

.field private mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field private mTodayIndex:I

.field private final mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

.field private final mVerticalMargin:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandingDay:I

    .line 105
    new-instance v0, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;

    invoke-direct {v0}, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventCmp:Ljava/util/Comparator;

    .line 117
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    .line 119
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v3

    .line 120
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsRtl:Z

    .line 123
    sget-object v0, Lcom/android/calendar/R$styleable;->AllDayHeaderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    sget v4, Lcom/android/calendar/R$styleable;->AllDayHeaderView_count_days:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    .line 133
    if-nez v3, :cond_2

    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    .line 134
    if-nez v3, :cond_3

    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    .line 135
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsPortraitWeekInPhone:Z

    .line 137
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ne v0, v1, :cond_0

    .line 138
    :cond_0
    iput v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountChipsCollapsed:I

    .line 140
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->phone_day_view_all_day_top_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayTopMargin:I

    .line 142
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v0, :cond_5

    .line 143
    sget v0, Lcom/android/calendar/R$dimen;->phone_day_view_all_day_chip_spacing:I

    .line 142
    :goto_4
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mVerticalMargin:I

    .line 145
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHorizontalMargin:I

    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->grid_all_day_event_min_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    .line 149
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountChipsCollapsed:I

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayTopMargin:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mMaxCollapseHeight:I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    .line 153
    iput-boolean v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    .line 154
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    .line 155
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    .line 160
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v0, :cond_7

    .line 161
    sget v0, Lcom/android/calendar/R$dimen;->timeline_event_text_size:I

    .line 160
    :goto_6
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 162
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$color;->week_show_more:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 164
    iget-object v6, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v0, :cond_8

    .line 165
    sget v0, Lcom/android/calendar/R$dimen;->timeline_single_chip_vertical_padding:I

    .line 164
    :goto_7
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_padding:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move v0, v2

    .line 170
    :goto_8
    iget v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v0, v8, :cond_9

    .line 171
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v8, v0

    .line 172
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-virtual {v8, v7, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 173
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 174
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    int-to-float v9, v3

    invoke-virtual {v8, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    iget-object v9, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    iget-object v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v8, v8, v0

    new-instance v9, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;

    invoke-direct {v9, p0, v0, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$1;-><init>(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;ILcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 130
    :cond_1
    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 133
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 135
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 141
    goto/16 :goto_3

    .line 143
    :cond_5
    sget v0, Lcom/android/calendar/R$dimen;->grid_all_day_chip_spacing:I

    goto/16 :goto_4

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->all_day_chip_horizontal_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto/16 :goto_5

    .line 161
    :cond_7
    sget v0, Lcom/android/calendar/R$dimen;->default_event_text_size:I

    goto/16 :goto_6

    .line 166
    :cond_8
    sget v0, Lcom/android/calendar/R$dimen;->chip_grid_vertical_padding:I

    goto :goto_7

    .line 189
    :cond_9
    new-instance v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;-><init>(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 191
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 194
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandingDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    return v0
.end method

.method private clearChips(I)V
    .locals 4

    .prologue
    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 319
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 321
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->removeView(Landroid/view/View;)V

    .line 328
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->postSubtreeChanged()V

    .line 329
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_1

    .line 332
    :cond_2
    return-void
.end method

.method private remeasure()I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 340
    :goto_0
    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v0, v3, :cond_1

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountChipsCollapsed:I

    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/Utils;->hideAllDayChips(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    :cond_1
    move v0, v1

    .line 349
    :goto_1
    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v0, v3, :cond_2

    .line 351
    iget-boolean v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsRtl:Z

    if-eqz v3, :cond_11

    .line 352
    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 354
    :goto_2
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v4, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 362
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_3

    .line 363
    sget-object v4, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected chip starting outside the bounds of the week"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 366
    sget-object v4, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected chip ending outside the bounds of the week"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    :cond_4
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v1, v5}, Lcom/android/calendar/Utils;->clamp(III)I

    move-result v6

    .line 370
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v1, v5}, Lcom/android/calendar/Utils;->clamp(III)I

    move-result v5

    .line 375
    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayTopMargin:I

    iget v8, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    iget v9, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v8, v9

    .line 376
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v8, v4

    .line 379
    iget-object v9, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    iget-boolean v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsRtl:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    aget v4, v9, v4

    .line 380
    iget-object v9, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    iget-boolean v10, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsRtl:Z

    if-eqz v10, :cond_7

    :goto_5
    aget v5, v9, v6

    .line 382
    iget v6, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHorizontalMargin:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    add-int/2addr v6, v8

    invoke-virtual {v0, v4, v8, v5, v6}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 389
    iget-boolean v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-eqz v4, :cond_5

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    .line 393
    :cond_5
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v4, v3, :cond_10

    .line 394
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_6
    move v3, v0

    .line 396
    goto/16 :goto_3

    :cond_6
    move v4, v6

    .line 379
    goto :goto_4

    :cond_7
    move v6, v5

    .line 380
    goto :goto_5

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {v0, v3, p0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->onCountChipsChanges(ILandroid/view/View;)V

    :cond_9
    move v4, v1

    .line 403
    :goto_7
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v4, v0, :cond_e

    .line 404
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-nez v0, :cond_d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_d

    .line 405
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    .line 406
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->postSubtreeChanged()V

    .line 410
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v6, v0, v4

    iget-object v7, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsPortraitWeekInPhone:Z

    if-eqz v0, :cond_c

    .line 412
    sget v0, Lcom/android/calendar/R$plurals;->short_invisible_all_day_events:I

    move v5, v0

    .line 414
    :goto_8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 415
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v1

    .line 410
    invoke-virtual {v7, v5, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 417
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :cond_b
    :goto_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 413
    :cond_c
    sget v0, Lcom/android/calendar/R$plurals;->invisible_events:I

    move v5, v0

    goto :goto_8

    .line 421
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 422
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->removeView(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->postSubtreeChanged()V

    goto :goto_9

    .line 428
    :cond_e
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayTopMargin:I

    add-int/2addr v0, v1

    .line 430
    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-eqz v1, :cond_f

    :goto_a
    return v0

    :cond_f
    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mMaxCollapseHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_a

    :cond_10
    move v0, v3

    goto/16 :goto_6

    :cond_11
    move v3, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    return-void
.end method

.method public clearChips()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->removeAllViews()V

    .line 306
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 307
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->remeasure()I

    .line 312
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->requestLayout()V

    .line 313
    return-void
.end method

.method public disableHorizontalMargin()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHorizontalMargin:I

    .line 202
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 508
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    .line 509
    # invokes: Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I
    invoke-static {v1, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->access$300(Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCountChips()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountChipsCollapsed()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountChipsCollapsed:I

    return v0
.end method

.method public getCountOfDays()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    return v0
.end method

.method public getDayWidth()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    return v0
.end method

.method public getEventHeight()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 251
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHorizontalMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mMaxCollapseHeight:I

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayCellHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mVerticalMargin:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I

    aget v4, v4, v0

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHorizontalMargin:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mMaxCollapseHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 222
    const/4 v0, 0x0

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 226
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 227
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    :cond_0
    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mWidth:I

    if-eq v4, v2, :cond_1

    .line 229
    iput v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mWidth:I

    .line 230
    int-to-float v0, v2

    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F

    move v0, v1

    .line 234
    :cond_1
    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHeight:I

    if-eq v2, v3, :cond_3

    .line 238
    :goto_0
    if-eqz v1, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->remeasure()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHeight:I

    .line 240
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setMeasuredDimension(II)V

    .line 246
    :goto_1
    return-void

    .line 245
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 267
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->clearChips(I)V

    .line 274
    if-eqz v0, :cond_5

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 276
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v1}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 281
    invoke-virtual {v1, v4}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 282
    if-le p3, v3, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 283
    invoke-virtual {v1, p2}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 284
    iget-boolean v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsDayViewInPhone:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_3
    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->postSubtreeChanged()V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 282
    goto :goto_2

    :cond_4
    move v2, v3

    .line 285
    goto :goto_3

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventCmp:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mAllDayEventChips:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5, v3}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZ)V

    .line 297
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->remeasure()I

    .line 298
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->requestLayout()V

    .line 299
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->invalidate()V

    goto :goto_0
.end method

.method public setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 530
    return-void
.end method

.method public setExpandedState(Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 438
    iget v5, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandingDay:I

    .line 439
    iput v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandingDay:I

    .line 440
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-ne p1, v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 444
    :cond_0
    iput-boolean p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    move v0, v1

    .line 445
    :goto_1
    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I

    if-ge v0, v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v3, v2, v0

    iget-boolean v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mIsExpanded:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 446
    goto :goto_2

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->invalidate()V

    .line 450
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->requestLayout()V

    .line 451
    if-eq v5, v4, :cond_5

    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildCount()I

    move-result v6

    .line 454
    const/16 v2, 0x40

    move v3, v1

    move v1, v4

    .line 456
    :goto_3
    if-ge v3, v6, :cond_4

    .line 457
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/timely/TimelyChip;

    if-nez v0, :cond_3

    move v0, v1

    move v1, v2

    .line 456
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 460
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 461
    iget v7, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    add-int/2addr v7, v5

    .line 462
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v8

    if-gt v8, v7, :cond_6

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v8

    if-gt v7, v8, :cond_6

    .line 463
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v8

    iget v9, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountChipsCollapsed:I

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_6

    .line 464
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v8

    if-ge v8, v2, :cond_6

    .line 465
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    # invokes: Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Lcom/android/calendar/timely/TimelyChip;II)I
    invoke-static {v1, v0, v3, v7}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->access$200(Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;Lcom/android/calendar/timely/TimelyChip;II)I

    move-result v1

    .line 466
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_4

    .line 469
    :cond_4
    if-eq v1, v4, :cond_5

    .line 470
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->sendEventForVirtualView(II)Z

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTouchHelper:Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->postSubtreeChanged()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_4
.end method

.method public setFirstJulianDay(I)V
    .locals 3

    .prologue
    .line 485
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    if-ne p1, v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 488
    :cond_0
    iput p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    .line 489
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTodayIndex:I

    .line 491
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v2, v1, v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mTodayIndex:I

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_1
    sget-object v1, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    goto :goto_2

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->clearChips()V

    goto :goto_0
.end method

.method public setStateManager(Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mStateManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    .line 522
    return-void
.end method
