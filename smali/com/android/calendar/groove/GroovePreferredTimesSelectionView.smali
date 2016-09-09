.class public Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;
.super Lcom/android/calendar/groove/GrooveScheduleView;
.source "GroovePreferredTimesSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget v1, Lcom/android/calendar/R$layout;->groove_preferred_times_selection_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setOrientation(I)V

    .line 31
    sget v0, Lcom/android/calendar/R$id;->preferred_times_title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->mTitleView:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/android/calendar/R$id;->any_time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 34
    sget v0, Lcom/android/calendar/R$id;->morning:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 35
    sget v0, Lcom/android/calendar/R$id;->afternoon:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 36
    sget v0, Lcom/android/calendar/R$id;->evening:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 37
    return-void
.end method

.method private setClickListener(Landroid/widget/Button;I)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;-><init>(Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
