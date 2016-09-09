.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;
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

.field final synthetic val$contactAnnotations:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->val$contactAnnotations:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getTitleAnnotations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->val$contactAnnotations:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 857
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableTitleAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    .line 858
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 859
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 860
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$3;->val$contactAnnotations:Ljava/util/Collection;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addAll(Ljava/util/Collection;)Z

    .line 861
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 863
    :cond_0
    return-void
.end method
