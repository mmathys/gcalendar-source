.class public Lcom/android/calendar/groove/GrooveFrequencySelectionView;
.super Lcom/android/calendar/groove/GrooveScheduleView;
.source "GrooveFrequencySelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveFrequencySelectionView$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    sget v1, Lcom/android/calendar/R$layout;->groove_frequency_selection_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setOrientation(I)V

    .line 30
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setTransitionGroup(Z)V

    .line 33
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->frequency_title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->mTitleView:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/android/calendar/R$id;->one_time_per_week:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 35
    sget v0, Lcom/android/calendar/R$id;->two_times_per_week:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 36
    sget v0, Lcom/android/calendar/R$id;->three_times_per_week:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 37
    sget v0, Lcom/android/calendar/R$id;->five_times_per_week:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 38
    sget v0, Lcom/android/calendar/R$id;->every_day:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 39
    return-void
.end method

.method private setClickListener(Landroid/widget/Button;I)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;-><init>(Lcom/android/calendar/groove/GrooveFrequencySelectionView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
