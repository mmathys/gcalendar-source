.class public Lcom/google/android/calendar/event/segment/AccountSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "AccountSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/AccountSegment$AccountProvider;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/AccountSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/AccountSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/android/calendar/R$layout;->segment_account:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget v0, Lcom/android/calendar/R$id;->account_name:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/AccountSegment;->setOnMeasureView(I)V

    .line 41
    return-void
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/AccountSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/AccountSegment$AccountProvider;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/AccountSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/AccountSegment$AccountProvider;

    .line 47
    sget v1, Lcom/android/calendar/R$id;->account_name:I

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/AccountSegment$AccountProvider;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/segment/AccountSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/AccountSegment;->hide()V

    goto :goto_0
.end method
