.class public Lcom/android/calendar/event/segment/CustomEventSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "CustomEventSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCustomEvent:Lcom/android/calendar/event/CustomEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/calendar/event/segment/CustomEventSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/event/segment/CustomEventSegment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/CustomEventSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/CustomEventSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/calendar/R$layout;->segment_custom_event:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/CustomEventSegment;->setOnMeasureView(I)V

    .line 55
    return-void
.end method

.method public onRefreshModel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 59
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/segment/CustomEventSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iput-object v0, p0, Lcom/android/calendar/event/segment/CustomEventSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/segment/CustomEventSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->hide()V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget-boolean v1, Lcom/android/calendar/event/segment/CustomEventSegment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->value:I

    sget v2, Lcom/android/calendar/R$string;->custom_event_open:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/event/segment/CustomEventSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iget-object v5, v5, Lcom/android/calendar/event/CustomEvent;->mLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/CustomEventSegment;->showText(ILjava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->show()V

    .line 73
    invoke-virtual {p0, v6}, Lcom/android/calendar/event/segment/CustomEventSegment;->enableAction(Z)V

    goto :goto_0
.end method

.method protected startAction()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/event/segment/CustomEventSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iget-object v1, v1, Lcom/android/calendar/event/CustomEvent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->hide()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CustomEventSegment;->hide()V

    goto :goto_0
.end method
