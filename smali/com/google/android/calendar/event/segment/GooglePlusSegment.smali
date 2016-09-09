.class public Lcom/google/android/calendar/event/segment/GooglePlusSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "GooglePlusSegment.java"

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
    .line 19
    const-class v0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v0, "open_in_plus"

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/calendar/R$layout;->segment_googleplus:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->setOnMeasureView(I)V

    .line 43
    return-void
.end method

.method public onRefreshModel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 48
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->hide()V

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    sget-boolean v1, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->value:I

    sget v2, Lcom/android/calendar/R$string;->custom_event_open:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iget-object v5, v5, Lcom/android/calendar/event/CustomEvent;->mLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->showText(ILjava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->show()V

    .line 61
    invoke-virtual {p0, v6}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->enableAction(Z)V

    goto :goto_0
.end method

.method protected startAction()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    iget-object v1, v1, Lcom/android/calendar/event/CustomEvent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->hide()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/GooglePlusSegment;->hide()V

    goto :goto_0
.end method
