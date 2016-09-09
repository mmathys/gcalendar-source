.class public abstract Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "InputType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/calendar/editor/EditSegment",
        "<TInputType;>;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mElementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

.field private mIsScrolled:Z

.field private final mKeyboardAnimationDuration:I

.field private mLastAnnouncedSuggestionCount:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionAdapter:Landroid/widget/ListAdapter;

.field private mSuggestionContainer:Landroid/view/ViewGroup;

.field private mSuggestionList:Landroid/widget/ListView;

.field private final mSuggestionListFadeDuration:I

.field private mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->TAG:Ljava/lang/String;

    return-void
.end method

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
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mThreshold:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    sget v1, Lcom/android/calendar/R$integer;->event_editor_keyboard_animation_duration:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mKeyboardAnimationDuration:I

    .line 97
    sget v1, Lcom/android/calendar/R$integer;->event_editor_suggestion_list_fade_duration:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionListFadeDuration:I

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->selectItemAtPosition(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->isSuggestionListScrolled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mIsScrolled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mIsScrolled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mElementType:Ljava/lang/Class;

    return-object v0
.end method

.method private getSuggestionContainer(Landroid/view/ViewGroup;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "getSuggestionView() must not be called before initialize()"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 450
    sget v2, Lcom/android/calendar/R$layout;->edit_suggestion_container:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    .line 453
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/android/calendar/R$id;->suggestion_list:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    .line 454
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$4;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$5;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
    if-eqz p2, :cond_0

    .line 479
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mIsScrolled:Z

    .line 480
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$6;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_1
    move v0, v1

    .line 446
    goto :goto_0
.end method

.method private isSuggestionListScrolled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    if-nez v2, :cond_1

    move v0, v1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 548
    if-nez v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 555
    if-nez v2, :cond_2

    move v2, v1

    .line 557
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1
.end method

.method private selectItemAtPosition(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x96

    .line 505
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    .line 507
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getSuggestionAge(I)J

    move-result-wide v0

    .line 508
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 517
    :cond_0
    new-instance v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$7;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;I)V

    .line 530
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 531
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setFullScreen(Z)V
    .locals 1

    .prologue
    .line 561
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->preventExitFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0, p1}, Lcom/android/calendar/editor/EditSegmentController;->setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mThreshold:I

    if-lt v0, v1, :cond_0

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->showSuggestions(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->requestSuggestions()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method protected beginIgnoreTextChanges()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->beginIgnoreTextChanges()V

    .line 294
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 403
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 417
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 406
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getSuggestionList()Landroid/widget/ListView;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 409
    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 413
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    goto :goto_0

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->beginIgnoreTextChanges()V

    .line 331
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->beginIgnoreTextChanges()V

    .line 321
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method protected endIgnoreTextChanges()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    .line 298
    return-void
.end method

.method protected getInputText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected getMinimumQueryThreshold()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mThreshold:I

    return v0
.end method

.method protected getSuggestionList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/calendar/event/edit/segment/SuggestionEditText;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "initialize(...) must be only called once"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 115
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setBackButtonListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;Z)V

    .line 120
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mElementType:Ljava/lang/Class;

    .line 121
    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 146
    return-void

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onEndFullscreenEdit()V

    .line 370
    :cond_0
    return v1
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 288
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onEndFullscreenEdit()V

    .line 379
    :cond_0
    return v1
.end method

.method protected onEndFullscreenEdit()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$3;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mKeyboardAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    :cond_0
    return-void
.end method

.method public onEnteringEventToReminder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->requestFocus()Z

    .line 437
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->showSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    .line 439
    return-void
.end method

.method public onExitingEventToReminder()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    .line 428
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getSuggestionList()Landroid/widget/ListView;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/editor/EditSegment;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 396
    if-eqz p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->requestFocus()Z

    .line 399
    :cond_0
    return-void
.end method

.method protected abstract onRequestSuggestions(Landroid/text/Spanned;)V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    const-string v0, ":full_screen"

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    new-instance v1, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string v0, ":full_screen"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 185
    invoke-interface {v0, p0}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSuggestListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0, p3}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->selectItemAtPosition(I)V

    .line 502
    return-void
.end method

.method protected abstract onSuggestionAccepted(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/editor/EditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 247
    invoke-direct {p0, p1, p3}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getSuggestionContainer(Landroid/view/ViewGroup;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 256
    sget-object v2, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->TAG:Ljava/lang/String;

    const-string v3, "Removing stale suggestion container view before re-adding it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 257
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 260
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 261
    if-eqz p2, :cond_1

    .line 262
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 263
    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionListFadeDuration:I

    int-to-long v2, v1

    .line 264
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 4

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/calendar/editor/EditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 277
    if-eqz p2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionListFadeDuration:I

    int-to-long v2, v1

    .line 280
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 283
    :cond_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected preventExitFullScreen()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method protected requestSuggestions()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onRequestSuggestions(Landroid/text/Spanned;)V

    .line 222
    return-void
.end method

.method protected setInputText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->beginIgnoreTextChanges()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method protected setMinimumQueryThreshold(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mThreshold:I

    .line 229
    return-void
.end method

.method protected shouldIgnoreTextChange()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->shouldIgnoreTextChange()Z

    move-result v0

    return v0
.end method

.method protected showSuggestions(Z)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->setFullScreen(Z)V

    .line 240
    return-void
.end method
