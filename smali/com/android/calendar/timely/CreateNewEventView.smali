.class public Lcom/android/calendar/timely/CreateNewEventView;
.super Landroid/widget/TextView;
.source "CreateNewEventView.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sGridHourThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsTablet:Z

.field private static final sRecycleTime:Lcom/android/calendar/time/Time;

.field private static sTextSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackground:Landroid/graphics/drawable/PaintDrawable;

.field private final mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

.field private mDefaultDuration:J

.field private mDetector:Landroid/view/GestureDetector;

.field private mGridHourHeight:I

.field private mIsMultiDayView:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/calendar/timely/CreateNewEventView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/CreateNewEventView;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    .line 84
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;-><init>(Lcom/android/calendar/timely/CreateNewEventView;Lcom/android/calendar/timely/CreateNewEventView$1;)V

    invoke-direct {v0, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDetector:Landroid/view/GestureDetector;

    .line 85
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    sget v3, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setAlpha(F)V

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    iget-object v3, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/PaintDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    .line 99
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grids_event_text_size_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grids_event_text_size_mid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grids_event_text_size_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    .line 104
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grid_hour_threshold_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grid_hour_threshold_mid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    sget v3, Lcom/android/calendar/R$dimen;->grid_hour_threshold_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/timely/CreateNewEventView;->sIsTablet:Z

    .line 111
    :cond_0
    sget-boolean v0, Lcom/android/calendar/timely/CreateNewEventView;->sIsTablet:Z

    invoke-static {p1, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getLastUsedView(Landroid/content/Context;Z)I

    move-result v0

    .line 112
    sget v3, Lcom/android/calendar/R$id;->list_week_view_3days:I

    if-eq v0, v3, :cond_1

    sget v3, Lcom/android/calendar/R$id;->week_view:I

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mIsMultiDayView:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mIsMultiDayView:Z

    if-eqz v0, :cond_3

    .line 115
    sget v0, Lcom/android/calendar/R$string;->week_view_new_event_hint:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setGravity(I)V

    .line 117
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/calendar/timely/CreateNewEventView;->setPadding(IIII)V

    .line 124
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 112
    goto :goto_0

    .line 119
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->day_view_new_event_hint:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/calendar/timely/CreateNewEventView;->setGravity(I)V

    .line 121
    sget v0, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_padding:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sget v3, Lcom/android/calendar/R$dimen;->chip_grid_vertical_padding:I

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 121
    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/android/calendar/timely/CreateNewEventView;->setPadding(IIII)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/CreateNewEventView;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/CreateNewEventView;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    return-wide v0
.end method

.method public static getSelectedHourInDay(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 168
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getCreateNewEventTime()J

    move-result-wide v2

    .line 170
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 175
    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 176
    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iget-wide v4, v1, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 177
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->hour:I

    goto :goto_0
.end method

.method private getTextSizeScalableGrid()I
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 266
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/timely/CreateNewEventView;->isPhoneMultiDayView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sGridHourThresholds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    iget v2, p0, Lcom/android/calendar/timely/CreateNewEventView;->mGridHourHeight:I

    if-lt v2, v0, :cond_0

    .line 271
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    :goto_1
    return v0

    :cond_2
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sTextSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private isPhoneMultiDayView()Z
    .locals 1

    .prologue
    .line 278
    sget-boolean v0, Lcom/android/calendar/timely/CreateNewEventView;->sIsTablet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mIsMultiDayView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeSelectedTime()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->setCreateNewEventTime(J)V

    .line 154
    return-void
.end method

.method public static setSelectedTime(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 159
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iput-boolean v2, v0, Lcom/android/calendar/time/Time;->allDay:Z

    .line 160
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iput p2, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 161
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iput v2, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 162
    sget-object v0, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    iput v2, v0, Lcom/android/calendar/time/Time;->second:I

    .line 163
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/timely/CreateNewEventView;->sRecycleTime:Lcom/android/calendar/time/Time;

    .line 164
    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->toMillisWithFallback()J

    move-result-wide v2

    .line 163
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->setCreateNewEventTime(J)V

    .line 165
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3c

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 216
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 217
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-static {v0, v2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/timely/CreateNewEventView;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    invoke-virtual {v0, v2, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 226
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 242
    sparse-switch p1, :sswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 244
    :sswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    .line 245
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_0

    .line 250
    :sswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 253
    :sswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mGridHourHeight:I

    .line 254
    invoke-direct {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getTextSizeScalableGrid()I

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setTextSize(IF)V

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->invalidate()V

    goto :goto_0

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public refreshFromModel()V
    .locals 7

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J

    .line 201
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/android/calendar/timely/CreateNewEventView;->mBackground:Landroid/graphics/drawable/PaintDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/PaintDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    iget-wide v0, p0, Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J

    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getDuration()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    .line 207
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J

    const v6, 0x80011

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/android/calendar/timely/CreateNewEventView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->new_event_chip_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CreateNewEventView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J

    .line 185
    return-void
.end method
