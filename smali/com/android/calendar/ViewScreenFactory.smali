.class public Lcom/android/calendar/ViewScreenFactory;
.super Ljava/lang/Object;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;,
        Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;,
        Lcom/android/calendar/ViewScreenFactory$Arguments;,
        Lcom/android/calendar/ViewScreenFactory$ResolveResult;
    }
.end annotation


# direct methods
.method static synthetic access$300(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEventWithResolveResult(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onTimelineGroove(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/calendar/ViewScreenFactory;->isNewViewScreenSupportingTimelineEvent(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    return-void
.end method

.method public static createViewScreen(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/ViewScreenFactory;->onTimelineItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static isNewViewScreenSupportingEvent(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel;->isEventEditable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-nez v1, :cond_0

    .line 210
    iget-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-boolean v1, v1, Lcom/android/calendar/event/AttendeeCollection;->mHasResourceRooms:Z

    if-nez v1, :cond_0

    .line 216
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNewViewScreenSupportingTimelineEvent(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-static {p0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEventViewScreenEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineEvent;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 191
    :cond_1
    :goto_0
    return v0

    .line 187
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEventViewScreenEnabledForUnsupportedEvents(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    check-cast p1, Lcom/android/calendar/timely/TimelineEvent;

    .line 191
    instance-of v2, p1, Lcom/android/calendar/timely/TimelineHoliday;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineSuggestion;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineDraftEvent;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;

    if-nez v2, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->hasSmartMail()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineEvent;->getOrganizer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static onNewViewScreenCompatibleTimelineEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<+",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEventViewScreenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEventWithResolveResult(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    .line 241
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 230
    :cond_0
    new-instance v0, Lcom/android/calendar/ViewScreenFactory$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ViewScreenFactory$1;-><init>(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/calendar/ViewScreenFactory$Arguments;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/calendar/ViewScreenFactory$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto :goto_0
.end method

.method private static onNewViewScreenCompatibleTimelineEventWithResolveResult(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<+",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->model:Lcom/android/calendar/event/CalendarEventModel;

    .line 253
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    .line 254
    invoke-static {v1}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEventViewScreenEnabledForUnsupportedEvents(Landroid/content/Context;)Z

    move-result v1

    .line 255
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/calendar/ViewScreenFactory;->isNewViewScreenSupportingEvent(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    const-string v2, "ViewScreenController"

    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 258
    invoke-static {v0, v3}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->newInstance(Lcom/android/calendar/timely/TimelineEvent;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    .line 256
    invoke-interface {v1, v2, v0, v3}, Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;->onViewScreenCreationSuccess(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Lcom/android/calendar/timely/TimelineItem;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto :goto_0
.end method

.method private static onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<+",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 327
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    sget-object v2, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;->onViewScreenCreationSuccess(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Lcom/android/calendar/timely/TimelineItem;)V

    .line 336
    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private static onTimelineExternalEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->areGrooveViewEditScreensEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    .line 276
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/calendar/ViewScreenFactory$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/ViewScreenFactory$2;-><init>(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/calendar/ViewScreenFactory$Arguments;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/calendar/ViewScreenFactory$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0
.end method

.method private static onTimelineGroove(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/ViewScreenFactory$Arguments",
            "<",
            "Lcom/android/calendar/groove/TimelineGroove;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->areGrooveViewEditScreensEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    const-string v2, "ViewScreenController"

    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 344
    invoke-static {v0, v3}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->newInstance(Lcom/android/calendar/groove/TimelineGroove;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    .line 342
    invoke-interface {v1, v2, v0, v3}, Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;->onViewScreenCreationSuccess(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Lcom/android/calendar/timely/TimelineItem;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto :goto_0
.end method

.method private static onTimelineItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;)Landroid/os/AsyncTask;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    new-instance v1, Lcom/android/calendar/ViewScreenFactory$Arguments;

    invoke-direct {v1, v0}, Lcom/android/calendar/ViewScreenFactory$Arguments;-><init>(Lcom/android/calendar/ViewScreenFactory$1;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    .line 162
    iput-object p1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    .line 163
    iput-object p2, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 164
    iput-object p3, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    .line 166
    instance-of v2, p1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v2, :cond_0

    .line 167
    invoke-static {v1}, Lcom/android/calendar/ViewScreenFactory;->onTimelineGroove(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    instance-of v2, p1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    if-eqz v2, :cond_1

    .line 169
    invoke-static {v1}, Lcom/android/calendar/ViewScreenFactory;->onTimelineExternalEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {p0, p1}, Lcom/android/calendar/ViewScreenFactory;->isNewViewScreenSupportingTimelineEvent(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-static {v1}, Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {v1}, Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto :goto_0
.end method
