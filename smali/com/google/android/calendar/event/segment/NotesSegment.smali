.class public Lcom/google/android/calendar/event/segment/NotesSegment;
.super Lcom/android/calendar/event/segment/ActionableContentLayout;
.source "NotesSegment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/NotesSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/NotesSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ActionableContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/android/calendar/R$layout;->segment_description:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/NotesSegment;->setOnMeasureView(I)V

    .line 33
    return-void
.end method

.method public onRefreshModel()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->onRefreshModel()V

    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/NotesSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/NotesSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/NotesSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;->getStringData()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/NotesSegment;->hide()V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->value:I

    const-string v2, "(\r\n|\n\r|\r|\n)"

    const-string v3, "<br />"

    .line 44
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/segment/NotesSegment;->showValueOrHideSegment(ILandroid/text/Spanned;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/NotesSegment;->hide()V

    goto :goto_0
.end method
