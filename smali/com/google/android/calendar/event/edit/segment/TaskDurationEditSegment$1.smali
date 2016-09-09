.class Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;
.super Ljava/lang/Object;
.source "TaskDurationEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->access$200(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    invoke-static {v2}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->getPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;->onChange(Ljava/lang/Integer;)V

    return-void
.end method
