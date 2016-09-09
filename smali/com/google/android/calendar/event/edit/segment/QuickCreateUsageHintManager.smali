.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;
.super Ljava/lang/Object;
.source "QuickCreateUsageHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddedContactHighlightConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

.field private final mCheckIconSpan:Landroid/text/style/ImageSpan;

.field private mConnectorHintAccepted:Z

.field private final mContactAcceptedHighlightColor:I

.field private final mContactAcceptedHintBackgroundColor:I

.field private final mContactAcceptedHintTextColor:I

.field private final mContactAddedHintDuration:I

.field private mContactAddedHintShown:Z

.field private final mContactIconSpan:Landroid/text/style/ImageSpan;

.field private final mContext:Landroid/content/Context;

.field private mEntityHintShown:Z

.field private final mHintIconHeight:I

.field private final mHintIconPadding:I

.field private final mHintIconWidth:I

.field private mHintsEnabled:Z

.field private mInitialHintShown:Z

.field private mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

.field private mIsRtl:Z

.field private mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

.field private mLastAddedContactSpanInput:Ljava/lang/String;

.field private mLastAddedContactSpanTime:J

.field private final mLocationIconSpan:Landroid/text/style/ImageSpan;

.field private final mMaxConnectorAcceptedCount:I

.field private final mMaxContactAddedShowCount:I

.field private mMaxEventCreatedCount:I

.field private final mMaxInitialHintShowCount:I

.field private mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSuggestionAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field private final mUsageHints:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;",
            "Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHints:Landroid/support/v4/util/SimpleArrayMap;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUiThreadHandler:Landroid/os/Handler;

    .line 143
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    .line 144
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mEntityHintShown:Z

    .line 145
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    .line 146
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mConnectorHintAccepted:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintsEnabled:Z

    .line 152
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    sget v1, Lcom/android/calendar/R$integer;->quickcreate_usage_hint_contact_added_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintDuration:I

    .line 157
    sget v1, Lcom/android/calendar/R$color;->quickcreate_usage_hint_contact_accepted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHighlightColor:I

    .line 159
    sget v1, Lcom/android/calendar/R$color;->quickcreate_usage_hint_contact_accepted_hint_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHintTextColor:I

    .line 161
    sget v1, Lcom/android/calendar/R$color;->quickcreate_usage_hint_contact_accepted_hint_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHintBackgroundColor:I

    .line 164
    sget v1, Lcom/android/calendar/R$integer;->quickcreate_usage_hint_initial_show_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxInitialHintShowCount:I

    .line 166
    sget v1, Lcom/android/calendar/R$integer;->quickcreate_usage_hint_connector_accepted_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxConnectorAcceptedCount:I

    .line 168
    sget v1, Lcom/android/calendar/R$integer;->quickcreate_usage_hint_contact_added_show_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxContactAddedShowCount:I

    .line 170
    sget v1, Lcom/android/calendar/R$integer;->quickcreate_usage_hint_event_created_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxEventCreatedCount:I

    .line 173
    sget v1, Lcom/android/calendar/R$dimen;->quickcreate_hint_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconWidth:I

    .line 174
    sget v1, Lcom/android/calendar/R$dimen;->quickcreate_hint_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconHeight:I

    .line 175
    sget v1, Lcom/android/calendar/R$dimen;->quickcreate_hint_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconPadding:I

    .line 177
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mIsRtl:Z

    .line 179
    sget v0, Lcom/android/calendar/R$drawable;->ic_phone_blue:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->createIconSpan(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactIconSpan:Landroid/text/style/ImageSpan;

    .line 180
    sget v0, Lcom/android/calendar/R$drawable;->ic_location_blue:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->createIconSpan(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLocationIconSpan:Landroid/text/style/ImageSpan;

    .line 181
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_check_grey600_24:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->createIconSpan(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mCheckIconSpan:Landroid/text/style/ImageSpan;

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->updateHints()V

    return-void
.end method

.method private clearAddedContactTermHighlight()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 513
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    instance-of v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    .line 515
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 516
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 517
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 518
    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 519
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 520
    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 521
    new-instance v5, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    iget-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    iput-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 522
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 525
    :cond_0
    return-void
.end method

.method private createIconSpan(Landroid/content/Context;I)Landroid/text/style/ImageSpan;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 536
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconPadding:I

    .line 537
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    move v4, v3

    .line 538
    :goto_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 539
    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconWidth:I

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    .line 540
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1

    :cond_0
    move v2, v3

    .line 536
    goto :goto_0

    .line 537
    :cond_1
    iget v4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintIconPadding:I

    goto :goto_1
.end method

.method private doUpdateHints()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 352
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 353
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getCurrentHint()Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    move-result-object v1

    .line 354
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getBestNewHint(Landroid/text/Editable;)Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    if-ne v0, v2, :cond_3

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpanTime:J

    sub-long/2addr v2, v4

    .line 365
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$1;

    invoke-direct {v4, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$1;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;)V

    iget v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintDuration:I

    int-to-long v6, v5

    sub-long v2, v6, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->setAddedContactTermHighlight()V

    .line 372
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHintTextColor:I

    iget v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHintBackgroundColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintColor(II)V

    .line 378
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 379
    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$2;->$SwitchMap$com$google$android$calendar$event$edit$segment$QuickCreateUsageHintManager$Hints:[I

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 393
    :cond_2
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getHintDescriptor(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_4

    .line 395
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V

    goto :goto_0

    .line 374
    :cond_3
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    if-ne v1, v2, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->clearAddedContactHint()V

    goto :goto_1

    .line 381
    :pswitch_0
    iput-boolean v8, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    goto :goto_2

    .line 385
    :pswitch_1
    iput-boolean v8, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mEntityHintShown:Z

    goto :goto_2

    .line 388
    :pswitch_2
    iput-boolean v8, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    goto :goto_2

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearUsageHints()V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBestNewHint(Landroid/text/Editable;)Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;
    .locals 4

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->isInitialTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 418
    if-nez v0, :cond_0

    .line 420
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->INITIAL:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 453
    :goto_0
    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->isContactAddedTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpanTime:J

    sub-long/2addr v0, v2

    .line 427
    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintDuration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpanInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->isEntityTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSuggestionAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSuggestionAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 437
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    .line 441
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->hasSpanOfFragmentType(Landroid/text/Spannable;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    const/16 v2, 0x109

    if-ne v1, v2, :cond_2

    .line 443
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    goto :goto_0

    .line 446
    :cond_2
    const/16 v1, 0x1a

    invoke-static {p1, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->hasSpanOfFragmentType(Landroid/text/Spannable;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v0, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 448
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->LOCATION:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    goto :goto_0

    .line 453
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentHint()Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->getCurrentHint()Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 408
    instance-of v1, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    if-eqz v1, :cond_0

    .line 409
    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHintDescriptor(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    .locals 7

    .prologue
    .line 471
    if-nez p1, :cond_1

    .line 472
    const/4 v0, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHints:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 475
    if-nez v0, :cond_0

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 478
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->getMessageResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 479
    const-string v5, "{CONTACT_ICON}"

    iget-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactIconSpan:Landroid/text/style/ImageSpan;

    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->replacePlaceholderWithImage(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/text/style/ImageSpan;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 481
    const-string v5, "{LOCATION_ICON}"

    iget-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLocationIconSpan:Landroid/text/style/ImageSpan;

    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->replacePlaceholderWithImage(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/text/style/ImageSpan;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 483
    const-string v5, "{CHECK_ICON}"

    iget-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mCheckIconSpan:Landroid/text/style/ImageSpan;

    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->replacePlaceholderWithImage(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/text/style/ImageSpan;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 485
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_2
    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->getId()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    invoke-static {p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    move-result-object v3

    invoke-direct {v0, v2, v1, p1, v3}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V

    .line 488
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHints:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getUsageHintShowCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static hasSpanOfFragmentType(Landroid/text/Spannable;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    invoke-static {p0, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 462
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 463
    invoke-interface {v5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v5

    new-array v6, v1, [I

    aput p1, v6, v2

    invoke-static {v5, v6}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 467
    :goto_1
    return v0

    .line 462
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 467
    goto :goto_1
.end method

.method private incrementUsageHintShowCount(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getUsageHintShowCount(Ljava/lang/String;)I

    move-result v0

    .line 583
    if-ltz v0, :cond_0

    .line 585
    add-int/2addr v0, p2

    .line 586
    if-lt v0, p3, :cond_1

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 591
    :cond_0
    return-void

    :cond_1
    move p3, v0

    goto :goto_0
.end method

.method private replacePlaceholderWithImage(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/text/style/ImageSpan;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 552
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    move v3, v0

    move-object v1, p1

    .line 553
    :goto_0
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    .line 555
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 556
    check-cast v0, Landroid/text/Spannable;

    .line 561
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 562
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 563
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 558
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_1

    .line 566
    :cond_1
    const/16 v4, 0x21

    invoke-interface {v0, p3, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 569
    invoke-static {v1, p2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    move v3, v0

    .line 570
    goto :goto_0

    .line 571
    :cond_2
    return-object v1
.end method

.method private setAddedContactTermHighlight()V
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 494
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    instance-of v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;

    .line 496
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 497
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 498
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 499
    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 500
    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 502
    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 503
    new-instance v6, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    iget-object v7, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 504
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    invoke-direct {v6, v7, v4, v8, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mAddedContactHighlightConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v6, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 506
    iput-object v6, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 507
    invoke-interface {v1, v6, v2, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 510
    :cond_0
    return-void
.end method

.method private updateHints()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-nez v0, :cond_1

    .line 327
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->TAG:Ljava/lang/String;

    const-string v1, "Input field not initialized, updated canceled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintsEnabled:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 338
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 339
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 341
    :cond_2
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getCurrentHint()Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    if-ne v0, v1, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->clearAddedContactHint()V

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearUsageHints()V

    goto :goto_0

    .line 348
    :cond_4
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->doUpdateHints()V

    goto :goto_0
.end method


# virtual methods
.method public clearAddedContactHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->clearAddedContactTermHighlight()V

    .line 529
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setPointToSpan(Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearHintColor()V

    .line 531
    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 532
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 297
    :cond_0
    return-void
.end method

.method public initialize(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 197
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mSuggestionAdapter:Lcom/google/android/calendar/event/edit/segment/QuickCreateSuggestionAdapter;

    .line 198
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->createQcChipConfigTemplate()Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundDefault(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setShowIcon(Z)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setMinWidth(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAcceptedHighlightColor:I

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextColorDefault(I)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->build()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mAddedContactHighlightConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 204
    return-void
.end method

.method public isContactAddedTooltipEnabled()Z
    .locals 2

    .prologue
    .line 288
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.contact_added_show_count"

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getUsageHintShowCount(Ljava/lang/String;)I

    move-result v0

    .line 289
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxContactAddedShowCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityTooltipEnabled()Z
    .locals 3

    .prologue
    .line 278
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.connector_accepted"

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getUsageHintShowCount(Ljava/lang/String;)I

    move-result v0

    .line 279
    const-string v1, "com.google.android.calendar.event.quickcreate.hints.event_created"

    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getUsageHintShowCount(Ljava/lang/String;)I

    move-result v1

    .line 280
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxConnectorAcceptedCount:I

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxEventCreatedCount:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialTooltipEnabled()Z
    .locals 2

    .prologue
    .line 270
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.initial_show_count"

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getUsageHintShowCount(Ljava/lang/String;)I

    move-result v0

    .line 271
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxInitialHintShowCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 306
    const-string v0, "initialHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    .line 307
    const-string v0, "entityHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mEntityHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mEntityHintShown:Z

    .line 308
    const-string v0, "contactAddedHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    .line 309
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 300
    const-string v0, "initialHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string v0, "entityHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mEntityHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    const-string v0, "contactAddedHintShown"

    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    return-void
.end method

.method public onSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInitialHintShown:Z

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.initial_show_count"

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxInitialHintShowCount:I

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->incrementUsageHintShowCount(Ljava/lang/String;II)V

    .line 221
    :cond_0
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.event_created"

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxEventCreatedCount:I

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->incrementUsageHintShowCount(Ljava/lang/String;II)V

    .line 222
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mConnectorHintAccepted:Z

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.connector_accepted"

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxConnectorAcceptedCount:I

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->incrementUsageHintShowCount(Ljava/lang/String;II)V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mContactAddedHintShown:Z

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "com.google.android.calendar.event.quickcreate.hints.contact_added_show_count"

    iget v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mMaxContactAddedShowCount:I

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->incrementUsageHintShowCount(Ljava/lang/String;II)V

    .line 232
    :cond_2
    return-void
.end method

.method public onSuggestionAccepted()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 236
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    invoke-static {v3, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 239
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpanTime:J

    .line 241
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->clearAddedContactTermHighlight()V

    .line 245
    array-length v4, v0

    if-lez v4, :cond_2

    .line 246
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    .line 247
    invoke-interface {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v4

    .line 248
    new-array v5, v2, [I

    const/4 v6, 0x2

    aput v6, v5, v1

    invoke-static {v4, v5}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpan:Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 250
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mLastAddedContactSpanInput:Ljava/lang/String;

    move v0, v1

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getCurrentHint()Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->getCurrentHint()Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    move-result-object v1

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    move-result-object v1

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 259
    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mConnectorHintAccepted:Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearUsageHints()V

    .line 264
    return-void

    .line 251
    :cond_1
    invoke-static {v4}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isConnectorFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 252
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSuggestionsReceived()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->updateHints()V

    .line 212
    return-void
.end method

.method public refreshHints()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->updateHints()V

    .line 208
    return-void
.end method

.method public setHintingEnabled(Z)V
    .locals 1

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintsEnabled:Z

    .line 316
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mHintsEnabled:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->updateHints()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->mUsageHintViewController:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearUsageHints()V

    goto :goto_0
.end method
