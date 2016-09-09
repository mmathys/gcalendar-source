.class public abstract Lcom/android/calendar/newapi/screen/EditScreenController;
.super Lcom/android/calendar/newapi/screen/HostedFragment;
.source "EditScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/screen/DiscardChangesDialog$Callback;
.implements Lcom/android/calendar/newapi/screen/EditScreen$Listener;


# instance fields
.field private mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

.field private mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

.field private final mSegmentControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/newapi/segment/common/SegmentController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    return-void
.end method

.method private showDiscardChangesDialog()V
    .locals 3

    .prologue
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getDiscardChangesMessage()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->newInstance(Landroid/app/Fragment;I)Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected final addController(Lcom/android/calendar/newapi/segment/common/SegmentController;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method protected final createDivider()Landroid/view/View;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createEditScreen(Landroid/content/Context;)Lcom/android/calendar/newapi/screen/EditScreen;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/calendar/newapi/screen/EditScreen;

    invoke-direct {v0, p1}, Lcom/android/calendar/newapi/screen/EditScreen;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAnalyticsLogger()Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    return-object v0
.end method

.method protected getColorCache()Lcom/google/android/calendar/api/ColorCache;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->getInstance()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDiscardChangesMessage()I
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    return-object v0
.end method

.method protected abstract isModified()Z
.end method

.method public notifyAllDayStateChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SegmentController;

    .line 131
    if-eq v0, p1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onAllDayStateChanged()V

    .line 129
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method public notifyCalendarChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SegmentController;

    .line 140
    if-eq v0, p1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCalendarChanged()V

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public notifyColorChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SegmentController;

    .line 122
    if-eq v0, p1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onColorChanged()V

    .line 120
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method public notifyTimeChanged(Lcom/android/calendar/newapi/segment/common/SegmentController;)V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SegmentController;

    .line 149
    if-eq v0, p1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onTimeChanged()V

    .line 147
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->showDiscardChangesDialog()V

    .line 175
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCancelClicked()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->dismiss()V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->showDiscardChangesDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/HostedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "%s.Created"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EditScreenController;->createEditScreen(Landroid/content/Context;)Lcom/android/calendar/newapi/screen/EditScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    .line 47
    if-eqz p3, :cond_0

    .line 48
    const-string v0, "INSTANCE_EDIT_LOGGER"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    return-object v0

    .line 50
    :cond_0
    new-instance v1, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "%s.Destroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;->onDestroy()V

    .line 90
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    .line 69
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;->onDestroyView()V

    .line 70
    return-void
.end method

.method public onDiscard()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->dismiss()V

    .line 167
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "INSTANCE_EDIT_LOGGER"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/screen/HostedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;->onStart()V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/EditScreen;->setListener(Lcom/android/calendar/newapi/screen/EditScreen$Listener;)V

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/EditScreen;->setListener(Lcom/android/calendar/newapi/screen/EditScreen$Listener;)V

    .line 81
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/HostedFragment;->onStop()V

    .line 82
    return-void
.end method

.method protected final setupSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mLogger:Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->startUserInteractionTimer()V

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EditScreenController;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mSegmentControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/common/SegmentController;

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;->initialize(Lcom/android/calendar/newapi/screen/EditScreenController;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenController;->mEditScreen:Lcom/android/calendar/newapi/screen/EditScreen;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/screen/EditScreen;->setSegmentViews(Lcom/android/calendar/newapi/screen/SegmentViews;)V

    .line 117
    return-void
.end method
