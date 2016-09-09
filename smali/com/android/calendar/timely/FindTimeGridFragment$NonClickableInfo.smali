.class Lcom/android/calendar/timely/FindTimeGridFragment$NonClickableInfo;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonClickableInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    return-void
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 539
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public inGridMode()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method
