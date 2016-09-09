.class public Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;
.super Landroid/widget/LinearLayout;
.source "ContractViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/GrooveHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/TimelineItemHolder",
        "<",
        "Lcom/android/calendar/groove/TimelineGroove;",
        ">;>",
        "Landroid/widget/LinearLayout;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/GrooveHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/GrooveHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_groove_contract_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->setOrientation(I)V

    .line 32
    sget v0, Lcom/android/calendar/R$layout;->newapi_contract_view_segment:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    .line 34
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 79
    sget v0, Lcom/android/calendar/R$id;->tile1:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    .line 80
    sget v1, Lcom/android/calendar/R$id;->tile2:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/newapi/view/TextTileView;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Lcom/android/calendar/newapi/view/TextTileView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateUi()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/GrooveHolder;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/android/calendar/newapi/segment/contract/ContractUtils;->supportsContract(Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 41
    invoke-static {v3}, Lcom/android/calendar/newapi/segment/contract/ContractUtils;->supportsContract(Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->mModel:Lcom/android/calendar/newapi/model/GrooveHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/TimelineItemHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/TimelineItemHolder;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 47
    sget v1, Lcom/android/calendar/R$id;->tile1:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/newapi/view/TextTileView;

    .line 48
    sget v2, Lcom/android/calendar/R$id;->tile2:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/newapi/view/TextTileView;

    .line 51
    sget v4, Lcom/android/calendar/R$string;->session_number:I

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 54
    sget v4, Lcom/android/calendar/R$string;->done_this_week:I

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 54
    invoke-virtual {v1, v4, v5}, Lcom/android/calendar/newapi/view/TextTileView;->setSecondLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 57
    invoke-virtual {v1}, Lcom/android/calendar/newapi/view/TextTileView;->getSecondLine()Landroid/widget/TextView;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->a11y_done_this_week:I

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v0, v0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    .line 60
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->groove_n_times_a_week:I

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v4

    .line 66
    invoke-static {v0, v1, v4}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 72
    invoke-virtual {v2}, Lcom/android/calendar/newapi/view/TextTileView;->getSecondLine()Landroid/widget/TextView;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesAccessibilityString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
