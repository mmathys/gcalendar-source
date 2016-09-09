.class public Lcom/google/android/calendar/event/segment/DetailsLinkSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "DetailsLinkSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/android/calendar/R$id;->segment_label:I

    return v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/calendar/R$id;->segment_value:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 57
    sget v0, Lcom/android/calendar/R$layout;->segment_details_link:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getLabelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->setOnMeasureView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getValueId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$dimen;->smart_info_segment_status_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->setOnMeasureDetailView(II)V

    .line 61
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->setDefaultPaddingId(I)V

    .line 62
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;

    .line 69
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getLabelId()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->showText(ILjava/lang/CharSequence;)V

    .line 75
    :goto_0
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getValueId()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->showText(ILjava/lang/CharSequence;)V

    .line 80
    :goto_1
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mUri:Landroid/net/Uri;

    .line 81
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->enableAction(Z)V

    .line 88
    :goto_3
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getLabelId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->hideView(I)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getLabelId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->hideView(I)V

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->hide()V

    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->hide()V

    goto :goto_3
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/event/segment/DetailsLinkSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 101
    return-void
.end method
