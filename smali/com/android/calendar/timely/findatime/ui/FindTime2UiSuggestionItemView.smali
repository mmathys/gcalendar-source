.class public Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;
.super Landroid/widget/LinearLayout;
.source "FindTime2UiSuggestionItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDateView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mMoreIcon:Landroid/view/View;

.field private mOnMoreInformationRequestListener:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;

.field private mSuggestionDescription:Ljava/lang/String;

.field private mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimezone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/TimeZone;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_2_suggestion_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/android/calendar/R$id;->date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDateView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/android/calendar/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mTimeView:Landroid/widget/TextView;

    .line 52
    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mTimezone:Ljava/util/TimeZone;

    .line 53
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDescriptionView:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/android/calendar/R$id;->more:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mMoreIcon:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mMoreIcon:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$1;-><init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mOnMoreInformationRequestListener:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;)Lcom/android/calendar/timely/SuggestionRow;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getTimelineSuggestionRow()Lcom/android/calendar/timely/SuggestionRow;

    move-result-object v0

    return-object v0
.end method

.method private getContentDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->accessibility_find_time_list_item:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method private getTimelineSuggestionRow()Lcom/android/calendar/timely/SuggestionRow;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

    return-object v0
.end method

.method private refreshView()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

    iget-object v5, v5, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v6, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mTimezone:Ljava/util/TimeZone;

    .line 88
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/calendar/timely/FindTimeUtil;->getDisplayedDateTime(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

    iget-boolean v5, v5, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

    iget-boolean v0, v0, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->find_time_list_best_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 98
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->setMinimumHeight(I)V

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionDescription:Ljava/lang/String;

    .line 102
    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getContentDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->find_time_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public setOnMoreInformationRequestListener(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mOnMoreInformationRequestListener:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;

    .line 124
    return-void
.end method

.method public setSuggestionRow(Lcom/android/calendar/timely/SuggestionRow;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    iget v0, p1, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->TAG:Ljava/lang/String;

    const-string v1, "Should be a suggestion row, not a header row!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionRow:Lcom/android/calendar/timely/SuggestionRow;

    .line 76
    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mSuggestionDescription:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->refreshView()V

    goto :goto_0
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->mTimezone:Ljava/util/TimeZone;

    .line 68
    return-void
.end method
