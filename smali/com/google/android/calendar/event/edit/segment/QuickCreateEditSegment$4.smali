.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$4;
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


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    .line 872
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mEvent:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$400(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableTitleAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    .line 873
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 874
    return-void
.end method
