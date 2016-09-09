.class final Lcom/android/calendar/ViewScreenFactory$2;
.super Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ViewScreenFactory;->onTimelineExternalEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;


# direct methods
.method constructor <init>(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;-><init>(Lcom/android/calendar/ViewScreenFactory$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 279
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/ViewScreenFactory$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    invoke-interface {v0}, Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;->onViewScreenCreationFailure()V

    .line 317
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget-object v1, v0, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->model:Lcom/android/calendar/event/CalendarEventModel;

    .line 289
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-object v2, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v2, v2, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget v2, v2, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->selfAttendeeStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 291
    iget-boolean v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_1

    .line 293
    new-instance v2, Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    new-instance v3, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v4, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v6, v6, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget-object v6, v6, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->accountName:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v6, v6, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget-object v6, v6, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->calendarId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v8}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v5, v5, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iget-object v5, v5, Lcom/android/calendar/ViewScreenFactory$ResolveResult;->grooveId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/android/calendar/groove/TimelineGroove;-><init>(Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/api/HabitDescriptor;)V

    .line 301
    iget v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/groove/TimelineGroove;->setEventExtrasFlags(Ljava/lang/String;)V

    .line 302
    iput-object v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 304
    new-instance v0, Lcom/android/calendar/ViewScreenFactory$Arguments;

    invoke-direct {v0, v8}, Lcom/android/calendar/ViewScreenFactory$Arguments;-><init>(Lcom/android/calendar/ViewScreenFactory$1;)V

    .line 305
    iput-object v2, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    .line 306
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    iput-object v1, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->animationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 307
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    .line 308
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    iput-object v1, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->callback:Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;

    .line 309
    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    iput-object v1, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->resolveResult:Lcom/android/calendar/ViewScreenFactory$ResolveResult;

    .line 310
    # invokes: Lcom/android/calendar/ViewScreenFactory;->onTimelineGroove(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    invoke-static {v0}, Lcom/android/calendar/ViewScreenFactory;->access$400(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v0, v0, Lcom/android/calendar/ViewScreenFactory$Arguments;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    iget-object v1, v1, Lcom/android/calendar/ViewScreenFactory$Arguments;->item:Lcom/android/calendar/timely/TimelineItem;

    # invokes: Lcom/android/calendar/ViewScreenFactory;->isNewViewScreenSupportingTimelineEvent(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/ViewScreenFactory;->access$500(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    # invokes: Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/calendar/ViewScreenFactory;->access$600(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$2;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    # invokes: Lcom/android/calendar/ViewScreenFactory;->onOtherTimelineItem(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    invoke-static {v0}, Lcom/android/calendar/ViewScreenFactory;->access$700(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    goto/16 :goto_0
.end method
