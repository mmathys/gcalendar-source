.class public Lcom/android/calendar/timely/animations/EventInfoAnimationData;
.super Ljava/lang/Object;
.source "EventInfoAnimationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/animations/EventInfoAnimationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCalendarView:I

.field private final mCurrentJulianDay:I

.field private final mOrientation:I

.field private final mPosition:Landroid/graphics/Rect;

.field private final mShowImages:Z

.field private final mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mPosition:Landroid/graphics/Rect;

    .line 25
    iput p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCurrentJulianDay:I

    .line 26
    iput p3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mOrientation:I

    .line 27
    iput p4, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCalendarView:I

    .line 28
    iput-boolean p5, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mShowImages:Z

    .line 29
    if-nez p6, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    invoke-interface {p6}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v1

    .line 33
    invoke-interface {p6}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;-><init>(FZ)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarView()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCalendarView:I

    return v0
.end method

.method public getChipPositionOnScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentJulianDay()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCurrentJulianDay:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mOrientation:I

    return v0
.end method

.method public getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    return-object v0
.end method

.method public shouldShowImages()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mShowImages:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCurrentJulianDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mCalendarView:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mShowImages:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    # getter for: Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->gridModeRatio:F
    invoke-static {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->access$000(Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->mTimelineInfo:Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;

    # getter for: Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->inGridMode:Z
    invoke-static {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;->access$100(Lcom/android/calendar/timely/animations/EventInfoAnimationData$FakeTimelineInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 72
    goto :goto_0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_1

    :cond_3
    move v1, v2

    .line 76
    goto :goto_2
.end method
