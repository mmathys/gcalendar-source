.class public Lcom/android/calendar/event/segment/ReminderSegment;
.super Lcom/android/calendar/event/segment/MultilineSegment;
.source "ReminderSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# instance fields
.field private mCalendarMaxReminders:I

.field private final mNoReminder:Ljava/lang/String;

.field private mReminderMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderMethodValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

.field protected final mSupportedReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/ReminderSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/ReminderSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/MultilineSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/android/calendar/event/ReminderUtils;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/ReminderUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->no_reminder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mNoReminder:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private displayReminders(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 171
    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mNoReminder:Ljava/lang/String;

    .line 171
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderUtils:Lcom/android/calendar/event/ReminderUtils;

    iget-boolean v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/calendar/event/ReminderUtils;->constructNotificationLabel(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_1
    iget v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mCalendarMaxReminders:I

    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/event/segment/ReminderSegment;->onRefreshValue(Ljava/util/List;I)V

    .line 179
    :cond_2
    :goto_2
    return-void

    .line 176
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/ReminderSegment;->alwaysShowSegment(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ReminderSegment;->hide()V

    goto :goto_2
.end method

.method private initReminders(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 149
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v2

    .line 150
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mSupportedReminders:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 157
    return-void
.end method

.method public static loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 197
    array-length v0, v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-object v2
.end method

.method public static loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private declared-synchronized prepareReminders(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodLabels:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/ReminderSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    sget v1, Lcom/android/calendar/R$array;->reminder_methods_values:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/segment/ReminderSegment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodValues:Ljava/util/ArrayList;

    .line 119
    sget v1, Lcom/android/calendar/R$array;->reminder_methods_labels:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/segment/ReminderSegment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodLabels:Ljava/util/ArrayList;

    .line 123
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mReminderMethodLabels:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/ReminderUtils;->reduceMethodList(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected alwaysShowSegment(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/calendar/R$id;->primary_text:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/calendar/R$layout;->segment_reminder:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    return-void
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 89
    iget v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarMaxReminders:I

    iput v1, p0, Lcom/android/calendar/event/segment/ReminderSegment;->mCalendarMaxReminders:I

    .line 90
    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/ReminderSegment;->prepareReminders(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/ReminderSegment;->initReminders(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/ReminderSegment;->displayReminders(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 93
    return-void
.end method
