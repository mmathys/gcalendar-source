.class public Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;
.super Lcom/android/calendar/event/edit/segment/SuggestionEditText;
.source "ChipCollectionEditText.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Observable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/android/calendar/event/edit/segment/BaseChipSpan;",
        ":",
        "Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan",
        "<TK;>;>",
        "Lcom/android/calendar/event/edit/segment/SuggestionEditText;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<TV;>;>;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveActionMode:Landroid/view/ActionMode;

.field private mAttachedChips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected mChipClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mInputMoveMarker:Ljava/lang/Object;

.field private mIsNotifyingChipChangeListeners:Z

.field private mMoveTypedText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mMoveTypedText:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mInputMoveMarker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mActiveActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private createChipBuffer(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 451
    new-instance v2, Landroid/text/SpannableStringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan;

    invoke-interface {v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$ChipCollectionSpan;->getBufferText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 452
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$string;->guests_separator:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 454
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 455
    return-object v2

    :cond_0
    move v0, v1

    .line 452
    goto :goto_0
.end method

.method private maintainChipSelection(II)V
    .locals 7

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 409
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 410
    array-length v1, v0

    if-lez v1, :cond_1

    .line 411
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 412
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 413
    if-ne v5, v1, :cond_3

    .line 414
    const/4 v2, 0x0

    .line 415
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_0

    .line 416
    aget-object v1, v0, v3

    .line 417
    invoke-interface {v4, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 418
    if-lt v6, v5, :cond_6

    .line 415
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 422
    :cond_0
    if-eqz v2, :cond_2

    .line 424
    invoke-interface {v4, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 425
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelection(I)V

    .line 446
    :cond_1
    :goto_2
    return-void

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->clearSelectedChip()V

    goto :goto_2

    .line 431
    :cond_3
    if-gtz v5, :cond_4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-nez v0, :cond_5

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/android/calendar/SpanUtils;->getLastSpanOfType(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 434
    if-eqz v0, :cond_1

    .line 435
    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 436
    if-ge v5, v0, :cond_1

    .line 437
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelection(II)V

    goto :goto_2

    .line 441
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelection(I)V

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 314
    return-void
.end method

.method public appendChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getChipCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->insertChip(ILcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 181
    return-void
.end method

.method public containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->dispose()V

    .line 324
    return-void
.end method

.method public getChip(Ljava/lang/Object;)Lcom/android/calendar/event/edit/segment/BaseChipSpan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    return-object v0
.end method

.method public getChipCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public initialize(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    .line 112
    new-instance v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$1;-><init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    new-instance v0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$2;-><init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 177
    return-void
.end method

.method public insertChip(ILcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Chip cannot be added twice"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 201
    if-ltz p1, :cond_0

    array-length v2, v0

    if-le p1, v2, :cond_2

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 207
    if-lez p1, :cond_3

    .line 208
    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->beginIgnoreTextChanges()V

    .line 213
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->createChipBuffer(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 278
    new-instance v1, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText$3;-><init>(Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;[Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    return-object v1
.end method

.method protected onChipAdded(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onChipAdded(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 331
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    const-string v1, "The text buffer must not be modified from within the chip change listener."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    const-string v4, "Same chip is being added twice"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 336
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    .line 338
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v1

    .line 340
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToAdded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 343
    iput-boolean v3, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    .line 346
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 331
    goto :goto_0

    :cond_2
    move v1, v3

    .line 335
    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 343
    iput-boolean v3, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    throw v0
.end method

.method protected onChipRemoved(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 350
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onChipRemoved(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 351
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    const-string v1, "The text buffer must not be modified from within the chip change listener."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v1

    const-string v4, "Unknown chip is being removed"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 356
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mAttachedChips:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iput-boolean v2, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    .line 358
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v1

    .line 360
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToRemoved(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 363
    iput-boolean v3, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    .line 366
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 351
    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 363
    iput-boolean v3, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mIsNotifyingChipChangeListeners:Z

    throw v0
.end method

.method protected onChipTapped(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/calendar/SpanUtils;->getLastSpanOfType(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->clearSelectedChip()V

    .line 385
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelection(I)V

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    goto :goto_0
.end method

.method public onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->maintainChipSelection(II)V

    .line 403
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectionEnd()I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->onSelectionChanged(II)V

    .line 404
    return-void
.end method

.method public removeChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->containsChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v0

    const-string v1, "Trying to remove unknown chip"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 223
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 224
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 226
    if-eq v1, v3, :cond_0

    if-ne v2, v3, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->beginIgnoreTextChanges()V

    .line 232
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method public removeChipByKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getChip(Ljava/lang/Object;)Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->removeChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeChipOnDelete(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->beginIgnoreTextChanges()V

    .line 372
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->removeChipOnDelete(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectionEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->maintainChipSelection(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mChipChangeNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 319
    return-void
.end method

.method public replaceRangeWithChip(IILcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->beginIgnoreTextChanges()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->createChipBuffer(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    .line 193
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 195
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 196
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->endIgnoreTextChanges()V

    throw v0
.end method

.method public setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelectedChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->setLongClickable(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->getSelectedChip()Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mActiveActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipCollectionEditText;->mActiveActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 398
    :cond_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
