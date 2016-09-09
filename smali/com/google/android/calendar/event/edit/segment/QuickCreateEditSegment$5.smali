.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;
.super Ljava/lang/Object;
.source "QuickCreateEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->applyQuickCreateInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$location:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->val$location:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->val$location:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 887
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 888
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStructuredLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    .line 889
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 891
    :try_start_0
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 892
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$5;->val$location:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 896
    return-void

    .line 894
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v0
.end method
