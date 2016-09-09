.class public Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "ContractEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mButtonDuration:Lcom/android/calendar/newapi/view/TextTileView;

.field private mButtonFrequency:Lcom/android/calendar/newapi/view/TextTileView;

.field private mButtonPreferredTimes:Lcom/android/calendar/newapi/view/TextTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->button_frequency:I

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;->onFrequencyClicked()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->button_duration:I

    if-ne v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;->onDurationClicked()V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->button_preferred_times:I

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;->onPreferredTimeClicked()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 42
    sget v0, Lcom/android/calendar/R$id;->button_frequency:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonFrequency:Lcom/android/calendar/newapi/view/TextTileView;

    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonFrequency:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/android/calendar/R$id;->button_duration:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonDuration:Lcom/android/calendar/newapi/view/TextTileView;

    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonDuration:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v0, Lcom/android/calendar/R$id;->button_preferred_times:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonPreferredTimes:Lcom/android/calendar/newapi/view/TextTileView;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonPreferredTimes:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method setDurationText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonDuration:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 56
    return-void
.end method

.method setFrequencyText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonFrequency:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 52
    return-void
.end method

.method setPreferredTimesText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->mButtonPreferredTimes:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 60
    return-void
.end method
