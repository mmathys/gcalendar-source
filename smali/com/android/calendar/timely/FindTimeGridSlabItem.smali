.class public Lcom/android/calendar/timely/FindTimeGridSlabItem;
.super Landroid/widget/FrameLayout;
.source "FindTimeGridSlabItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;
    }
.end annotation


# instance fields
.field private mDateTimeView:Landroid/widget/TextView;

.field private mDateView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mListener:Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;

.field private mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

.field private mSuggestionDescription:Ljava/lang/String;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimezone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/TimeZone;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_grid_slab_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/android/calendar/R$id;->date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDateView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/android/calendar/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mTimeView:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/calendar/R$id;->datetime:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDateTimeView:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    .line 51
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mTimezone:Ljava/util/TimeZone;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/FindTimeGridSlabItem;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method private refreshView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mTimezone:Ljava/util/TimeZone;

    .line 76
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/calendar/timely/FindTimeUtil;->getDisplayedDateTime(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDateTimeView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->find_time_grid_slab_datetime_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridSlabItem$1;-><init>(Lcom/android/calendar/timely/FindTimeGridSlabItem;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestionDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_1
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestionDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public setOnSlabItemUpdatedListener(Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;

    .line 113
    return-void
.end method

.method public setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 63
    invoke-static {v0, p2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 68
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mSuggestionDescription:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->refreshView()V

    goto :goto_0
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabItem;->mTimezone:Ljava/util/TimeZone;

    .line 56
    return-void
.end method
