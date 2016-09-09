.class public abstract Lcom/android/calendar/editor/EditSegment;
.super Landroid/support/v7/widget/GridLayout;
.source "EditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/editor/EditSegment$Callback;,
        Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/GridLayout;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDefaultPadding:I

.field private mDisposed:Z

.field private mDivider:Landroid/view/View;

.field protected mEditInput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TInputType;"
        }
    .end annotation
.end field

.field private final mEditInputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TInputType;>;"
        }
    .end annotation
.end field

.field private mHideKeyboardHelper:Landroid/view/View$OnTouchListener;

.field private mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedInstanceState:Landroid/os/Bundle;

.field protected mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

.field protected mSegmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<TInputType;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Lcom/android/calendar/editor/EditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/EditSegment$1;-><init>(Lcom/android/calendar/editor/EditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 121
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInputClass:Ljava/lang/Class;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_segment_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/editor/EditSegment;->mDefaultPadding:I

    .line 124
    return-void
.end method


# virtual methods
.method public addExtraBottomPadding()V
    .locals 5

    .prologue
    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_segment_list_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 373
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingRight()I

    move-result v3

    .line 374
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    .line 373
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/calendar/editor/EditSegment;->setPadding(IIII)V

    .line 375
    return-void
.end method

.method public addExtraTopPadding()V
    .locals 4

    .prologue
    .line 361
    .line 362
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_segment_list_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingRight()I

    move-result v2

    .line 364
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getPaddingBottom()I

    move-result v3

    .line 363
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/calendar/editor/EditSegment;->setPadding(IIII)V

    .line 365
    return-void
.end method

.method public applyChangeAnimated(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public canApplyChangeAnimated(Ljava/lang/String;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract canBeChanged(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)Z"
        }
    .end annotation
.end method

.method protected clearSavedInstanceState()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 447
    return-void
.end method

.method protected clearSavedInstanceStateAfterOnSetInput()V
    .locals 0

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->clearSavedInstanceState()V

    .line 431
    return-void
.end method

.method protected collectChildrenContentDescription()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getChildrenForAccessibility()Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 503
    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->getIterableTextForAccessibility(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 506
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 511
    :cond_2
    return-object v1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/editor/EditSegment;->mDisposed:Z

    .line 189
    return-void
.end method

.method protected getChildrenForAccessibility()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getChildCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getChildCount()I

    move-result v2

    .line 520
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 523
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    return-object v1
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getHideKeyboardHelper()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mHideKeyboardHelper:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/calendar/editor/EditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/editor/EditSegment$2;-><init>(Lcom/android/calendar/editor/EditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mHideKeyboardHelper:Landroid/view/View$OnTouchListener;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mHideKeyboardHelper:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected getIterableTextForAccessibility(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 488
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSegmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSegmentId:Ljava/lang/String;

    return-object v0
.end method

.method protected getStateKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected hide()V
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->setVisibility(I)V

    .line 451
    return-void
.end method

.method public initSegment(Ljava/lang/String;Lcom/android/calendar/editor/EditSegmentController;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSegmentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "initSegment invoked multiple times."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 134
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSegmentId:Ljava/lang/String;

    .line 135
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegmentController;

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interruptSavingProcess(Landroid/app/FragmentManager;)Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method protected isActive()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/calendar/editor/EditSegment;->mActive:Z

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/calendar/editor/EditSegment;->mDisposed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public onAfterPrepareForSave()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onDidEnterFullScreen(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method protected abstract onDisposeInput(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation
.end method

.method public onPrepareForSave()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/calendar/editor/EditSegment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 279
    return-void
.end method

.method public onRestoreViewState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method protected abstract onSetInput(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation
.end method

.method public onShowKeyboardIfNeeded()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public promptBeforeSaving(Lcom/android/calendar/editor/EditSegment$Callback;)Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public resetActive()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/editor/EditSegment;->mActive:Z

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/calendar/editor/EditSegment;->mActive:Z

    .line 201
    return-void
.end method

.method public setDivider(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/calendar/editor/EditSegment;->mDivider:Landroid/view/View;

    .line 351
    return-void
.end method

.method public setInput(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInputClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    .line 184
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->onDisposeInput(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v3, p0, Lcom/android/calendar/editor/EditSegment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInputClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->onSetInput(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 176
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mObservableCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v3, p0, Lcom/android/calendar/editor/EditSegment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->clearSavedInstanceStateAfterOnSetInput()V

    .line 181
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->showOrHide()V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/android/calendar/editor/EditSegment;->mActive:Z

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method protected setToChildrenContentDescription()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/calendar/editor/EditSegment;->collectChildrenContentDescription()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 535
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_0
    return-void
.end method

.method public showOrHide()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment;->mEditInput:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->canBeChanged(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 459
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/editor/EditSegment;->setFocusable(Z)V

    .line 460
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 461
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
