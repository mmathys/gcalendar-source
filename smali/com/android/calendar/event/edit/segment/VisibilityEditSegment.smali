.class public Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "VisibilityEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectVisibility;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

.field private static sStrings:[Ljava/lang/String;


# instance fields
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/Visibility;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 60
    const-class v0, Lcom/android/calendar/event/data/InputAspectVisibility;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    .line 61
    sget-object v0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$array;->visibility_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private getIndexOf(Lcom/google/calendar/v2/client/service/api/events/Visibility;)I
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment$1;->$SwitchMap$com$google$calendar$v2$client$service$api$events$Visibility:[I

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/Visibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 120
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 123
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)Z
    .locals 1

    .prologue
    .line 100
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectVisibility;->canChangeVisibility()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    check-cast p2, Lcom/android/calendar/event/data/InputAspectVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)Z

    move-result v0

    return v0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/events/Visibility;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_0

    .line 108
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PRIVATE:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->getIndexOf(Lcom/google/calendar/v2/client/service/api/events/Visibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->getIndexOf(Lcom/google/calendar/v2/client/service/api/events/Visibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/events/Visibility;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 151
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 96
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Lcom/android/calendar/event/data/InputAspectVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 72
    sget v0, Lcom/android/calendar/R$id;->visibility_spinner:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    .line 73
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextListAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
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
    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    sget-object v1, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->VALUES:[Lcom/google/calendar/v2/client/service/api/events/Visibility;

    aget-object v1, v1, p3

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 139
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
    .line 144
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)V
    .locals 3

    .prologue
    .line 83
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectVisibility;->includeSecretVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mOptions:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->sStrings:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 87
    :cond_0
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectVisibility;->mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 88
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->mMutableVisibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/events/Visibility;)V

    .line 90
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Lcom/android/calendar/event/data/InputAspectVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/VisibilityEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectVisibility;)V

    return-void
.end method
