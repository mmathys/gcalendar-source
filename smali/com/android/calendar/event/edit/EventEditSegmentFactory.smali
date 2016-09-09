.class public Lcom/android/calendar/event/edit/EventEditSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory;
.source "EventEditSegmentFactory.java"


# static fields
.field private static final GROOVE_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROOVE_EDITOR_SEGMENT_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

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


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const-class v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->TAG:Ljava/lang/String;

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.calendar.task.edit.title"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.task.edit.account"

    aput-object v1, v0, v4

    const-string v1, "com.android.calendar.task.edit.time"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->TASK_EDITOR_SEGMENT_IDS:Ljava/util/List;

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.calendar.groove.edit.title"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.event.edit.calendar"

    aput-object v1, v0, v4

    const-string v1, "com.android.calendar.groove.edit.time"

    aput-object v1, v0, v5

    const-string v1, "com.android.calendar.groove.edit.contract"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "com.android.calendar.groove.edit.notification"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.calendar.event.edit.color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.calendar.event.edit.visibility"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->GROOVE_EDITOR_SEGMENT_IDS:Ljava/util/List;

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.calendar.event.edit.color"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar.event.edit.visibility"

    aput-object v1, v0, v4

    const-string v1, "com.android.calendar.event.edit.availability"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->unmodifiableSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->GROOVE_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/calendar/editor/BaseEditSegmentFactory;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->mContext:Landroid/content/Context;

    .line 102
    const-string v0, "com.android.calendar.event.edit.title"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_title:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 105
    const-string v0, "com.android.calendar.event.edit.time"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_when:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 108
    const-string v0, "com.android.calendar.event.edit.timezone"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_timezone:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 110
    const-string v0, "com.android.calendar.event.edit.recurrence"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_recurrence:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 113
    const-string v0, "com.android.calendar.event.edit.calendar"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_calendar:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 119
    const-string v0, "com.android.calendar.event.edit.location"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_where:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 121
    const-string v0, "com.android.calendar.event.edit.notifications"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_notifications:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->NOTIFICATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 124
    const-string v0, "com.android.calendar.event.edit.guests"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_guests:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 126
    const-string v0, "com.android.calendar.event.edit.hangout"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_hangout:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->HANGOUT_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 129
    const-string v0, "com.android.calendar.event.edit.description"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_description:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 131
    const-string v0, "com.android.calendar.event.edit.color"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_color:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 134
    const-string v0, "com.android.calendar.event.edit.visibility"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_visibility:I

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->VISIBILITY_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 137
    const-string v0, "com.android.calendar.event.edit.availability"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_availability:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 140
    const-string v0, "com.android.calendar.task.edit.title"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_title:I

    sget-object v3, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 143
    const-string v0, "com.android.calendar.task.edit.time"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_when:I

    sget-object v3, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 146
    const-string v0, "com.android.calendar.task.edit.account"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_account:I

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 149
    const-string v0, "com.android.calendar.groove.edit.title"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v2, Lcom/android/calendar/R$layout;->edit_segment_title:I

    sget-object v3, Lcom/android/calendar/groove/GrooveEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 152
    const-string v0, "com.android.calendar.groove.edit.time"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    const-string v2, "com.android.calendar.groove.edit.time"

    .line 154
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->getEditSegmentLayoutId(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 156
    const-string v0, "com.android.calendar.groove.edit.contract"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;

    const-string v2, "com.android.calendar.groove.edit.contract"

    .line 158
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->getEditSegmentLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethod;-><init>(Landroid/content/Context;I)V

    .line 156
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 159
    const-string v0, "com.android.calendar.groove.edit.notification"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    const-string v2, "com.android.calendar.groove.edit.notification"

    .line 161
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveEditManager;->getEditSegmentLayoutId(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/android/calendar/event/data/EventEditManager;->NOTIFICATION_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 163
    return-void
.end method

.method private getEventEditorSegmentIds(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getQualityOfService()I

    move-result v1

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "@gmail.com"

    .line 173
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->shouldMoveGuestsUp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->TAG:Ljava/lang/String;

    const-string v3, "Found improper quality of service (%d) for gmail"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    :cond_0
    const-string v2, "com.android.calendar.event.edit.title"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, "com.android.calendar.event.edit.calendar"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->shouldMoveGuestsUp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    const-string v2, "com.android.calendar.event.edit.guests"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    const-string v2, "com.android.calendar.event.edit.time"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "com.android.calendar.event.edit.timezone"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v2, "com.android.calendar.event.edit.recurrence"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v2, "com.android.calendar.event.edit.location"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v2, "com.android.calendar.event.edit.notifications"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->shouldMoveGuestsUp(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    const-string v1, "com.android.calendar.event.edit.guests"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    const-string v1, "com.android.calendar.event.edit.hangout"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v1, "com.android.calendar.event.edit.color"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "com.android.calendar.event.edit.description"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v1, "com.android.calendar.event.edit.attachments"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "com.android.calendar.event.edit.visibility"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "com.android.calendar.event.edit.availability"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object v0
.end method

.method private shouldMoveGuestsUp(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
    .line 212
    const-string v0, "com.android.calendar.event.edit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p2}, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->getEventEditorSegmentIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const-string v0, "com.android.calendar.task.edit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->TASK_EDITOR_SEGMENT_IDS:Ljava/util/List;

    goto :goto_0

    .line 216
    :cond_1
    const-string v0, "com.android.calendar.groove.edit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    sget-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->GROOVE_EDITOR_SEGMENT_IDS:Ljava/util/List;

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 224
    const-string v0, "com.android.calendar.groove.edit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/android/calendar/event/edit/EventEditSegmentFactory;->GROOVE_EDITOR_SEGMENTS_WITHOUT_DIVIDERS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/editor/BaseEditSegmentFactory;->segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
