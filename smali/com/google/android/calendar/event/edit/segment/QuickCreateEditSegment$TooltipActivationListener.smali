.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TooltipActivationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$1;)V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;-><init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V

    return-void
.end method

.method private maybeActivateTooltip()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mUsageHintManager:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1200(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;->isInitialTooltipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 1326
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 1327
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 1328
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1300(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/android/calendar/editor/EditSegmentController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-interface {v0, v1}, Lcom/android/calendar/editor/EditSegmentController;->isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->showSuggestions(Z)V

    .line 1331
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->maybeActivateTooltip()V

    .line 1349
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isActive()Z
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 1336
    invoke-virtual {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->isQuickCreateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->maybeActivateTooltip()V

    .line 1338
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1500(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/android/calendar/editor/EditSegmentController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Lcom/android/calendar/Utils;->hasContactsAndLocationPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1340
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestContactsAndOrLocationPermissions(Landroid/app/Activity;)V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$TooltipActivationListener;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->onFocusChange(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$1601(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/view/View;Z)V

    .line 1344
    return-void
.end method
