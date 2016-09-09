.class public abstract Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;
.super Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;
.implements Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;
.implements Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;,
        Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;,
        Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputType:",
        "Lcom/android/calendar/event/data/AbstractEditManager",
        "<*>;ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;",
        "TInputType;>;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;",
        "Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;",
        "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field protected mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

.field private mChipUndoBuffer:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

.field protected mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

.field private mIsFullscreen:Z

.field protected final mIsSupportedLocale:Z

.field protected mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabelColorDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLocale:Ljava/util/Locale;

.field private mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mPopulatedTypeface:Landroid/graphics/Typeface;

.field private final mRequestTiming:Lcom/google/android/calendar/utils/RequestTimingUtil;

.field private mResponseSummaryStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;",
            ">;"
        }
    .end annotation
.end field

.field protected mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

.field protected mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<TInputType;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 103
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 115
    new-instance v0, Lcom/google/android/calendar/utils/RequestTimingUtil;

    invoke-direct {v0}, Lcom/google/android/calendar/utils/RequestTimingUtil;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mRequestTiming:Lcom/google/android/calendar/utils/RequestTimingUtil;

    .line 118
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 132
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    .line 138
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    .line 143
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsFullscreen:Z

    move-object v0, p1

    .line 150
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mPopulatedTypeface:Landroid/graphics/Typeface;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocale:Ljava/util/Locale;

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsSupportedLocale:Z

    .line 156
    return-void

    :cond_0
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setChipColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private addResponseSummary(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-direct {v1, v2, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;-><init>(Lcom/google/personalization/assist/annotate/api/nano/EventInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    return-void
.end method

.method private clearUndoBuffer()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 890
    return-void
.end method

.method private getAvatarFromChipSpan(Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;
    .locals 4

    .prologue
    .line 1029
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->detachAndReplaceWithTransparentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1030
    if-nez v0, :cond_0

    .line 1031
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return-object v0

    .line 1034
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1035
    new-instance v2, Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    invoke-direct {v2}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;-><init>()V

    .line 1036
    invoke-virtual {v2, v0}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setAvatarDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 1037
    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setOriginView(Landroid/view/View;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1038
    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/ChangeAnimationDescriptor;->setOriginPosition(Landroid/graphics/Point;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method private getEditableInputFromSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Landroid/text/Editable;
    .locals 5

    .prologue
    .line 1013
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 1014
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getSuggestionFullText(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-static {p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    :cond_0
    return-object v0

    .line 1020
    :cond_1
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    iget-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 1021
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1022
    invoke-virtual {p0, v0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->addFragmentSpan(Landroid/text/Spannable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRequestFocusKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    const-string v0, ":request_focus"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResponseSummaryStackKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const-string v0, ":response_summary"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUndoRecordStackKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    const-string v0, ":undo_record"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isResponseSummaryRelevant(Landroid/text/Editable;Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;)Z
    .locals 2

    .prologue
    .line 946
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    if-nez v0, :cond_1

    .line 947
    :cond_0
    const/4 v0, 0x0

    .line 950
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->suggestionText:Ljava/lang/String;

    .line 951
    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private setChipColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 988
    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 989
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v2, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getTextPaint(Z)Landroid/text/TextPaint;

    move-result-object v2

    .line 990
    invoke-static {p1}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 992
    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 993
    new-instance v4, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-direct {v4, v5}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;-><init>(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 994
    invoke-virtual {v4, v2}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setTextPaintDefault(Landroid/text/TextPaint;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v2

    .line 995
    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->setBackgroundDefault(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->build()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 999
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v4, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    .line 1000
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1001
    invoke-virtual {v4}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getConfig()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v5

    if-ne v5, v3, :cond_0

    .line 1002
    iget-object v5, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v4, v5}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 1000
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    return-void
.end method

.method private shouldIgnoreResponse(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;)Z
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;->token:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldRequestSuggestions(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 981
    :goto_0
    return v0

    .line 983
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 955
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private titleFromEventInfo(Lcom/google/personalization/assist/annotate/api/nano/EventInfo;)Landroid/text/Editable;
    .locals 6

    .prologue
    .line 869
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-static {v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->hasAnnotationFragments(Lcom/google/personalization/assist/annotate/api/nano/Annotation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 882
    :cond_0
    return-object v0

    .line 874
    :cond_1
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    iget-object v2, v1, Lcom/google/personalization/assist/annotate/api/nano/Annotation;->fragment:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 875
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 878
    iget-object v5, v4, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    if-eqz v5, :cond_2

    .line 879
    invoke-virtual {p0, v0, v4}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->addFragmentSpan(Landroid/text/Spannable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V

    .line 875
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateResponseSummaryStack(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 931
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isResponseSummaryRelevant(Landroid/text/Editable;Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    :cond_0
    return-void

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateUndoBuffer(Landroid/text/SpannedString;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V
    .locals 3

    .prologue
    .line 902
    invoke-static {p2}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->getLastFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v0

    .line 905
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isMultiStepChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->clearUndoBuffer()V

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getSuggestionType()I

    move-result v1

    .line 909
    invoke-static {v0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isChippableFragment(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    .line 912
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getLastAcceptedSuggestion()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;-><init>(Landroid/text/SpannedString;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V

    .line 911
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_1
    return-void
.end method


# virtual methods
.method protected addChangeExecutor(Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    if-eqz p6, :cond_0

    instance-of v1, p3, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    if-eqz v1, :cond_0

    .line 410
    check-cast p3, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;

    .line 411
    invoke-direct {p0, p3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getAvatarFromChipSpan(Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;)Lcom/android/calendar/editor/ChangeAnimationDescriptor;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/calendar/editor/EditSegmentController;->applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;

    move-result-object v0

    .line 416
    :cond_0
    if-eqz v0, :cond_1

    .line 417
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addFragmentSpan(Landroid/text/Spannable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    if-ltz v1, :cond_0

    iget v1, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    if-gez v1, :cond_1

    .line 386
    :cond_0
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Fragment positions are out of bounds: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_1
    iget v1, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    iget v2, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p0, v0, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->newSpanForFragment(Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    move-result-object v0

    iget v1, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    iget v2, p2, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    const/16 v3, 0x21

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isNoOpTextChange(Landroid/text/Editable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 592
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->clearUndoBuffer()V

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->updateResponseSummaryStack(Landroid/text/Editable;)V

    .line 594
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method protected canBeChanged(Lcom/android/calendar/event/data/AbstractEditManager;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)Z"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->canBeChanged(Lcom/android/calendar/event/data/AbstractEditManager;)Z

    move-result v0

    return v0
.end method

.method protected abstract canChangeTitle()Z
.end method

.method protected doNotRequestSuggestions(Landroid/text/Spanned;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 308
    return-void
.end method

.method protected abstract doRequestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
.end method

.method protected fetchCurrentLocationForQuery(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V
    .locals 2

    .prologue
    .line 672
    .line 673
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 674
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->isLocationSupportedInCountry(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 677
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 678
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 696
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$4;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$4;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 702
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 704
    :cond_0
    return-void
.end method

.method protected getBestResultTitle()Landroid/text/Editable;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v2

    .line 819
    invoke-direct {p0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->updateResponseSummaryStack(Landroid/text/Editable;)V

    .line 820
    const/4 v0, 0x0

    .line 825
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    .line 829
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    if-eqz v1, :cond_2

    .line 830
    iget-object v1, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->suggestionText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-direct {p0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->titleFromEventInfo(Lcom/google/personalization/assist/annotate/api/nano/EventInfo;)Landroid/text/Editable;

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    .line 838
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->stripTrailingSpaces(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 839
    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;->eventInfo:Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->titleFromEventInfo(Lcom/google/personalization/assist/annotate/api/nano/EventInfo;)Landroid/text/Editable;

    move-result-object v0

    .line 840
    sget-object v2, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v4, "Stripping from a prefix match. Server title: \'%s\', tail: \'%s\'"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v8

    invoke-static {v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 842
    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 848
    :cond_2
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 849
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Event info from the server is stale or unavailable. Using full title."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 851
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Title: \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 853
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 854
    const-class v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 855
    invoke-static {v1, v0}, Lcom/android/calendar/SpanUtils;->getAllSpansOfType(Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;

    .line 856
    array-length v4, v0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 857
    invoke-interface {v5}, Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;->getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    move-result-object v6

    new-array v7, v8, [I

    aput v9, v7, v3

    invoke-static {v6, v7}, Lcom/google/android/calendar/net/taskassist/TaskAssistUtils;->isAnyOfFragmentTypes(Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;[I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 858
    invoke-interface {v1, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 856
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 861
    goto :goto_0
.end method

.method protected getCurrentSuggestionsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, ":current_suggestions"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLabelColorData()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getMutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;
.end method

.method protected getSessionLoggingRequest(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;
    .locals 5

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_0

    .line 773
    const/4 v0, 0x0

    .line 807
    :goto_0
    return-object v0

    .line 776
    :cond_0
    new-instance v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    invoke-direct {v2}, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;-><init>()V

    .line 777
    const/4 v0, 0x2

    iput v0, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    .line 778
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    const/4 v0, 0x4

    :goto_1
    iput v0, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    .line 781
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 782
    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    .line 784
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    .line 787
    :cond_1
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;-><init>()V

    .line 788
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 789
    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    .line 790
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    .line 792
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;

    invoke-virtual {v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    .line 794
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getLastAcceptedSuggestion()Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    move-result-object v1

    .line 795
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->getLastQueryText()Ljava/lang/String;

    move-result-object v4

    .line 796
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 797
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    .line 798
    iget-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotationHint:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    .line 799
    iget-object v0, v1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 801
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    .line 806
    :goto_2
    iput-object v3, v2, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    move-object v0, v2

    .line 807
    goto/16 :goto_0

    .line 779
    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    .line 803
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    .line 804
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    goto :goto_2
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsFullscreen:Z

    return v0
.end method

.method protected abstract isNew()Z
.end method

.method protected isNoOpTextChange(Landroid/text/Editable;)Z
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isQuickCreateAvailable()Z
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsSupportedLocale:Z

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract newSpanForFragment(Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 356
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_0

    .line 357
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestReauthSuccess()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Dropping auth recovery on cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected onAfterSetInput()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onAttachedToWindow()V

    .line 657
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 660
    :cond_0
    return-void
.end method

.method public onAutoCompleteResponse(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "TResponseType;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 753
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "onAutoCompleteResponse: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 754
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldIgnoreResponse(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected or stale response: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 763
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mRequestTiming:Lcom/google/android/calendar/utils/RequestTimingUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/utils/RequestTimingUtil;->stopTiming(Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditSaveButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onEndFullscreenEdit()V

    .line 742
    :cond_1
    return-void
.end method

.method public onDeletePressed()Z
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    .line 601
    iget-object v1, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousTextField:Landroid/text/SpannedString;

    .line 602
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 604
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 603
    invoke-virtual {v2, v3, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(II)V

    .line 607
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getQueryManager()Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousSelectedSuggestion:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;->previousTextField:Landroid/text/SpannedString;

    .line 608
    invoke-virtual {v0}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {v1, v2, v0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setLastAcceptedSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->requestSuggestions()V

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 664
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onDetachedFromWindow()V

    .line 665
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 668
    :cond_0
    return-void
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 4

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 574
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->clearFocus()V

    .line 578
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->clearUndoBuffer()V

    .line 580
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mRequestTiming:Lcom/google/android/calendar/utils/RequestTimingUtil;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->latency_category:I

    .line 581
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->requestLatencyActionStringResId()I

    move-result v3

    .line 580
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/calendar/utils/RequestTimingUtil;->logStatistics(Landroid/content/Context;II)V

    .line 582
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 186
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->dispose()V

    .line 189
    iput-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 190
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onFinishInflate()V

    .line 161
    sget v0, Lcom/android/calendar/R$id;->input:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setKeyInterceptor(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextKeyInterceptor;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->addSelectionListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mPopulatedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->disableSelectingChip()V

    .line 174
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->createQcChipConfigTemplate()Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->build()Lcom/android/calendar/event/edit/segment/ChipConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 175
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->prepareLineHeightForChipConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldShowZeroStateSuggestions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setMinimumQueryThreshold(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 527
    if-eqz p2, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 531
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 532
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 536
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onQueriesInProgressChange(Z)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method protected onRequestSuggestions(Landroid/text/Spanned;)V
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldRequestSuggestions(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->doRequestSuggestions(Landroid/text/Spanned;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    .line 475
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;-><init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    .line 476
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mRequestTiming:Lcom/google/android/calendar/utils/RequestTimingUtil;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/utils/RequestTimingUtil;->startTiming(Ljava/lang/Object;)V

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->doNotRequestSuggestions(Landroid/text/Spanned;)V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mExpectedRequest:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$RequestSummary;

    goto :goto_0
.end method

.method public onResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getUndoRecordStackKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$UndoRecord;

    .line 210
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getResponseSummaryStackKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$ResponseSummary;

    .line 219
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getRequestFocusKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 196
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 195
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getUndoRecordStackKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mChipUndoBuffer:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getResponseSummaryStackKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mResponseSummaryStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 201
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionChanged(II)V
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldIgnoreTextChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    if-ne p1, p2, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 624
    :cond_2
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->clearUndoBuffer()V

    goto :goto_0
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setInputEntity(Lcom/android/calendar/event/data/AbstractEditManager;)V

    .line 428
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->canChangeTitle()Z

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setEnabled(Z)V

    .line 430
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setFocusable(Z)V

    .line 433
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->clearFocus()V

    .line 435
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getMutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 436
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onAfterSetInput()V

    .line 440
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getLabelColorData()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 441
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->setChipColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 442
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLabelColorDataObserver:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onShowKeyboardIfNeeded()V

    .line 449
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractEditManager;)V

    return-void
.end method

.method public onShowKeyboardIfNeeded()V
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onShowKeyboardIfNeeded()V

    .line 456
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getRequestFocusKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 458
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->shouldForceHideKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->requestFocus()Z

    .line 461
    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isNew()Z

    move-result v0

    goto :goto_0
.end method

.method public onSuggestReauthSuccess()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    .line 491
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 493
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getEditableInputFromSuggestion(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)Landroid/text/Editable;

    move-result-object v0

    .line 495
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->beginIgnoreTextChanges()V

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(I)V

    .line 502
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->endIgnoreTextChanges()V

    .line 509
    invoke-direct {p0, v1, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->updateUndoBuffer(Landroid/text/SpannedString;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V

    .line 510
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->addResponseSummary(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Landroid/text/SpannedString;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->requestSuggestions()V

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->endIgnoreTextChanges()V

    throw v0
.end method

.method protected abstract onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;Landroid/text/SpannedString;Ljava/lang/String;)V
.end method

.method public bridge synthetic onSuggestionAccepted(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onSuggestionAccepted(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;)V

    return-void
.end method

.method protected abstract onSuggestionReady(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "Ljava/lang/String;",
            "TResponseType;)V"
        }
    .end annotation
.end method

.method protected abstract onTitleChanged(Ljava/lang/String;)V
.end method

.method public onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onWillEnterFullScreen(Landroid/widget/FrameLayout;ZLcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;Lcom/android/calendar/event/edit/EditSaveButton;)V

    .line 544
    iput-boolean v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsFullscreen:Z

    .line 547
    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    .line 548
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditSaveButton;->setMode(Z)V

    .line 549
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/edit/EditSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    return-void
.end method

.method public onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onWillExitFullScreen(Landroid/widget/FrameLayout;Z)V

    .line 555
    iput-boolean v2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mIsFullscreen:Z

    .line 559
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 560
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 563
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/EditSaveButton;->setMode(Z)V

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mSaveButton:Lcom/android/calendar/event/edit/EditSaveButton;

    .line 567
    return-void
.end method

.method protected abstract requestLatencyActionStringResId()I
.end method

.method protected restoreSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 717
    .line 718
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getCurrentSuggestionsKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_0

    .line 721
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->fromParcelableArrayToClass(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p1, v0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;->setSuggestionResponse(Ljava/util/List;)V

    .line 726
    :cond_0
    return-void
.end method

.method protected saveSuggestionsInstanceState(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestionAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/protobuf/MessageParceler;->toParcelableArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 711
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getCurrentSuggestionsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 713
    :cond_0
    return-void
.end method

.method protected abstract setInputEntity(Lcom/android/calendar/event/data/AbstractEditManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInputType;)V"
        }
    .end annotation
.end method

.method protected shouldForceHideKeyboard()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldRequestSuggestions(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->getMinimumQueryThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowZeroStateSuggestions()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method protected showSuggestions(Z)V
    .locals 1

    .prologue
    .line 522
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->showSuggestions(Z)V

    .line 523
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
