.class public abstract Lcom/android/calendar/timely/DayPopUpFragment;
.super Lcom/android/calendar/CreateFabFragment;
.source "DayPopUpFragment.java"

# interfaces
.implements Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;
.implements Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
.implements Lcom/android/calendar/timely/TimelineInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;,
        Lcom/android/calendar/timely/DayPopUpFragment$DayView;
    }
.end annotation


# instance fields
.field protected mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field protected mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

.field protected mJulianDay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/calendar/CreateFabFragment;-><init>()V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/DayPopUpFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getOverlayView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createArguments(I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 394
    const-string v1, "julian_day_item"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    return-object v0
.end method

.method public static createArguments(III)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    const/16 v0, 0x7b2

    if-lt p0, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 381
    if-ltz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 382
    if-ltz p2, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 384
    invoke-static {p0, p1, p2}, Lcom/android/calendar/Utils;->getJulianDay(III)I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/timely/DayPopUpFragment;->createArguments(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0

    :cond_1
    move v0, v2

    .line 381
    goto :goto_1

    :cond_2
    move v1, v2

    .line 382
    goto :goto_2
.end method


# virtual methods
.method protected createDayView()Lcom/android/calendar/timely/DayPopUpFragment$DayView;
    .locals 3

    .prologue
    .line 408
    new-instance v0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V

    return-object v0
.end method

.method protected getArgumentJulianDay()I
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "julian_day_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCreateStartDay()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->getTime()Lcom/android/calendar/time/Time;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogTheme()I
    .locals 1

    .prologue
    .line 321
    sget v0, Lcom/android/calendar/R$style;->DayPopUpTheme:I

    return v0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected getStartDayInterface()Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;
    .locals 0

    .prologue
    .line 357
    return-object p0
.end method

.method public inGridMode()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/android/calendar/CreateFabFragment;->onAttach(Landroid/app/Activity;)V

    .line 401
    check-cast p1, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {p1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 402
    return-void
.end method

.method protected onBackgroundChanged(Lcom/android/calendar/OverlayFragment$OverlayBackground;)V
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    sget v1, Lcom/android/calendar/R$id;->line_separator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 334
    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    sget v1, Lcom/android/calendar/R$color;->separator_above_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/android/calendar/timely/DayPopUpFragment$1;

    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/DayPopUpFragment$1;-><init>(Lcom/android/calendar/timely/DayPopUpFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 192
    sget v0, Lcom/android/calendar/R$layout;->day_pop_up:I

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/timely/DayPopUpFragment;->onCreateFabFrame(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getOverlayView()Landroid/view/View;

    move-result-object v2

    .line 194
    if-nez v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getArgumentJulianDay()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mJulianDay:I

    .line 201
    sget v0, Lcom/android/calendar/R$id;->day_header:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    instance-of v3, v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    if-eqz v3, :cond_1

    .line 203
    check-cast v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iget v3, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mJulianDay:I

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->createDayView()Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    .line 209
    sget v0, Lcom/android/calendar/R$id;->day_scroll:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 211
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    move-object v0, v1

    .line 214
    goto :goto_0
.end method

.method public onTouchOutside()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 308
    instance-of v1, v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    if-eqz v1, :cond_0

    .line 309
    check-cast v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/calendar/OverlayFragment$OverlayListener;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/DayPopUpFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/DayPopUpFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failing to perform delayed action due to view not initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 279
    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method
