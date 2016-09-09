.class public Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "TaskDurationEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/AbstractTaskEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

.field private mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    .line 73
    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z

    move-result v0

    return v0
.end method

.method public onChange(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->showOrHide()V

    .line 100
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 93
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 66
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 68
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 38
    sget v0, Lcom/android/calendar/R$id;->duration_spinner:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 39
    invoke-virtual {p0, p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->set(I)V

    .line 81
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskDurationMillis()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 47
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;)V

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 54
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {v1, v2, v3}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    iput-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    .line 55
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mAdapter:Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;

    iget-object v3, p0, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->mMutableTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment$DurationAdapter;->getPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 61
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskDurationEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method
