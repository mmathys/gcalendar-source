.class public Lcom/android/calendar/timely/PinchZoomController;
.super Ljava/lang/Object;
.source "PinchZoomController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomPadding:I

.field private final mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

.field private mCellHeight:I

.field private mCellHeightBeforeScaleGesture:F

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private mGestureCenterHourFromBottom:I

.field private mGridlineHeight:I

.field private mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mMaxCellHeight:I

.field private final mMinCellHeight:I

.field private final mMinYSpan:I

.field private final mOrientation:I

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

.field private mScrollRemainder:F

.field private mScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field private mScrollViewHeight:I

.field private mStartingSpanY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/calendar/timely/PinchZoomController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/PagedScrollView$ScrollManager;)V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/calendar/timely/PinchZoomController$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/PinchZoomController$1;-><init>(Lcom/android/calendar/timely/PinchZoomController;)V

    iput-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 180
    iput-object p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 181
    iput-object p2, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 182
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 184
    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mOrientation:I

    .line 188
    sget v1, Lcom/android/calendar/R$dimen;->grid_hour_height_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mMaxCellHeight:I

    .line 189
    sget v1, Lcom/android/calendar/R$dimen;->grid_hour_height_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mMinCellHeight:I

    .line 190
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/PinchZoomController;->mGridlineHeight:I

    .line 191
    sget v1, Lcom/android/calendar/R$dimen;->min_y_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mMinYSpan:I

    .line 192
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/PinchZoomController;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/PinchZoomController;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mMinCellHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mGridlineHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mMaxCellHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mOrientation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/timely/PinchZoomController;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mMinYSpan:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/calendar/timely/PinchZoomController;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/settings/data/CalendarProperties;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/PinchZoomController;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/timely/PinchZoomController;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/timely/PinchZoomController;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/PinchZoomController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/calendar/timely/PinchZoomController;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/PinchZoomController;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/calendar/timely/PinchZoomController;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F

    return p1
.end method


# virtual methods
.method public processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBottomPadding(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I

    .line 197
    return-void
.end method
