.class public Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "WeekStartEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartViewHolder;,
        Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;

.field private mDropdownLabelTextColor:I

.field private mDropdownSelectedLabelTextColor:I

.field final mInflater:Landroid/view/LayoutInflater;

.field private mLabelTextColor:I

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 58
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabels:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    sget-object v1, Lcom/android/calendar/R$styleable;->DropdownEditSegment:[I

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_label_color:I

    sget v3, Lcom/android/calendar/R$color;->color_edit_segment_label:I

    .line 67
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabelTextColor:I

    .line 68
    sget v2, Lcom/android/calendar/R$styleable;->DropdownEditSegment_dropdown_label_color:I

    sget v3, Lcom/android/calendar/R$color;->color_edit_segment_dropdown_label:I

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownLabelTextColor:I

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_0
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownSelectedLabelTextColor:I

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabelTextColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownSelectedLabelTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mDropdownLabelTextColor:I

    return v0
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    .line 104
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;->getWeekStartOptions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;

    .line 106
    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;->getWeekStartLabels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mLabels:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;-><init>(Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mAdapter:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mAdapter:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)Z

    move-result v0

    return v0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 94
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 81
    sget v0, Lcom/android/calendar/R$id;->week_start_spinner:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
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
    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mAdapter:Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment$WeekstartSpinnerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 120
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
    .line 125
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)V
    .locals 1

    .prologue
    .line 87
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;->mutableWeekStart()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 88
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->mMutableWeekstart:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->updateData(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/WeekStartEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectWeekStart;)V

    return-void
.end method
