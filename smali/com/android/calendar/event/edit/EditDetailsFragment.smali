.class public Lcom/android/calendar/event/edit/EditDetailsFragment;
.super Lcom/android/calendar/event/DetailsDialogFragment;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;
.implements Lcom/android/calendar/editor/EditSegmentController;
.implements Lcom/android/calendar/event/data/AbstractEditManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;,
        Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

.field private mAuxiliaryViewScrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;

.field private mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

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

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

.field private mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/data/AbstractEditManager",
            "<*>;"
        }
    .end annotation
.end field

.field private mEditorTypeId:Ljava/lang/String;

.field private mFullscreenAnimationDuration:J

.field private mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

.field private final mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

.field private mHeaderSegmentsContainerView:Landroid/widget/LinearLayout;

.field private mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadlineColorListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadlineContent:Landroid/view/View;

.field private mHeadlineElevation:I

.field private mHeadlineHiddenMinHeight:I

.field private mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

.field private mIsFullscreenSegmentInHeader:Z

.field private mIsFullscreenSegmentTransitioning:Z

.field private mIsHeadlineVisible:Z

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field private mRippleCoords:Landroid/graphics/Point;

.field private mRippleView:Landroid/view/View;

.field private mRoomBookingPromoManager:Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;

.field private mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

.field private mSavingInProgress:Z

.field private mScrollView:Lcom/android/calendar/editor/EditorScrollView;

.field private mSegments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSegmentsContainerView:Landroid/widget/LinearLayout;

.field private mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

.field private mSoftKeyboardDetector:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSoftKeyboardVisible:Z

.field private mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/calendar/event/DetailsDialogFragment;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z

    .line 237
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$2;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 264
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$3;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 272
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$4;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 320
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$5;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mAuxiliaryViewScrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;

    .line 333
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$6;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardDetector:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isNewItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/edit/EditDetailsFragment;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineElevation:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->detectSoftKeyboardVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/event/edit/EditDetailsFragment;Z)Z
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->onShowingDataView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;ZZ)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->postUpdateAuxiliaryViewLayoutParams()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/calendar/event/edit/EditDetailsFragment;Z)Z
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->updateAuxiliaryViewLayoutParams()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/calendar/event/edit/EditDetailsFragment;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureFullScreenSegmentLayoutAndPosition()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->doSave()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->cancelEdit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getEditorTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/EditDetailsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getOrderedSegments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->redrawSegmentsInView(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;

    return-object p1
.end method

.method private addRoomBookingPromoIfNeeded()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method private cancelEdit()V
    .locals 2

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1938
    instance-of v1, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;

    if-eqz v1, :cond_0

    .line 1939
    check-cast v0, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;

    .line 1940
    invoke-interface {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;->onEditCancel(Landroid/app/DialogFragment;)V

    .line 1942
    :cond_0
    return-void
.end method

.method private detectSoftKeyboardVisible(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 496
    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 499
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 500
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disposeSegments()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 822
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/EditSegment;->setActive(Z)V

    goto :goto_1

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 825
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 826
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->dispose()V

    goto :goto_2

    .line 828
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    goto :goto_0
.end method

.method private doSave()V
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1824
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->onPrepareForSave()V

    goto :goto_0

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->save()V

    .line 1835
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 1841
    :cond_1
    return-void

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1839
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->onAfterPrepareForSave()V

    goto :goto_1
.end method

.method private ensureFullScreenSegmentLayoutAndPosition()V
    .locals 3

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-nez v0, :cond_0

    .line 1801
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "ensureFullScreenSegmentLayoutAndPosition called when not in full screen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$21;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$21;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->requestLayout(Ljava/lang/Runnable;)V

    .line 1820
    return-void
.end method

.method private ensureSegmentsCreated()V
    .locals 6

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getEditorTypeId()Ljava/lang/String;

    move-result-object v2

    .line 778
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditorTypeId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 781
    :cond_0
    iput-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditorTypeId:Ljava/lang/String;

    .line 782
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->disposeSegments()V

    .line 783
    new-instance v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeaderSegmentsContainerView:Landroid/widget/LinearLayout;

    .line 785
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getAccountName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 784
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->createAndAddEditSegmentsMaybeInHeader(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    goto :goto_0
.end method

.method private findSegmentById(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 832
    if-nez p1, :cond_0

    move-object v0, v1

    .line 840
    :goto_0
    return-object v0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 836
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 840
    goto :goto_0
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 760
    :goto_0
    return-object v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 744
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 746
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 749
    goto :goto_0

    .line 751
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 753
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 754
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 755
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 757
    instance-of v1, v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-nez v1, :cond_3

    move-object v0, v2

    .line 758
    goto :goto_0

    .line 760
    :cond_3
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAdditionalHeightForDivider()I
    .locals 2

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getDivider()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1609
    const/4 v0, 0x0

    .line 1611
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getEditorTypeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 808
    const-string v0, "com.android.calendar.event.edit"

    .line 809
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v1, v1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    if-eqz v1, :cond_1

    .line 810
    const-string v0, "com.android.calendar.task.edit"

    .line 814
    :cond_0
    :goto_0
    return-object v0

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v1, v1, Lcom/android/calendar/groove/GrooveEditManager;

    if-eqz v1, :cond_0

    .line 812
    const-string v0, "com.android.calendar.groove.edit"

    goto :goto_0
.end method

.method private getOrderedSegments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 768
    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->findSegmentById(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_0

    .line 770
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    :cond_1
    return-object v1
.end method

.method private guessAuxiliaryViewLayoutParams()V
    .locals 5

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    .line 1645
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1646
    iget v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I

    .line 1647
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$id;->status_bar_protection:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 1650
    iget-boolean v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentInHeader:Z

    if-eqz v3, :cond_2

    .line 1651
    sub-int v2, v1, v2

    .line 1652
    const/4 v1, 0x0

    .line 1659
    :goto_0
    iget v3, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->height:I

    if-ne v3, v2, :cond_0

    iget v3, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    if-eq v3, v1, :cond_1

    .line 1660
    :cond_0
    iput v2, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->height:I

    .line 1661
    iput v1, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    .line 1662
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->requestLayout()V

    .line 1664
    :cond_1
    return-void

    .line 1654
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getAdditionalHeightForDivider()I

    move-result v3

    .line 1655
    iget-object v4, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v4}, Lcom/android/calendar/editor/EditSegment;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    sub-int v2, v1, v2

    .line 1657
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method private initializeSegments()V
    .locals 3

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureSegmentsCreated()V

    .line 979
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 980
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setOtherSegmentsVisible(Lcom/android/calendar/editor/EditSegment;Z)V

    .line 988
    :cond_1
    return-void
.end method

.method private isNewItem()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getInfoUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getCalendarEventModel()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 712
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_4

    .line 719
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 720
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    .line 721
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 722
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/launch/LaunchIntentConstants;->getEditAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 723
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 724
    if-eqz v1, :cond_4

    .line 728
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 736
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newInstance()Lcom/android/calendar/event/edit/EditDetailsFragment;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Object;)Lcom/android/calendar/event/edit/EditDetailsFragment;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;-><init>()V

    .line 363
    instance-of v1, p0, Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_1

    .line 364
    check-cast p0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :cond_1
    instance-of v1, p0, Lcom/android/calendar/timely/TimelineItem;

    if-eqz v1, :cond_2

    .line 366
    check-cast p0, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0

    .line 367
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    .line 368
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setGrooveParcelable(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private onShowingDataView()V
    .locals 0

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->addRoomBookingPromoIfNeeded()V

    .line 1110
    return-void
.end method

.method private postUpdateAuxiliaryViewLayoutParams()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$14;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1673
    return-void
.end method

.method private redrawSegmentsInView(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 789
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 793
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v7

    move v5, v7

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/editor/EditSegment;

    .line 794
    invoke-virtual {v4}, Lcom/android/calendar/editor/EditSegment;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    .line 798
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 799
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getEditorTypeId()Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->addSegmentToContainer(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/android/calendar/editor/EditSegment;IIZ)I

    move-result v6

    .line 800
    add-int/lit8 v5, v5, 0x1

    .line 801
    goto :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 804
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditorSegmentsWrapper;->requestLayout()V

    .line 805
    return-void
.end method

.method private scrollToTop()V
    .locals 2

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$23;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$23;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditorScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2042
    return-void
.end method

.method private setFullScreen(Lcom/android/calendar/editor/EditSegment;ZZ)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1490
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 1500
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1504
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "setFullScreen called with other existing fullscreen segment. This call will result in the existing segment being hidden, not the new segment being shown"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1509
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z

    if-nez v0, :cond_0

    .line 1514
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/EditFragmentLayout;

    .line 1515
    if-eqz v0, :cond_4

    .line 1516
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditFragmentLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1518
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Main view is not displayed in setFullScreen(%s, %s, %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 1519
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1518
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1524
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 1529
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1530
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1533
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1534
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_7

    .line 1536
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, p3}, Lcom/android/calendar/editor/EditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 1537
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z

    .line 1538
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$12;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v5}, Lcom/android/calendar/editor/EditorScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1552
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v5}, Lcom/android/calendar/editor/EditSegment;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1553
    iput-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 1554
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1555
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setElevation(F)V

    .line 1584
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-nez v0, :cond_a

    move v0, v1

    .line 1585
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v3, v5}, Lcom/android/calendar/editor/EditorScrollView;->setFullScreenSegment(Lcom/android/calendar/editor/EditSegment;)V

    .line 1586
    invoke-direct {p0, v0, p3, v4}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineViewVisibility(ZZLjava/util/List;)V

    .line 1587
    if-nez p2, :cond_b

    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setOtherSegmentsVisible(Lcom/android/calendar/editor/EditSegment;Z)V

    goto/16 :goto_0

    .line 1557
    :cond_7
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1560
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 1561
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeaderSegmentsContainerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 1562
    invoke-virtual {v5}, Lcom/android/calendar/editor/EditSegment;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentInHeader:Z

    .line 1563
    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v6, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    .line 1564
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mAuxiliaryViewScrolledChangeListener:Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;

    :goto_5
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    .line 1563
    invoke-virtual {v5, v6, p3, v0, v3}, Lcom/android/calendar/editor/EditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 1565
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1567
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->guessAuxiliaryViewLayoutParams()V

    .line 1569
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->requestLayout()V

    .line 1571
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/calendar/editor/EditorScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1572
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/calendar/editor/EditSegment;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1573
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z

    .line 1574
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$13;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move v0, v2

    .line 1562
    goto :goto_4

    :cond_9
    move-object v0, v3

    .line 1564
    goto :goto_5

    :cond_a
    move v0, v2

    .line 1584
    goto :goto_2

    :cond_b
    move v1, v2

    .line 1587
    goto :goto_3
.end method

.method private setGuestsPosition(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1179
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 1180
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1183
    :cond_1
    return-void
.end method

.method private setHeadlineColor(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1153
    const/4 v0, 0x0

    .line 1155
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v1, :cond_0

    .line 1156
    const/4 v0, 0x1

    .line 1157
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1158
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->dispose()V

    .line 1160
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 1162
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v1, :cond_1

    .line 1165
    if-eqz v0, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColorListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {p1, v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 1173
    :cond_1
    return-void

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setHeadlineViewVisibility(ZZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1677
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsHeadlineVisible:Z

    if-ne v0, p1, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1680
    :cond_0
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsHeadlineVisible:Z

    .line 1682
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/event/edit/EditFragmentLayout;

    .line 1683
    if-eqz v5, :cond_2

    .line 1684
    invoke-virtual {v5}, Lcom/android/calendar/event/edit/EditFragmentLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1685
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Main view is not displayed in setHeadlineViewVisibility(%s, %s)"

    new-array v2, v3, [Ljava/lang/Object;

    .line 1686
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1685
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1689
    :cond_1
    invoke-virtual {v5}, Lcom/android/calendar/event/edit/EditFragmentLayout;->requestLayout()V

    .line 1692
    :cond_2
    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$15;

    invoke-direct {v2, p0, p3}, Lcom/android/calendar/event/edit/EditDetailsFragment$15;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/List;)V

    .line 1705
    if-eqz v5, :cond_7

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentInHeader:Z

    if-nez v0, :cond_7

    .line 1708
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;

    .line 1709
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1710
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    .line 1711
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    iget-wide v6, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAnimationDuration:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1712
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 1713
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1712
    :goto_1
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1714
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1716
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1718
    if-nez p1, :cond_5

    .line 1720
    iget v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I

    .line 1721
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    invoke-virtual {v2}, Lcom/android/calendar/editor/EditorScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1722
    if-lez v1, :cond_4

    .line 1723
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/calendar/event/edit/EditDetailsFragment$16;

    invoke-direct {v6, p0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment$16;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1738
    :goto_2
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$17;

    invoke-direct {v2, p0, v5, v0, v4}, Lcom/android/calendar/event/edit/EditDetailsFragment$17;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/event/edit/EditFragmentLayout;Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move v2, v4

    .line 1762
    :goto_3
    iget-object v6, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/edit/EditDetailsFragment$19;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;IIILcom/android/calendar/event/edit/EditFragmentLayout;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1772
    if-eqz p2, :cond_6

    .line 1773
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1713
    :cond_3
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1

    .line 1736
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v2}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/android/calendar/editor/EditorScrollView;->scrollTo(II)V

    goto :goto_2

    .line 1749
    :cond_5
    iget v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I

    .line 1751
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1752
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1753
    invoke-virtual {v5}, Lcom/android/calendar/event/edit/EditFragmentLayout;->requestLayout()V

    .line 1754
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$18;

    invoke-direct {v1, p0, v5}, Lcom/android/calendar/event/edit/EditDetailsFragment$18;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/event/edit/EditFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move v3, v4

    goto :goto_3

    .line 1775
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto/16 :goto_0

    .line 1778
    :cond_7
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentInHeader:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    .line 1786
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Delaying onAnimationEnd for %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAnimationDuration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1787
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$20;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/EditDetailsFragment$20;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/animation/AnimatorListenerAdapter;)V

    iget-wide v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAnimationDuration:J

    invoke-virtual {v5, v0, v2, v3}, Lcom/android/calendar/event/edit/EditFragmentLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1794
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 1710
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setOtherSegmentsVisible(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 4

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1596
    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 1597
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditSegment;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 1600
    :cond_2
    return-void
.end method

.method private startCancelFlow()V
    .locals 4

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1900
    instance-of v2, v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;

    if-eqz v2, :cond_0

    .line 1901
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->onPrepareForSave()V

    goto :goto_0

    .line 1905
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->isNewEvent()Z

    move-result v0

    .line 1906
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v1}, Lcom/android/calendar/event/data/AbstractEditManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 1907
    invoke-virtual {v1}, Lcom/android/calendar/event/data/AbstractEditManager;->eventIsNewOrHasChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1908
    :cond_4
    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    invoke-direct {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;-><init>()V

    .line 1909
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1910
    const-string v3, "isNewEvent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1911
    const-string v0, "isTask"

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v3, v3, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1913
    const-string v0, "isGroove"

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v3, v3, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1915
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1916
    invoke-virtual {v1, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->setDetailsFragment(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1925
    instance-of v2, v0, Lcom/android/calendar/event/edit/segment/WhenEditSegment;

    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;

    if-eqz v2, :cond_5

    .line 1926
    :cond_6
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->onAfterPrepareForSave()V

    goto :goto_1

    .line 1919
    :cond_7
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->cancelEdit()V

    .line 1929
    :cond_8
    return-void
.end method

.method private updateAuxiliaryViewLayoutParams()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1615
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;

    .line 1621
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditorScrollView;->getMeasuredHeight()I

    move-result v1

    .line 1624
    iget-boolean v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentInHeader:Z

    if-eqz v3, :cond_3

    move v3, v1

    move v1, v2

    .line 1632
    :goto_1
    iget v4, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->height:I

    if-ne v4, v3, :cond_2

    iget v4, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    if-eq v4, v1, :cond_0

    .line 1635
    :cond_2
    sget-object v4, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v5, "updateAuxiliaryViewLayoutParams %s -> %s %s -> %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->height:I

    .line 1636
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    iget v7, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 1635
    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1637
    iput v3, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->height:I

    .line 1638
    iput v1, v0, Lcom/android/calendar/editor/EditorSegmentsWrapper$LayoutParams;->y:I

    .line 1639
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureFullScreenSegmentLayoutAndPosition()V

    goto :goto_0

    .line 1628
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getAdditionalHeightForDivider()I

    move-result v4

    .line 1629
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v3}, Lcom/android/calendar/editor/EditSegment;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, v1, v4

    .line 1630
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getBottom()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_1
.end method


# virtual methods
.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1471
    if-eqz p3, :cond_0

    .line 1472
    invoke-virtual {v0, p1, p3}, Lcom/android/calendar/editor/EditSegment;->canApplyChangeAnimated(Ljava/lang/String;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 1474
    invoke-virtual {v1, p3}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->createChangeAnimation(Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;

    move-result-object v1

    .line 1475
    const/high16 v2, 0x3f400000    # 0.75f

    new-instance v3, Lcom/android/calendar/event/edit/EditDetailsFragment$11;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/calendar/event/edit/EditDetailsFragment$11;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v2, v3}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setAnimationTrigger(FLjava/lang/Runnable;)V

    move-object v0, v1

    .line 1486
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickSaveButton()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->performClick()Z

    move-result v0

    .line 1006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCalendarEventModel()Lcom/android/calendar/event/CalendarEventModel;
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "calendar_event_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_0

    .line 950
    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 953
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 1356
    sget v0, Lcom/android/calendar/R$id;->editor_segments_wrapper:I

    return v0
.end method

.method protected getFinishOverlayTouchProvider()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x0

    return v0
.end method

.method protected getGrooveParcelable()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groove"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 960
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInsertOrEditExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insert_or_edit_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_0

    .line 967
    check-cast v0, Landroid/os/Bundle;

    .line 970
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInsertTask()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "insert_task"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected getItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 2

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timeline_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_0

    .line 940
    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 943
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "EditEventDetails"

    return-object v0
.end method

.method public getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 1369
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    .line 1376
    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    .line 1378
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    goto :goto_0
.end method

.method public getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 2

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_event_edit_full_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->FullDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 1392
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDockedMatched:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    goto :goto_0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isNewItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getCalendarEventModel()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 381
    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lcom/android/calendar/event/EventTroubleshootInfoProvider;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;-><init>(Landroid/app/Activity;Lcom/android/calendar/timely/TimelineItem;)V

    .line 384
    invoke-virtual {v0}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    new-instance v1, Lcom/android/calendar/event/EventTroubleshootInfoProvider;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;-><init>(Landroid/app/Activity;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 387
    invoke-virtual {v1}, Lcom/android/calendar/event/EventTroubleshootInfoProvider;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWindowHeight([I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1411
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->getHeight()I

    move-result v0

    aput v0, p1, v1

    .line 1417
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1415
    :cond_0
    const/4 v0, -0x1

    aput v0, p1, v1

    goto :goto_0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const-wide/16 v2, -0x1

    const/4 v8, -0x1

    .line 505
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 509
    invoke-static {v4}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditSaveButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    .line 513
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 516
    if-eqz p1, :cond_7

    const-string v0, "key_edit_context"

    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 518
    const-string v0, "key_edit_context"

    .line 519
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager;

    .line 520
    instance-of v1, v0, Lcom/android/calendar/groove/GrooveEditManager;

    if-eqz v1, :cond_1

    .line 521
    check-cast v0, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-static {v4, v5, v0}, Lcom/android/calendar/groove/GrooveEditManager;->restoreGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/groove/GrooveEditManager;)Lcom/android/calendar/groove/GrooveEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 532
    :goto_0
    const-string v0, "headline_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    const-string v1, "headline_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureSegmentsCreated()V

    .line 537
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 538
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 523
    :cond_1
    instance-of v1, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v1, :cond_2

    .line 524
    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-static {v4, v5, v0}, Lcom/android/calendar/event/data/EventEditManager;->restoreEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/data/EventEditManager;)Lcom/android/calendar/event/data/EventEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->restoreTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/data/AbstractTaskEditManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_0

    .line 541
    :cond_3
    const-string v0, "fullscreen_segment_id"

    .line 542
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 543
    const-string v0, "fullscreen_segment_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->findSegmentById(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    .line 545
    :goto_2
    if-eqz v0, :cond_4

    .line 548
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$9;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 575
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/data/AbstractEditManager;->addCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 576
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->finishLoad()V

    .line 687
    :cond_5
    :goto_3
    return-void

    .line 544
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 581
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getGrooveParcelable()Landroid/os/Parcelable;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_8

    .line 583
    invoke-static {v4, v5, v0}, Lcom/android/calendar/groove/GrooveEditManager;->newGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Landroid/os/Parcelable;)Lcom/android/calendar/groove/GrooveEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 584
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureSegmentsCreated()V

    .line 585
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/data/AbstractEditManager;->addCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 586
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->finishLoad()V

    goto :goto_3

    .line 591
    :cond_8
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getCalendarEventModel()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_d

    .line 593
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v1

    .line 594
    if-eq v1, v8, :cond_9

    .line 595
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v2, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 597
    :cond_9
    iget-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v1, :cond_b

    .line 598
    invoke-static {v4, v5, v0}, Lcom/android/calendar/groove/GrooveEditManager;->loadGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/groove/GrooveEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 675
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureSegmentsCreated()V

    .line 676
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/data/AbstractEditManager;->addCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 677
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->finishLoad()V

    .line 680
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getInsertTask()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 681
    invoke-static {v4}, Lcom/android/calendar/launch/utils/GonzalezReporter;->reportInsertTask(Landroid/content/Context;)V

    goto :goto_3

    .line 599
    :cond_b
    iget-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v1, :cond_c

    .line 600
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_4

    .line 602
    :cond_c
    invoke-static {v4, v5, v0}, Lcom/android/calendar/event/data/EventEditManager;->loadEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/EventEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_4

    .line 605
    :cond_d
    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getInfoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 606
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    .line 607
    if-eq v0, v8, :cond_e

    .line 608
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 610
    :cond_e
    instance-of v0, v1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_f

    move-object v0, v1

    .line 611
    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-static {v4, v5, v0}, Lcom/android/calendar/groove/GrooveEditManager;->loadGroove(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/groove/TimelineGroove;)Lcom/android/calendar/groove/GrooveEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 613
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    goto :goto_4

    .line 614
    :cond_f
    instance-of v0, v1, Lcom/android/calendar/timely/TimelineEvent;

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 616
    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-static {v4, v5, v0}, Lcom/android/calendar/event/data/EventEditManager;->loadEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/TimelineEvent;)Lcom/android/calendar/event/data/EventEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 618
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    goto :goto_4

    .line 619
    :cond_10
    instance-of v0, v1, Lcom/android/calendar/task/TimelineTask;

    if-eqz v0, :cond_a

    .line 620
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    move-object v0, v1

    check-cast v0, Lcom/android/calendar/task/TimelineTask;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/task/TimelineTask;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 622
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 628
    :cond_11
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_18

    .line 630
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    .line 632
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 633
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/calendar/launch/LaunchIntentConstants;->getEditAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 634
    :cond_12
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_18

    .line 637
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 647
    :goto_5
    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    .line 648
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getInsertTask()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 651
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    if-eq v0, v8, :cond_13

    .line 654
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 656
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->newTask(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 673
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getInsertOrEditExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 638
    :catch_0
    move-exception v0

    .line 639
    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v6, "URI inadequate, switching to an insert"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v0, v2

    .line 640
    goto :goto_5

    .line 658
    :cond_14
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 660
    if-eq v0, v8, :cond_15

    .line 661
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 663
    :cond_15
    invoke-static {v4, v5}, Lcom/android/calendar/event/data/EventEditManager;->newEvent(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/android/calendar/event/data/EventEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_6

    .line 667
    :cond_16
    new-instance v2, Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct {v2}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 668
    iput-wide v0, v2, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 669
    invoke-static {v4, v5, v2}, Lcom/android/calendar/event/data/EventEditManager;->loadEvent(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/TimelineEvent;)Lcom/android/calendar/event/data/EventEditManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    goto :goto_6

    .line 682
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 685
    invoke-static {v4}, Lcom/android/calendar/launch/utils/GonzalezReporter;->reportInsertEvent(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_18
    move-wide v0, v2

    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2011
    packed-switch p1, :pswitch_data_0

    .line 2033
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2013
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 2014
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->scrollToTop()V

    goto :goto_0

    .line 2015
    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 2017
    const-string v0, "invalid_email_count"

    const/4 v1, 0x0

    .line 2018
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2019
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->find_a_time_all_calendars_not_loaded:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2021
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2025
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/editor/EditSegment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 2011
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/event/edit/EditHeaderLayout;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    .line 884
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditorScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 885
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 886
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditorScrollView;->invalidate()V

    .line 888
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 396
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    sget v1, Lcom/android/calendar/R$integer;->event_editor_fullscreen_animation_duration:I

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAnimationDuration:J

    .line 399
    sget v1, Lcom/android/calendar/R$dimen;->edit_headline_hidden_min_height:I

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I

    .line 401
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_title_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineElevation:I

    .line 404
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskEditManagerFactory()Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    .line 406
    instance-of v0, p1, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    invoke-interface {p1, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 410
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1848
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-virtual {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1854
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1855
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 1856
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 1857
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->startCancelFlow()V

    goto :goto_0

    .line 1858
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v3}, Lcom/android/calendar/event/edit/EditSaveButton;->getId()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 1860
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSavingInProgress:Z

    if-nez v0, :cond_0

    .line 1863
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSavingInProgress:Z

    .line 1865
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 1868
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1869
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1870
    invoke-virtual {v0, v4}, Lcom/android/calendar/editor/EditSegment;->interruptSavingProcess(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1871
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSavingInProgress:Z

    goto :goto_0

    .line 1877
    :cond_4
    new-instance v3, Lcom/android/calendar/event/edit/EditDetailsFragment$22;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$22;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 1883
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1884
    invoke-virtual {v0, v3}, Lcom/android/calendar/editor/EditSegment;->promptBeforeSaving(Lcom/android/calendar/editor/EditSegment$Callback;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    move v1, v0

    .line 1887
    goto :goto_1

    .line 1888
    :cond_5
    if-nez v1, :cond_0

    .line 1889
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->doSave()V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public onCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1013
    invoke-interface {p1}, Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to load data"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1015
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0, v3}, Lcom/android/calendar/event/edit/EditSaveButton;->setAnimatedEnabled(Z)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->loading_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->loading_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1018
    invoke-interface {p1}, Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    :goto_1
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->edit_error_generic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v0, v0, Lcom/android/calendar/event/data/EventEditManager;

    if-eqz v0, :cond_4

    .line 1025
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 1026
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    .line 1029
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1031
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_2

    .line 1034
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    .line 1035
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 1038
    :cond_2
    invoke-static {v1}, Lcom/android/calendar/timely/EventColorAtom;->fromEvent(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Lcom/android/calendar/timely/EventColorAtom;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineColor(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 1039
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setGuestsPosition(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 1042
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditSaveButton;->setEnabled(Z)V

    .line 1044
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getEditorTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getOrderedSegments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    .line 1045
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->redrawSegmentsInView(Ljava/util/Collection;)V

    .line 1057
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->initializeSegments()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->onSegmentsReady()V

    .line 1063
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    goto :goto_1

    .line 1046
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    instance-of v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    if-eqz v0, :cond_3

    .line 1047
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    .line 1048
    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    .line 1052
    new-instance v1, Lcom/google/calendar/v2/client/service/common/ProxyAtom;

    invoke-direct {v1}, Lcom/google/calendar/v2/client/service/common/ProxyAtom;-><init>()V

    .line 1053
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->setUnderlying(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 1054
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineColor(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    goto :goto_2
.end method

.method public onConvertEventToReminder(Landroid/text/SpannedString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1217
    sget-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Performing event-to-reminder conversion: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1219
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    .line 1220
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/data/EventEditManager;->removeCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 1222
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mTaskEditManagerFactory:Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;

    .line 1223
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 1222
    invoke-virtual {v1, v2, v3, p2}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;->newTaskForAccount(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractTaskEditManager;

    move-result-object v1

    .line 1224
    invoke-virtual {v1, p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->addCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 1225
    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    .line 1226
    invoke-virtual {v1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->finishLoad()V

    .line 1229
    invoke-virtual {v1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v1

    .line 1230
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v2

    invoke-virtual {p1}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 1232
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v2

    .line 1262
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isRecurring()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1264
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 1266
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 1268
    const/16 v3, 0x8

    invoke-interface {v0, v3, v4, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 1269
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 1282
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureSegmentsCreated()V

    .line 1284
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1285
    instance-of v3, v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    if-eqz v3, :cond_4

    .line 1286
    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-virtual {v0, p3}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onEnteringEventToReminder(Ljava/lang/String;)V

    goto :goto_1

    .line 1271
    :cond_2
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1274
    :cond_3
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/time/DateTimeService;->now()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v3

    .line 1275
    invoke-static {v5}, Lcom/google/calendar/v2/client/service/api/time/Period;->hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/time/DateTimeImpl;->plusPeriod(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    .line 1276
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/data/EventEditManager;->isEventStartAfter(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 1278
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isAllDay()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    goto :goto_0

    .line 1287
    :cond_4
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isRecurring()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    if-eqz v3, :cond_1

    .line 1288
    check-cast v0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    .line 1289
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->onRecurrenceSet(Ljava/lang/String;)V

    goto :goto_1

    .line 1292
    :cond_5
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/android/calendar/event/edit/EditDetailsFragment$1;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment$1;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$bool;->show_event_info_full_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->dialog_background:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 186
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 415
    sget v0, Lcom/android/calendar/R$layout;->edit_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 416
    sget v1, Lcom/android/calendar/R$id;->edit_fragment_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/edit/EditHeaderLayout;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    .line 417
    sget v1, Lcom/android/calendar/R$id;->headline_content_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;

    .line 418
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    sget v3, Lcom/android/calendar/R$id;->ripple_view:I

    invoke-virtual {v1, v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;

    .line 419
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    sget v3, Lcom/android/calendar/R$id;->save:I

    invoke-virtual {v1, v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/edit/EditSaveButton;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    .line 420
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v1, p0}, Lcom/android/calendar/event/edit/EditSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    sget v3, Lcom/android/calendar/R$id;->cancel:I

    invoke-virtual {v1, v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCancelButton:Landroid/widget/ImageButton;

    .line 422
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    sget v1, Lcom/android/calendar/R$id;->editor_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/EditorScrollView;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    .line 424
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditorScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lcom/android/calendar/event/edit/EditDetailsFragment$7;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$7;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 451
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->editor_segments_wrapper:I

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/editor/EditorSegmentsWrapper;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsWrapperView:Lcom/android/calendar/editor/EditorSegmentsWrapper;

    .line 453
    sget v1, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegmentsContainerView:Landroid/widget/LinearLayout;

    .line 454
    sget v1, Lcom/android/calendar/R$id;->header_segments:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeaderSegmentsContainerView:Landroid/widget/LinearLayout;

    .line 455
    sget v1, Lcom/android/calendar/R$id;->fullscreen_auxiliary:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;

    .line 457
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsHeadlineVisible:Z

    .line 459
    new-instance v1, Lcom/android/calendar/timely/LoadingStateManager;

    sget v3, Lcom/android/calendar/R$id;->editor_scroll_view:I

    .line 460
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$id;->loading_view:I

    .line 461
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 462
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    new-instance v3, Lcom/android/calendar/event/edit/EditDetailsFragment$8;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$8;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    invoke-virtual {v1, v3}, Lcom/android/calendar/timely/LoadingStateManager;->setLoadingStateListener(Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;)V

    .line 475
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 476
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z

    move-object v1, v0

    .line 478
    check-cast v1, Lcom/android/calendar/event/edit/EditFragmentLayout;

    iget-object v1, v1, Lcom/android/calendar/event/edit/EditFragmentLayout;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    iput-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    .line 483
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 484
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/calendar/R$bool;->show_event_edit_full_screen:I

    .line 485
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 488
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 491
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardDetector:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 492
    return-object v0

    :cond_2
    move v1, v2

    .line 457
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 845
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onDestroy()V

    .line 846
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/data/AbstractEditManager;->removeCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->disposeSegments()V

    .line 850
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineColor(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 851
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setGuestsPosition(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)V

    .line 852
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1090
    instance-of v1, v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    if-eqz v1, :cond_0

    .line 1091
    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;

    invoke-interface {v0, p0}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierActivity;->unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V

    .line 1093
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onDetach()V

    .line 1094
    return-void
.end method

.method public onDialogBackPressed()V
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRoomBookingPromoManager:Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRoomBookingPromoManager:Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;

    .line 1440
    invoke-virtual {v0}, Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;->shouldDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mRoomBookingPromoManager:Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/rooms/promo/RoomBookingPromoManager;->dismissPromo()V

    .line 1455
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 1458
    :cond_0
    return-void

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_2

    .line 1443
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V

    goto :goto_0

    .line 1446
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mChangeAnimationDescriptionPlayer:Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;

    invoke-virtual {v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptionPlayer;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->startCancelFlow()V

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 994
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 995
    const/16 v0, 0x2f

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->clickSaveButton()Z

    move-result v0

    .line 999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInitiated(Z)V
    .locals 3

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v1}, Lcom/android/calendar/event/data/AbstractEditManager;->getData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 1203
    instance-of v2, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;

    if-eqz v2, :cond_0

    .line 1204
    check-cast v0, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;

    .line 1205
    invoke-interface {v0, p0, v1, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;->onEditComplete(Landroid/app/DialogFragment;Lcom/android/calendar/event/CalendarEventModel;Z)V

    .line 1207
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 856
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 859
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 863
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mEditManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 869
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_4

    .line 870
    const-string v0, "fullscreen_segment_id"

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_0

    .line 874
    const-string v1, "headline_color"

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onSaveInterrupted()V
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSavingInProgress:Z

    .line 1212
    return-void
.end method

.method protected onSegmentsReady()V
    .locals 2

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getContentViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    .line 1100
    invoke-static {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    .line 1103
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1078
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onStart()V

    .line 1079
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1083
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->resetActive()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 1070
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/EditSegment;->setActive(Z)V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onStop()V

    .line 1074
    return-void
.end method

.method public onTouchOutside()V
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 1432
    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 692
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->TAG:Ljava/lang/String;

    .line 693
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    .line 694
    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->setDetailsFragment(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/app/DialogFragment;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 703
    :cond_1
    return-void

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 701
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreViewState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 1

    .prologue
    .line 1464
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;ZZ)V

    .line 1465
    return-void
.end method

.method protected setGrooveParcelable(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 894
    const-string v1, "groove"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 895
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groove"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public setInsertOrEditEventExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 924
    const-string v1, "insert_or_edit_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insert_or_edit_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public setInsertOrEditTaskExtras(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setInsertOrEditEventExtras(Landroid/os/Bundle;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insert_task"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 934
    return-void
.end method

.method protected setItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 2

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 904
    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 905
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected setModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 914
    const-string v1, "calendar_event_model"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 915
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "calendar_event_model"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method
