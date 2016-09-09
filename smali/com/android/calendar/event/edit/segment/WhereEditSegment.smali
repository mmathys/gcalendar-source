.class public Lcom/android/calendar/event/edit/segment/WhereEditSegment;
.super Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;
.source "WhereEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventLocationAdapter:Lcom/android/calendar/event/EventLocationAdapter;

.field protected mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

.field protected mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnstructuredLocationListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 43
    new-instance v0, Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/WhereEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 52
    new-instance v0, Lcom/android/calendar/event/EventLocationAdapter;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/EventLocationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mEventLocationAdapter:Lcom/android/calendar/event/EventLocationAdapter;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/WhereEditSegment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onUnstructeredLocationChange(Ljava/lang/String;)V

    return-void
.end method

.method private logDidManuallyChangeLocation()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mEditInput:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->getLogMetrics()Lcom/android/calendar/event/data/EventEditLogMetrics;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logDidChangeLocation()V

    .line 145
    return-void
.end method

.method private onUnstructeredLocationChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->setInputText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->setSelection(I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->afterTextChanged(Landroid/text/Editable;)V

    .line 130
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->logDidManuallyChangeLocation()V

    .line 131
    return-void
.end method

.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->hasHiddenPrivateDetails()Z

    move-result v0

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
    .line 34
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public onDidExitFullScreen(Landroid/widget/FrameLayout;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 78
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 57
    sget v0, Lcom/android/calendar/R$id;->where_title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 58
    const-class v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mEventLocationAdapter:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->setMinimumQueryThreshold(I)V

    .line 60
    return-void
.end method

.method public onPrepareForSave()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onPrepareForSave()V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->getInputText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method

.method protected onRequestSuggestions(Landroid/text/Spanned;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mEventLocationAdapter:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventLocationAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onUnstructeredLocationChange(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 72
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method protected onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/android/calendar/event/EventLocationAdapter$Result;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mUnstructuredLocationData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventLocationAdapter$Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->showSuggestions(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->mLocationTitleView:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 124
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->logDidManuallyChangeLocation()V

    .line 125
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/EventLocationAdapter$Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onUnstructeredLocationChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuggestionAccepted(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/android/calendar/event/EventLocationAdapter$Result;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/WhereEditSegment;->onSuggestionAccepted(Lcom/android/calendar/event/EventLocationAdapter$Result;)V

    return-void
.end method
