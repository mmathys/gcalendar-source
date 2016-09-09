.class public Lcom/android/calendar/groove/GrooveDurationSelectionView;
.super Lcom/android/calendar/groove/GrooveScheduleView;
.source "GrooveDurationSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveDurationSelectionView$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/calendar/groove/GrooveDurationSelectionView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveDurationSelectionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    sget v1, Lcom/android/calendar/R$layout;->groove_duration_selection_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->setOrientation(I)V

    .line 29
    sget v0, Lcom/android/calendar/R$id;->duration_title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveDurationSelectionView;->mTitleView:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/android/calendar/R$id;->duration_15_mins:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 31
    sget v0, Lcom/android/calendar/R$id;->duration_30_mins:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 32
    sget v0, Lcom/android/calendar/R$id;->duration_1_hour:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 33
    sget v0, Lcom/android/calendar/R$id;->duration_2_hours:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView;->setClickListener(Landroid/widget/Button;I)V

    .line 34
    return-void
.end method

.method private setClickListener(Landroid/widget/Button;I)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/groove/GrooveDurationSelectionView$1;-><init>(Lcom/android/calendar/groove/GrooveDurationSelectionView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
