.class public Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;
.super Lcom/android/calendar/event/edit/EventEditSegmentFactory;
.source "TimelyEventEditSegmentFactory.java"


# static fields
.field private static final TASK_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_EDITOR_SEGMENT_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.calendar.task.edit.title"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.task.edit.assist"

    aput-object v1, v0, v4

    const-string v1, "com.android.calendar.task.edit.account"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.android.calendar.task.edit.time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.calendar.task.edit.duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.calendar.task.edit.recurrence"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->TASK_EDITOR_SEGMENT_IDS:Ljava/util/List;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.calendar.task.edit.time"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.task.edit.duration"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->unmodifiableSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->TASK_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "com.android.calendar.event.edit.location"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_where_timely:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 48
    const-string v0, "com.android.calendar.event.edit.title"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_title_quickcreate:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 52
    const-string v0, "com.android.calendar.event.edit.attachments"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_attachments:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 55
    const-string v0, "com.android.calendar.task.edit.assist"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_task_assist:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 59
    const-string v0, "com.android.calendar.task.edit.title"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_title_tasksuggest:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 62
    const-string v0, "com.android.calendar.task.edit.recurrence"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_recurrence:I

    sget-object v3, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 66
    const-string v0, "com.android.calendar.task.edit.duration"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_task_duration:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 68
    return-void
.end method


# virtual methods
.method public createAndAddEditSegmentsMaybeInHeader(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/EditSegmentController;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 86
    if-eqz p3, :cond_1

    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    if-eqz p4, :cond_2

    move v0, v7

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    invoke-virtual {p0, p1, p2, p5}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v8

    .line 91
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v2

    .line 94
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v1

    move v5, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/editor/EditSegment;

    .line 95
    instance-of v0, v4, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    if-nez v0, :cond_0

    instance-of v0, v4, Lcom/android/calendar/event/edit/segment/TitleEditSegment;

    if-nez v0, :cond_0

    instance-of v0, v4, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    if-eqz v0, :cond_3

    .line 98
    :cond_0
    invoke-virtual {p4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    add-int/lit8 v6, v5, 0x1

    .line 104
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_2

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p3

    move-object v3, p2

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->addSegmentToContainer(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/android/calendar/editor/EditSegment;IIZ)I

    move-result v6

    goto :goto_3

    .line 106
    :cond_4
    return-object v8
.end method

.method protected getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "com.android.calendar.task.edit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->TASK_EDITOR_SEGMENT_IDS:Ljava/util/List;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 111
    const-string v0, "com.android.calendar.task.edit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/google/android/calendar/event/edit/TimelyEventEditSegmentFactory;->TASK_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
