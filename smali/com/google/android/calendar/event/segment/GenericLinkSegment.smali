.class public Lcom/google/android/calendar/event/segment/GenericLinkSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "GenericLinkSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;
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
    .line 20
    const-class v0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/calendar/R$layout;->segment_generic_link:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->setOnMeasureView(I)V

    .line 53
    return-void
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;

    .line 60
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;->getText()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->enableAction(Z)V

    .line 74
    :goto_2
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget v0, Lcom/android/calendar/R$id;->value:I

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->hide()V

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->hide()V

    goto :goto_2
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/event/segment/GenericLinkSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 79
    return-void
.end method
