.class public abstract Lcom/android/calendar/event/DetailsDialogFragment;
.super Lcom/android/calendar/OverlayFragment;
.source "DetailsDialogFragment.java"

# interfaces
.implements Lcom/android/calendar/Troubleshootable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/OverlayFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogTheme()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/calendar/R$style;->DetailsTheme:I

    return v0
.end method

.method public abstract getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    return-object v0
.end method

.method public final isFullScreen(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/calendar/R$bool;->show_event_info_full_screen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected onBackgroundChanged(Lcom/android/calendar/OverlayFragment$OverlayBackground;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "%s.Created"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "%s.Destroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/OverlayFragment;->onDestroy()V

    .line 70
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/DetailsDialogFragment;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/DetailsDialogFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 101
    :cond_0
    return-void
.end method
