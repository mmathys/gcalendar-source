.class public Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "RecurrenceEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectRecurrence;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

.field private mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

.field private mCustomRecurrenceString:Ljava/lang/String;

.field private mDefaultRecurrences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon2/EventRecurrence;",
            ">;"
        }
    .end annotation
.end field

.field private mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

.field private mIsAutomaticChangeRecurrence:Z

.field private mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

.field private final mNoRecurrenceString:Ljava/lang/String;

.field private final mRecurrencePickerString:Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field private mWeekly:Lcom/android/calendar/CalendarEventRecurrence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-class v0, Lcom/android/calendar/event/data/InputAspectRecurrence;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    .line 55
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrenceString:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    sget v1, Lcom/android/calendar/R$string;->edit_recurrence_none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mNoRecurrenceString:Ljava/lang/String;

    .line 78
    sget v1, Lcom/android/calendar/R$string;->edit_custom_recurrence:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mRecurrencePickerString:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->setupDefaults(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Lcom/android/calendarcommon2/EventRecurrence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mRecurrencePickerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mNoRecurrenceString:Ljava/lang/String;

    return-object v0
.end method

.method private canBeChangedHasChanged()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->showOrHide()V

    .line 169
    return-void
.end method

.method private customRecurrenceSize()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dateTimeDayToRecurrenceDay(I)I
    .locals 3

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_0
    const/high16 v0, 0x10000

    .line 216
    :goto_0
    return v0

    .line 206
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 208
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 210
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 212
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 214
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 216
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private logDidManuallyChangeRecurrence()V
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mIsAutomaticChangeRecurrence:Z

    if-eqz v0, :cond_1

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mIsAutomaticChangeRecurrence:Z

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mEditInput:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logDidChangeRecurrence()V

    goto :goto_0
.end method

.method private setSelectionIndex(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mIsAutomaticChangeRecurrence:Z

    .line 224
    if-eqz p1, :cond_3

    .line 226
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 227
    invoke-virtual {v1, p1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 229
    if-ltz v2, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 241
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 245
    :goto_1
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v1, v2}, Lcom/android/calendarcommon2/EventRecurrence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    :cond_2
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    .line 236
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrenceString:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method private setupDefaults(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v0

    .line 85
    new-instance v1, Lcom/android/calendar/CalendarEventRecurrence;

    invoke-direct {v1}, Lcom/android/calendar/CalendarEventRecurrence;-><init>()V

    .line 86
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->freq:I

    .line 87
    iput v0, v1, Lcom/android/calendar/CalendarEventRecurrence;->wkst:I

    .line 88
    sget v2, Lcom/android/calendar/R$string;->repeats_daily_label:I

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    .line 89
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/android/calendar/CalendarEventRecurrence;

    invoke-direct {v1}, Lcom/android/calendar/CalendarEventRecurrence;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    .line 92
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->freq:I

    .line 93
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    iput v0, v1, Lcom/android/calendar/CalendarEventRecurrence;->wkst:I

    .line 94
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    sget v2, Lcom/android/calendar/R$string;->repeats_weekly_label:I

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    .line 95
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/android/calendar/CalendarEventRecurrence;

    invoke-direct {v1}, Lcom/android/calendar/CalendarEventRecurrence;-><init>()V

    .line 98
    const/4 v2, 0x6

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->freq:I

    .line 99
    iput v0, v1, Lcom/android/calendar/CalendarEventRecurrence;->wkst:I

    .line 100
    sget v2, Lcom/android/calendar/R$string;->repeats_monthly_label:I

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    .line 101
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/android/calendar/CalendarEventRecurrence;

    invoke-direct {v1}, Lcom/android/calendar/CalendarEventRecurrence;-><init>()V

    .line 104
    const/4 v2, 0x7

    iput v2, v1, Lcom/android/calendar/CalendarEventRecurrence;->freq:I

    .line 105
    iput v0, v1, Lcom/android/calendar/CalendarEventRecurrence;->wkst:I

    .line 106
    sget v0, Lcom/android/calendar/R$string;->repeats_yearly_label:I

    iput v0, v1, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method private startDateTimeHasChanged(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ne v0, v2, :cond_0

    .line 178
    :cond_2
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v0, v2, :cond_5

    .line 182
    iget-object v0, v1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->dateTimeDayToRecurrenceDay(I)I

    move-result v2

    aput v2, v0, v3

    .line 184
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v0, v0, v3

    if-eqz v0, :cond_4

    .line 186
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    .line 187
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 188
    const/4 v0, -0x1

    .line 190
    :cond_3
    iget-object v2, v1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aput v0, v2, v3

    .line 195
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-virtual {v1}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->set(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v1}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->setSelectionIndex(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v0, v1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v2

    aput v2, v0, v3

    goto :goto_1
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)Z
    .locals 1

    .prologue
    .line 153
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectRecurrence;->canChangeRecurrence()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50
    check-cast p2, Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)Z

    move-result v0

    return v0
.end method

.method public onChange(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 160
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->startDateTimeHasChanged(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->canBeChangedHasChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 328
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 146
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 147
    invoke-interface {p2, p0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->removeCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 148
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p2, Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 113
    sget v0, Lcom/android/calendar/R$id;->recurrence_spinner:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 114
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->logDidManuallyChangeRecurrence()V

    .line 266
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->set(Ljava/lang/Object;)Z

    .line 309
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 272
    const-string v0, "bundle_event_start_time"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v2, "bundle_event_time_zone"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "bundle_event_rrule"

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mWeekly:Lcom/android/calendar/CalendarEventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarEventRecurrence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-direct {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;-><init>()V

    .line 281
    invoke-virtual {v0, p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setOnRecurrenceSetListener(Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {v0, v5}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setCancelable(Z)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setRtlEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setFirstDayOfWeek(I)V

    .line 287
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    invoke-virtual {v0, p3}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getItem(I)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrenceString:Ljava/lang/String;

    .line 293
    :goto_1
    invoke-static {v0}, Lcom/android/calendar/Utils;->convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    move-result-object v2

    .line 297
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    instance-of v0, v0, Lcom/android/calendar/event/data/InputAspectTime;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    check-cast v0, Lcom/android/calendar/event/data/InputAspectTime;

    .line 300
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 301
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectTime;->isTask()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    .line 302
    invoke-interface {v1}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectTime;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v4

    .line 301
    invoke-static {v3, v1, v4}, Lcom/android/calendar/time/DateTimeUtils;->isFuture(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v1}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-static {v3}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectTime;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 292
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
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
    .line 314
    return-void
.end method

.method public onRecurrenceSet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->setSelectionIndex(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->setOnRecurrenceSetListener(Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)V
    .locals 3

    .prologue
    .line 120
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    .line 122
    new-instance v0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;-><init>(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;Landroid/content/Context;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mAdapter:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 128
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mMutableRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 129
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mIsAutomaticChangeRecurrence:Z

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lcom/android/calendar/Utils;->convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->setSelectionIndex(Ljava/lang/String;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v0, p0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->addCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 139
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mInput:Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectRecurrence;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 140
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p2, Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectRecurrence;)V

    return-void
.end method
