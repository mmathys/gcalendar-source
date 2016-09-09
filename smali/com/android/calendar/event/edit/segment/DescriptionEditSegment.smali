.class public Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "DescriptionEditSegment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnfocusedEditorHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeDescription()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 93
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/android/calendar/R$id;->edit_segment_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mUnfocusedEditorHeight:I

    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 71
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    if-eq p1, v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 114
    const/4 v0, -0x2

    :goto_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->requestLayout()V

    goto :goto_0

    .line 114
    :cond_1
    iget v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mUnfocusedEditorHeight:I

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/editor/EditSegment;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 83
    :goto_0
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableDescription()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 84
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 86
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mNoteData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->onChange(Ljava/lang/String;)V

    .line 87
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->mEditText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/DescriptionEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method
