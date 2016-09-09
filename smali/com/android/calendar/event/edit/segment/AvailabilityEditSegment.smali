.class public Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "AvailabilityEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final VALUES:[Lcom/google/calendar/v2/client/service/api/events/Availability;

.field private static sStrings:[Ljava/lang/String;


# instance fields
.field private mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Availability;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mVisibilityListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/Availability;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Availability;->AVAILABLE:Lcom/google/calendar/v2/client/service/api/events/Availability;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/Availability;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 62
    new-instance v0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mVisibilityListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 72
    sget-object v0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->sStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->availability_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->sStrings:[Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method private static final getIndexOf(Lcom/google/calendar/v2/client/service/api/events/Availability;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sget-object v1, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment$2;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Availability:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Availability;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return v0

    .line 104
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangePrivacy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isSharedWithOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/events/Availability;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->getIndexOf(Lcom/google/calendar/v2/client/service/api/events/Availability;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 145
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v1

    .line 146
    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    .line 147
    :goto_0
    if-eq v1, v0, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;->notifyDataSetChanged()V

    .line 152
    :cond_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/events/Availability;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 159
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 112
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mVisibilityListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 114
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 115
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 80
    sget v0, Lcom/android/calendar/R$id;->spinner:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 81
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    sget-object v4, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->sStrings:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
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
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    sget-object v1, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/Availability;

    aget-object v1, v1, p3

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 132
    :cond_0
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
    .line 137
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableAvailability()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 93
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 94
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 95
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mVisibilityListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->mMutableAvailability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/events/Availability;)V

    .line 97
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AvailabilityEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method
