.class public Lcom/android/calendar/event/edit/segment/SuggestionEditText;
.super Landroid/widget/EditText;
.source "SuggestionEditText.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;,
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;,
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;,
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;,
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;,
        Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;
    }
.end annotation


# static fields
.field private static final FORCE_LAYOUT_UPDATE_SPAN:Landroid/text/style/UpdateLayout;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackButtonListener:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;

.field private mChipLineHeight:Landroid/text/style/LineHeightSpan;

.field private mDisableSelectingChip:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreSelectionChange:I

.field private mIgnoreTextChange:I

.field private mInputWatcher:Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

.field private mKeyInterceptor:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;

.field private mListeners:Lcom/android/calendar/ListenerCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/ListenerCollection",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

.field private mSelectionListeners:Lcom/android/calendar/ListenerCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/ListenerCollection",
            "<",
            "Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$1;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->FORCE_LAYOUT_UPDATE_SPAN:Landroid/text/style/UpdateLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->registerChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->unregisterChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Lcom/android/calendar/ListenerCollection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)Z
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onDeletePressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$508(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/calendar/event/edit/segment/SuggestionEditText;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I

    return v0
.end method

.method private computeMaxChipWidth()I
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const v0, 0x7fffffff

    .line 549
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getInputWatcher()Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mInputWatcher:Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;-><init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/android/calendar/event/edit/segment/SuggestionEditText$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mInputWatcher:Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mInputWatcher:Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    return-object v0
.end method

.method private hasChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 570
    if-nez p1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 574
    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-interface {v1, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDeletePressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 511
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mKeyInterceptor:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mKeyInterceptor:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;

    invoke-interface {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;->onDeletePressed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 538
    :goto_0
    return v0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->removeChipOnDelete(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    move v0, v6

    .line 517
    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getSelectionStart()I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-lez v0, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 522
    const-class v2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v1, v0, v2}, Lcom/android/calendar/SpanUtils;->getSpanAt(Landroid/text/Spanned;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 523
    if-eqz v0, :cond_3

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 525
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 526
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 527
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 528
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move v4, v2

    move v5, v3

    .line 529
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 530
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mDisableSelectingChip:Z

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->removeChipOnDelete(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    :cond_2
    move v0, v6

    .line 535
    goto :goto_0

    .line 538
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setSelected(Z)V

    .line 555
    invoke-virtual {p1, p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setCallback(Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;)V

    .line 556
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->computeMaxChipWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setMaxWidth(I)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onChipAdded(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 558
    return-void
.end method

.method private sanityCheckSelection()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v1, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v0, v1}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 580
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-ne v6, v1, :cond_1

    move v1, v2

    .line 581
    :goto_1
    invoke-virtual {v6}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->isSelected()Z

    move-result v7

    if-eq v1, v7, :cond_0

    .line 582
    sget-object v1, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->TAG:Ljava/lang/String;

    const-string v7, "BaseChipSpan selection state mismatch. Expected: %s Actual: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    aput-object v9, v8, v3

    aput-object v6, v8, v2

    invoke-static {v1, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 580
    goto :goto_1

    .line 586
    :cond_2
    return-void
.end method

.method private unregisterChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onChipRemoved(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 562
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setCallback(Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;)V

    .line 563
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-ne v0, p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->clearSelectedChip()V

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->dispose()V

    .line 567
    return-void
.end method


# virtual methods
.method public addSelectionListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/android/calendar/ListenerCollection;

    invoke-direct {v0}, Lcom/android/calendar/ListenerCollection;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;

    invoke-virtual {v1, v0}, Lcom/android/calendar/ListenerCollection;->add(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;Z)V
    .locals 1

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lcom/android/calendar/ListenerCollection;

    invoke-direct {v0}, Lcom/android/calendar/ListenerCollection;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ListenerCollection;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beginIgnoreTextChanges()V
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    .line 291
    return-void
.end method

.method public clearSelectedChip()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 287
    return-void
.end method

.method public createChipConfigTemplate()Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    invoke-direct {v1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;-><init>()V

    .line 127
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 129
    sget v3, Lcom/android/calendar/R$color;->suggestion_edit_text_chip_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 130
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextPaintDefault(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 132
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 134
    sget v3, Lcom/android/calendar/R$color;->suggestion_edit_text_chip_text_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 136
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextPaintSelected(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 138
    sget v2, Lcom/android/calendar/R$drawable;->suggestion_edit_text_chip_background_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundDefault(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 140
    sget v2, Lcom/android/calendar/R$drawable;->suggestion_edit_text_chip_background_selected:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundSelected(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 143
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setMinWidth(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 145
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setHeight(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setShowIcon(Z)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 148
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_background_icon_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setIconInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 150
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_background_text_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 152
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_icon_text_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setIconTextSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 154
    sget v2, Lcom/android/calendar/R$dimen;->suggestion_edit_text_chip_vertical_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setChipVerticalSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 157
    return-object v1
.end method

.method public createQcChipConfigTemplate()Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    invoke-direct {v1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;-><init>()V

    .line 167
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 169
    sget v3, Lcom/android/calendar/R$color;->suggestion_edit_text_chip_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 170
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextPaintDefault(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 172
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 174
    sget v3, Lcom/android/calendar/R$color;->suggestion_edit_text_chip_text_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 176
    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextPaintSelected(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 178
    sget v2, Lcom/android/calendar/R$drawable;->qc_suggestion_edit_text_chip_background_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundDefault(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 180
    sget v2, Lcom/android/calendar/R$drawable;->qc_suggestion_edit_text_chip_background_selected:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundSelected(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setMinWidth(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 184
    sget v2, Lcom/android/calendar/R$dimen;->qc_suggestion_edit_text_chip_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setHeight(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 186
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setShowIcon(Z)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 187
    sget v2, Lcom/android/calendar/R$dimen;->qc_suggestion_edit_text_chip_background_icon_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setIconInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 189
    sget v2, Lcom/android/calendar/R$dimen;->qc_suggestion_edit_text_chip_background_text_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextInset(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 191
    sget v2, Lcom/android/calendar/R$dimen;->qc_suggestion_edit_text_chip_icon_text_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setIconTextSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 193
    sget v2, Lcom/android/calendar/R$dimen;->qc_suggestion_edit_text_chip_vertical_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setChipVerticalSpacing(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    .line 196
    return-object v1
.end method

.method public disableSelectingChip()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mDisableSelectingChip:Z

    .line 328
    return-void
.end method

.method public endIgnoreTextChanges()V
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 295
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    .line 296
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->sanityCheckSelection()V

    .line 265
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    return-object v0
.end method

.method public invalidateChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 5

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 490
    sget-object v1, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->FORCE_LAYOUT_UPDATE_SPAN:Landroid/text/style/UpdateLayout;

    .line 492
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 493
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 494
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 490
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 495
    sget-object v1, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->FORCE_LAYOUT_UPDATE_SPAN:Landroid/text/style/UpdateLayout;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 496
    return-void
.end method

.method protected onChipAdded(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method protected onChipRemoved(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method protected onChipTapped(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mDisableSelectingChip:Z

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->clearSelectedChip()V

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 385
    if-nez v1, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    .line 388
    :cond_0
    new-instance v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipAwareInputConnection;-><init>(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/view/inputmethod/InputConnection;Z)V

    .line 391
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 393
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 414
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onDeletePressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 423
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 402
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mBackButtonListener:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 404
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mBackButtonListener:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;

    invoke-interface {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;->onBackButtonPressed()Z

    move-result v0

    .line 409
    :cond_1
    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 466
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreSelectionChange:I

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    invoke-virtual {v0}, Lcom/android/calendar/ListenerCollection;->iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;

    .line 468
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;->onSelectionChanged(II)V

    goto :goto_0

    .line 471
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 475
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 477
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->computeMaxChipWidth()I

    move-result v2

    .line 478
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v1, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v0, v1}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 479
    invoke-virtual {v4, v2}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setMaxWidth(I)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 434
    const/4 v1, 0x0

    .line 435
    if-ne v4, v2, :cond_2

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 438
    invoke-virtual {p0, v0, v5}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getOffsetForPosition(FF)I

    move-result v0

    .line 439
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const-class v6, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v5, v0, v6}, Lcom/android/calendar/SpanUtils;->getSpanAt(Landroid/text/Spanned;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 440
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onChipTapped(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    move v1, v2

    move v0, v2

    .line 446
    :goto_1
    if-ne v4, v2, :cond_0

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->clearSelectedChip()V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public prepareLineHeightForChipConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V
    .locals 5

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    .line 216
    if-eqz p1, :cond_1

    .line 217
    new-instance v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText$ChipConfigLineHeightSpan;-><init>(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    .line 218
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    invoke-static {v1, v0}, Lcom/android/calendar/SpanUtils;->setSpanEndToEnd(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 220
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setHintChipAware(Ljava/lang/CharSequence;)V

    .line 222
    :cond_1
    return-void
.end method

.method protected removeChipOnDelete(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 6

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 342
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 343
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 344
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 346
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 347
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 348
    return-void
.end method

.method public removeSelectionListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectionListeners:Lcom/android/calendar/ListenerCollection;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ListenerCollection;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mListeners:Lcom/android/calendar/ListenerCollection;

    invoke-virtual {v0, p1}, Lcom/android/calendar/ListenerCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    :cond_1
    return-void
.end method

.method public scheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 501
    return-void
.end method

.method public setBackButtonListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mBackButtonListener:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextBackButtonListener;

    .line 257
    return-void
.end method

.method public setHintChipAware(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz p1, :cond_1

    .line 231
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 232
    check-cast p1, Landroid/text/Spannable;

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    invoke-static {p1, v0}, Lcom/android/calendar/SpanUtils;->setSpanEndToEnd(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 239
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 240
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public setKeyInterceptor(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mKeyInterceptor:Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;

    .line 261
    return-void
.end method

.method public setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->sanityCheckSelection()V

    .line 270
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-ne v2, p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-virtual {v2, v1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setSelected(Z)V

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 278
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 280
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setSelected(Z)V

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setCursorVisible(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getInputWatcher()Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 360
    const-class v2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v0, v2}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 361
    invoke-direct {p0, v4}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->unregisterChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mSelectedChip:Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 368
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_3

    .line 372
    const-class v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v2, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 373
    invoke-direct {p0, v4}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->registerChipSpan(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 367
    goto :goto_1

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getInputWatcher()Lcom/android/calendar/event/edit/segment/SuggestionEditText$InputWatcher;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/calendar/SpanUtils;->setSpanEndToEnd(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mChipLineHeight:Landroid/text/style/LineHeightSpan;

    invoke-static {v2, v0}, Lcom/android/calendar/SpanUtils;->setSpanEndToEnd(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 380
    :cond_3
    return-void
.end method

.method public shouldIgnoreTextChange()Z
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mIgnoreTextChange:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 506
    return-void
.end method
